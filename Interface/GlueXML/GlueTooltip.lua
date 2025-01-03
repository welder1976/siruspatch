GLUETOOLTIP_NUM_LINES = 4
GLUETOOLTIP_HPADDING = 20

function GlueTooltip_OnLoad(self)
	self.Clear = GlueTooltip_Clear
	self.SetFont = GlueTooltip_SetFont
	self.AddLine = GlueTooltip_AddLine
	self.SetText = function(self, text, tooltip, r, g, b, a, wrap) GlueTooltip_SetText(text, tooltip, r, g, b, a, wrap) end
	self.SetOwner = function(_self, self, tooltip, xOffset, yOffset, myPoint, ownerPoint) GlueTooltip_SetOwner(self, tooltip, xOffset, yOffset, myPoint, ownerPoint) end
	self:SetBackdropBorderColor(1.0, 1.0, 1.0)
	self:SetBackdropColor(0.09, 0.09, 0.19 )
	self.defaultColor = NORMAL_FONT_COLOR
end

-- TODO: It would be nice if the syntax for this matched GameTooltip
function GlueTooltip_SetOwner(self, tooltip, xOffset, yOffset, myPoint, ownerPoint)
	if ( not self ) then
		return
	end
	-- printc(self:GetName(), tooltip and tooltip:GetName() or "-")
	if ( not tooltip ) then
		tooltip = GlueTooltip
	end
	if ( not xOffset ) then
		xOffset = 0
	end
	if ( not yOffset ) then
		yOffset = 0
	end
	if ( not myPoint ) then
		myPoint = "BOTTOMLEFT"
	end
	if ( not ownerPoint ) then
		ownerPoint = "TOPRIGHT"
	end
	xOffset = xOffset or 0
	yOffset = yOffset or 0
	myPoint = myPoint or "BOTTOMLEFT"
	ownerPoint = ownerPoint or "TOPRIGHT"
	tooltip:SetPoint(myPoint, self, ownerPoint, xOffset, yOffset)
	tooltip:Show()
end

function GlueTooltip_SetText(text, _, r, g, b, a, wrap)
	GlueTooltip:Clear()
	GlueTooltip:AddLine(text, r, g, b, a, wrap)
end

function GlueTooltip_SetFont(self, font)
	for i = 1, GLUETOOLTIP_NUM_LINES do
		local textString = _G[self:GetName().."TextLeft"..i]
		textString:SetFontObject(font)
		textString = _G[self:GetName().."TextRight"..i]
		textString:SetFontObject(font)
	end
end

function GlueTooltip_Clear(self)
	if not self then
		self = GlueTooltip
	end

	for i = 1, GLUETOOLTIP_NUM_LINES do
		local textString = _G[self:GetName().."TextLeft"..i]
		textString:SetText("")
		textString:Hide()
		textString:SetWidth(0)
		textString = _G[self:GetName().."TextRight"..i]
		textString:SetText("")
		textString:Hide()
		textString:SetWidth(0)
	end
	self:SetWidth(1)
	self:SetHeight(1)
end

function GlueTooltip_AddLine(self, text, r, g, b, a, wrap, indentedWordWrap)
	r = r or self.defaultColor.r
	g = g or self.defaultColor.g
	b = b or self.defaultColor.b
	a = a or 1
	indentedWordWrap = indentedWordWrap or false

	-- find a free line
	local freeLine
	for i = 1, GLUETOOLTIP_NUM_LINES do
		local line = _G[self:GetName().."TextLeft"..i]
		if ( not line:IsShown() ) then
			freeLine = line
			break
		end
	end

	if (not freeLine) then return end

	freeLine:SetTextColor(r, g, b, a)
	freeLine:SetText(text)
	freeLine:Show()
	freeLine:SetWidth(0)
	freeLine:SetIndentedWordWrap(indentedWordWrap)

	local wrapWidth = 230
	if (wrap and freeLine:GetWidth() > wrapWidth) then
		-- Trim the right edge so that there isn't extra space after wrapping
		freeLine:SetWidth(wrapWidth)
		self:SetWidth(max(self:GetWidth(), wrapWidth+GLUETOOLTIP_HPADDING))
	else
		self:SetWidth(max(self:GetWidth(), freeLine:GetWidth()+GLUETOOLTIP_HPADDING))
	end

	-- Compute height and update width of text lines
	local height = 18
	for i = 1, GLUETOOLTIP_NUM_LINES do
		-- Update width of all lines
		local line = _G[self:GetName().."TextLeft"..i]
		local rightLine = _G[self:GetName().."TextRight"..i]
		if (not rightLine:IsShown()) then
			line:SetWidth(self:GetWidth()-GLUETOOLTIP_HPADDING)
		end

		-- Update the height of the frame
		if ( line:IsShown() ) then
			height = height + line:GetHeight() + 2
		end
	end
	self:SetHeight(height)
end

