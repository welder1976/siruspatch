--[[
	Nine-slice utility for creating themed background frames without rewriting a lot of boilerplate code.
	There are some utilities to help with anchoring, and others to create a border and theme it from scratch.
	AnchorUtil.ApplyLayout makes use of a layout table, and is probably what most setups will use.

	What the layout table should look like:
	- A table of tables, where each inner table describes a corner, edge, or center of the nine-slice frame.

	- Inner table keys should exactly match the nine-slice API for setting up the various pieces (TitleCase matters here), and will also be used as the name of the parentKey on the container frame.

	- e.g. Layout = { TopLeftCorner = { ... }, LeftEdge = { ... }, Center = { ... }

	- Global attributes:
		- mirrorLayout: The nine slice atlases only exist for topLeftCorner, topEdge, leftEdge.  Create the rest of the pieces from those assets.

	- Key-values in each inner table:
		- Required:
			atlas: the atlas for this piece
		- Optional:
			- layer: texture draw layer, defaults to "BORDER"
			- subLevel: texture sublevel, defaults to the same default as the CreateTexture API.
			- point: which point on the piece you want to anchor from, defaults to whatever is appropriate for the piece (e.g. TopLeftCorner = TOPLEFT)
			- relativePoint: which point on the container frame you want to anchor to, same default as point.
			- x, y: the offsets for the piece, defaults to SetPoint API default.
			- x1, y1: the second offsets (ONLY for the edge and center pieces), defaults to SetPoint API default.

	- Legacy frames may not be authored such that the pieces of the nine-slice are named TopLeftCorner, BottomEdge, etc...for this reason,
	the container is allowed to provide a lookup override function for those pieces, in case they already existed.
	The API signature is: <container>.GetNineSlicePiece(pieceName).
	It's not required, if it's missing the fallbacks are:
	1. Look up the piece by key using the default piece name (e.g. container.TopLeft)
	2. Create a new texture and add it to the container, accessible by key (e.g. container.TopLeft = container:CreateTexture()).

	- The idea is that borders should be easy to set up, by describing the art theme in data, there should be minimal effort to setup a frame's background.
 	Offsets exist to provide some proper alignment for legacy frames, most new frames shouldn't need custom offsets.
	The NineSlice itself isn't intended to exist beyond frame setup, just release the reference to it after use.
]]

local function GetNineSlicePiece(container, pieceName)
	if container.GetNineSlicePiece then
		local piece = container:GetNineSlicePiece(pieceName)
		if piece then
			return piece, true
		end
	end

	return container[pieceName] or container:CreateTexture(), false
end

local function PropagateLayoutSettingsToPieceLayout(userLayout, pieceLayout)
	-- Only apply mirrorLayout if it wasn't explicitly defined
	if pieceLayout.mirrorLayout == nil then
		pieceLayout.mirrorLayout = userLayout.mirrorLayout
	end

	-- ... and other settings that apply to the whole nine-slice
end

local function SetupTextureCoordinates(piece, setupInfo, pieceLayout)
	local left, right, top, bottom = 0, 1, 0, 1

	if pieceLayout.mirrorLayout then
		if setupInfo.mirrorVertical then
			top, bottom = bottom, top
		end

		if setupInfo.mirrorHorizontal then
			left, right = right, left
		end
	end

--	piece:SetHorizTile(setupInfo.tileHorizontal)
--	piece:SetVertTile(setupInfo.tileVertical)
	piece:SetSubTexCoord(left, right, top, bottom)
end

local function SetupPieceVisuals(piece, setupInfo, pieceLayout, textureKit)
	-- textureKit is optional, that's fine but if it's nil the caller should ensure that there are no format specifiers in .atlas
	local atlasName = GetFinalNameFromTextureKit(pieceLayout.atlas, textureKit)
	local info = C_Texture.GetAtlasInfo(atlasName)
	piece:SetHorizTile(info and info.tilesHorizontally or false)
	piece:SetVertTile(info and info.tilesVertically or false)
	piece:SetAtlas(atlasName, true)

	--- Change texture coordinates after applying atlas.
	SetupTextureCoordinates(piece, setupInfo, pieceLayout)
end

local function SetupCorner(container, piece, setupInfo, pieceLayout)
	piece:ClearAllPoints()
	piece:SetPoint(pieceLayout.point or setupInfo.point, container, pieceLayout.relativePoint or setupInfo.point, pieceLayout.x, pieceLayout.y)
end

local function SetupEdge(container, piece, setupInfo, pieceLayout)
	piece:ClearAllPoints()
	piece:SetPoint(setupInfo.point, GetNineSlicePiece(container, setupInfo.relativePieces[1]), setupInfo.relativePoint, pieceLayout.x, pieceLayout.y)
	piece:SetPoint(setupInfo.relativePoint, GetNineSlicePiece(container, setupInfo.relativePieces[2]), setupInfo.point, pieceLayout.x1, pieceLayout.y1)
end

local function SetupCenter(container, piece, setupInfo, pieceLayout)
	piece:ClearAllPoints()
	piece:SetPoint("TOPLEFT", GetNineSlicePiece(container, "TopLeftCorner"), "BOTTOMRIGHT", pieceLayout.x, pieceLayout.y)
	piece:SetPoint("BOTTOMRIGHT", GetNineSlicePiece(container, "BottomRightCorner"), "TOPLEFT", pieceLayout.x1, pieceLayout.y1)
end

-- Defines the order in which each piece should be set up, and how to do the setup.
--
-- Mirror types: As a texture memory and effort savings, many borders are assembled from a single topLeft corner, and top/left edges.
-- That's all that's required if everything is symmetrical (left edge is also superfluous, but allows for more detail variation)
-- The mirror flags specify which texture coords to flip relative to the piece that would use default texture coordinates: left = 0, top = 0, right = 1, bottom = 1
local nineSliceSetup =
{
	{ pieceName = "TopLeftCorner", point = "TOPLEFT", fn = SetupCorner, },
	{ pieceName = "TopRightCorner", point = "TOPRIGHT", mirrorHorizontal = true, fn = SetupCorner, },
	{ pieceName = "BottomLeftCorner", point = "BOTTOMLEFT", mirrorVertical = true, fn = SetupCorner, },
	{ pieceName = "BottomRightCorner", point = "BOTTOMRIGHT", mirrorHorizontal = true, mirrorVertical = true, fn = SetupCorner, },
	{ pieceName = "TopEdge", point = "TOPLEFT", relativePoint = "TOPRIGHT", relativePieces = { "TopLeftCorner", "TopRightCorner" }, fn = SetupEdge, tileHorizontal = true },
	{ pieceName = "BottomEdge", point = "BOTTOMLEFT", relativePoint = "BOTTOMRIGHT", relativePieces = { "BottomLeftCorner", "BottomRightCorner" }, mirrorVertical = true, tileHorizontal = true, fn = SetupEdge, },
	{ pieceName = "LeftEdge", point = "TOPLEFT", relativePoint = "BOTTOMLEFT", relativePieces = { "TopLeftCorner", "BottomLeftCorner" }, tileVertical = true, fn = SetupEdge, },
	{ pieceName = "RightEdge", point = "TOPRIGHT", relativePoint = "BOTTOMRIGHT", relativePieces = { "TopRightCorner", "BottomRightCorner" }, mirrorHorizontal = true, tileVertical = true, fn = SetupEdge, },
	{ pieceName = "Center", fn = SetupCenter, },
}

local layouts =
{
	SimplePanelTemplate =
	{
		mirrorLayout = true,
		TopLeftCorner =	{ atlas = "UI-Frame-SimpleMetal-CornerTopLeft", x = -5, y = 0, },
		TopRightCorner = { atlas = "UI-Frame-SimpleMetal-CornerTopLeft", x = 2, y = 0, },
		BottomLeftCorner = { atlas = "UI-Frame-SimpleMetal-CornerTopLeft", x = -5, y = -3, },
		BottomRightCorner =	{ atlas = "UI-Frame-SimpleMetal-CornerTopLeft", x = 2, y = -3, },
		TopEdge = { atlas = "_UI-Frame-SimpleMetal-EdgeTop", },
		BottomEdge = { atlas = "_UI-Frame-SimpleMetal-EdgeTop", },
		LeftEdge = { atlas = "!UI-Frame-SimpleMetal-EdgeLeft", },
		RightEdge = { atlas = "!UI-Frame-SimpleMetal-EdgeLeft", },
	},

	PortraitFrameTemplate =
	{
		TopLeftCorner =	{ layer = "OVERLAY", atlas = "UI-Frame-PortraitMetal-CornerTopLeft", x = -13, y = 16, },
		TopRightCorner =	{ layer = "OVERLAY", atlas = "UI-Frame-Metal-CornerTopRight", x = 4, y = 16, },
		BottomLeftCorner =	{ layer = "OVERLAY", atlas = "UI-Frame-Metal-CornerBottomLeft", x = -13, y = -3, },
		BottomRightCorner =	{ layer = "OVERLAY", atlas = "UI-Frame-Metal-CornerBottomRight", x = 4, y = -3, },
		TopEdge = { layer="OVERLAY", atlas = "_UI-Frame-Metal-EdgeTop", x = 0, y = 0, x1 = 0, y1 = 0, },
		BottomEdge = { layer = "OVERLAY", atlas = "_UI-Frame-Metal-EdgeBottom", x = 0, y = 0, x1 = 0, y1 = 0, },
		LeftEdge = { layer = "OVERLAY", atlas = "!UI-Frame-Metal-EdgeLeft", x = 0, y = 0, x1 = 0, y1 = 0 },
		RightEdge = { layer = "OVERLAY", atlas = "!UI-Frame-Metal-EdgeRight", x = 0, y = 0, x1 = 0, y1 = 0, },
	},

	PortraitFrameTemplateMinimizable =
	{
		TopLeftCorner =	{ layer = "OVERLAY", atlas = "UI-Frame-PortraitMetal-CornerTopLeft", x = -13, y = 16, },
		TopRightCorner =	{ layer = "OVERLAY", atlas = "UI-Frame-Metal-CornerTopRightDouble", x = 4, y = 16, },
		BottomLeftCorner =	{ layer = "OVERLAY", atlas = "UI-Frame-Metal-CornerBottomLeft", x = -13, y = -3, },
		BottomRightCorner =	{ layer = "OVERLAY", atlas = "UI-Frame-Metal-CornerBottomRight", x = 4, y = -3, },
		TopEdge = { layer="OVERLAY", atlas = "_UI-Frame-Metal-EdgeTop", x = 0, y = 0, x1 = 0, y1 = 0, },
		BottomEdge = { layer = "OVERLAY", atlas = "_UI-Frame-Metal-EdgeBottom", x = 0, y = 0, x1 = 0, y1 = 0, },
		LeftEdge = { layer = "OVERLAY", atlas = "!UI-Frame-Metal-EdgeLeft", x = 0, y = 0, x1 = 0, y1 = 0 },
		RightEdge = { layer = "OVERLAY", atlas = "!UI-Frame-Metal-EdgeRight", x = 0, y = 0, x1 = 0, y1 = 0, },
	},

	ButtonFrameTemplateNoPortrait =
	{
		TopLeftCorner =	{ layer = "OVERLAY", atlas = "UI-Frame-Metal-CornerTopLeft", x = -12, y = 16, },
		TopRightCorner =	{ layer = "OVERLAY", atlas = "UI-Frame-Metal-CornerTopRight", x = 4, y = 16, },
		BottomLeftCorner =	{ layer = "OVERLAY", atlas = "UI-Frame-Metal-CornerBottomLeft", x = -12, y = -3, },
		BottomRightCorner =	{ layer = "OVERLAY", atlas = "UI-Frame-Metal-CornerBottomRight", x = 4, y = -3, },
		TopEdge = { layer = "OVERLAY", atlas = "_UI-Frame-Metal-EdgeTop", },
		BottomEdge = { layer = "OVERLAY", atlas = "_UI-Frame-Metal-EdgeBottom", },
		LeftEdge = { layer = "OVERLAY", atlas = "!UI-Frame-Metal-EdgeLeft", },
		RightEdge = { layer = "OVERLAY", atlas = "!UI-Frame-Metal-EdgeRight", },
	},

	ButtonFrameTemplateNoPortraitMinimizable =
	{
		TopLeftCorner =	{ layer = "OVERLAY", atlas = "UI-Frame-Metal-CornerTopLeft", x = -12, y = 16, },
		TopRightCorner =	{ layer = "OVERLAY", atlas = "UI-Frame-Metal-CornerTopRightDouble", x = 4, y = 16, },
		BottomLeftCorner =	{ layer = "OVERLAY", atlas = "UI-Frame-Metal-CornerBottomLeft", x = -12, y = -3, },
		BottomRightCorner =	{ layer = "OVERLAY", atlas = "UI-Frame-Metal-CornerBottomRight", x = 4, y = -3, },
		TopEdge = { layer = "OVERLAY", atlas = "_UI-Frame-Metal-EdgeTop", },
		BottomEdge = { layer = "OVERLAY", atlas = "_UI-Frame-Metal-EdgeBottom", },
		LeftEdge = { layer = "OVERLAY", atlas = "!UI-Frame-Metal-EdgeLeft", },
		RightEdge = { layer = "OVERLAY", atlas = "!UI-Frame-Metal-EdgeRight", },
	},

	InsetFrameTemplate =
	{
		TopLeftCorner = { layer = "BORDER", subLevel = -5, atlas = "UI-Frame-InnerTopLeft", },
		TopRightCorner = { layer = "BORDER", subLevel = -5, atlas = "UI-Frame-InnerTopRight", },
		BottomLeftCorner = { layer = "BORDER", subLevel = -5, atlas = "UI-Frame-InnerBotLeftCorner", x = 0, y = -1, },
		BottomRightCorner = { layer = "BORDER", subLevel = -5, atlas = "UI-Frame-InnerBotRight", x = 0, y = -1, },
		TopEdge = { layer = "BORDER", subLevel = -5, atlas = "_UI-Frame-InnerTopTile", },
		BottomEdge = { layer = "BORDER", subLevel = -5, atlas = "_UI-Frame-InnerBotTile", },
		LeftEdge = { layer = "BORDER", subLevel = -5, atlas = "!UI-Frame-InnerLeftTile", },
		RightEdge = { layer = "BORDER", subLevel = -5, atlas = "!UI-Frame-InnerRightTile", },
	},

	BFAMissionHorde =
	{
		mirrorLayout = true,
		TopLeftCorner =	{ atlas = "HordeFrame-Corner-TopLeft", x = -6, y = 6, },
		TopRightCorner =	{ atlas = "HordeFrame-Corner-TopLeft", x = 6, y = 6, },
		BottomLeftCorner =	{ atlas = "HordeFrame-Corner-TopLeft", x = -6, y = -6, },
		BottomRightCorner =	{ atlas = "HordeFrame-Corner-TopLeft", x = 6, y = -6, },
		TopEdge = { atlas = "_HordeFrameTile-Top", },
		BottomEdge = { atlas = "_HordeFrameTile-Top", },
		LeftEdge = { atlas = "!HordeFrameTile-Left", },
		RightEdge = { atlas = "!HordeFrameTile-Left", },
	},

	BFAMissionAlliance =
	{
		mirrorLayout = true,
		TopLeftCorner =	{ atlas = "AllianceFrameCorner-TopLeft", x = -6, y = 6, },
		TopRightCorner =	{ atlas = "AllianceFrameCorner-TopLeft", x = 6, y = 6, },
		BottomLeftCorner =	{ atlas = "AllianceFrameCorner-TopLeft", x = -6, y = -6, },
		BottomRightCorner =	{ atlas = "AllianceFrameCorner-TopLeft", x = 6, y = -6, },
		TopEdge = { atlas = "_AllianceFrameTile-Top", },
		BottomEdge = { atlas = "_AllianceFrameTile-Top", },
		LeftEdge = { atlas = "!AllianceFrameTile-Left", },
		RightEdge = { atlas = "!AllianceFrameTile-Left", },
	},

	BFAMissionNeutral =
	{
		TopLeftCorner =	{ atlas = "UI-Frame-GenericMetal-Corner", x = -6, y = 6, mirrorLayout = true, },
		TopRightCorner =	{ atlas = "UI-Frame-GenericMetal-Corner", x = 6, y = 6, mirrorLayout = true, },
		BottomLeftCorner =	{ atlas = "UI-Frame-GenericMetal-Corner", x = -6, y = -6, mirrorLayout = true, },
		BottomRightCorner =	{ atlas = "UI-Frame-GenericMetal-Corner", x = 6, y = -6, mirrorLayout = true, },
		TopEdge = { atlas = "_UI-Frame-GenericMetal-TileTop", },
		BottomEdge = { atlas = "_UI-Frame-GenericMetal-TileBottom", },
		LeftEdge = { atlas = "!UI-Frame-GenericMetal-TileLeft", },
		RightEdge = { atlas = "!UI-Frame-GenericMetal-TileRight", },
	},

	Dialog =
	{
		TopLeftCorner =	{ atlas = "UI-Frame-DiamondMetal-CornerTopLeft", },
		TopRightCorner =	{ atlas = "UI-Frame-DiamondMetal-CornerTopRight", },
		BottomLeftCorner =	{ atlas = "UI-Frame-DiamondMetal-CornerBottomLeft", },
		BottomRightCorner =	{ atlas = "UI-Frame-DiamondMetal-CornerBottomRight", },
		TopEdge = { atlas = "_UI-Frame-DiamondMetal-EdgeTop", },
		BottomEdge = { atlas = "_UI-Frame-DiamondMetal-EdgeBottom", },
		LeftEdge = { atlas = "!UI-Frame-DiamondMetal-EdgeLeft", },
		RightEdge = { atlas = "!UI-Frame-DiamondMetal-EdgeRight", },
	},

	Roulette =
	{
		TopLeftCorner =	    { atlas = "Roulette-left-top-corner", x = -6, y = 6, },
		TopRightCorner =	{ atlas = "Roulette-right-top-corner", x = 6, y = 6, },
		BottomLeftCorner =	{ atlas = "Roulette-left-bottom-corner", x = 3, y = -6, },
		BottomRightCorner =	{ atlas = "Roulette-right-bottom-corner", x = 5.6, y = -5.8, },
	},
}

--------------------------------------------------
-- NINE SLICE UTILS
NineSliceUtil = {}

function NineSliceUtil.ApplyLayout(container, userLayout, textureKit)
	for pieceIndex, setup in ipairs(nineSliceSetup) do
		local pieceName = setup.pieceName
		local pieceLayout = userLayout[pieceName]
		if pieceLayout then
			PropagateLayoutSettingsToPieceLayout(userLayout, pieceLayout)

			local piece, pieceAlreadyExisted = GetNineSlicePiece(container, pieceName)
			if not pieceAlreadyExisted then
				container[pieceName] = piece
				piece:SetDrawLayer(pieceLayout.layer or "BORDER", pieceLayout.subLevel)
			end

			-- Piece setup can change arbitrary properties, do it before changing the texture.
			setup.fn(container, piece, setup, pieceLayout)
			SetupPieceVisuals(piece, setup, pieceLayout, textureKit)
		end
	end
end

function NineSliceUtil.ApplyLayoutByName(container, userLayoutName, textureKit)
	return NineSliceUtil.ApplyLayout(container, NineSliceUtil.GetLayout(userLayoutName), textureKit)
end

function NineSliceUtil.GetLayout(layoutName)
	return layouts[layoutName]
end

function NineSliceUtil.AddLayout(layoutName, layout)
	layouts[layoutName] = layout
end

--------------------------------------------------
-- NINE SLICE PANEL MIXIN
 NineSlicePanelMixin = {}

function NineSlicePanelMixin:GetFrameLayoutType()
	return self:GetAttribute("layoutType") or self:GetParent():GetAttribute("layoutType")
end

function NineSlicePanelMixin:OnLoad()
	local layout = NineSliceUtil.GetLayout(self:GetFrameLayoutType())
	if layout then
		NineSliceUtil.ApplyLayout(self, layout)
	end
end