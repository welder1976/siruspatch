--	Filename:	SirusRegisterForSave.lua
--	Project:	Sirus Game Interface
--	Author:		Nyll
--	E-mail:		nyll@sirus.su
--	Web:		https://sirus.su/

local RegisterForSaveData = {
	"SIRUS_SPELLBOOK_SPELL",
	"SIRUS_SPELLBOOK_SKILLLINE",
	"SIRUS_TUTORIAL_KEY",
	"SIRUS_GUILD_RENAME",
	"SIRUS_ARENA_DISTRIBUTION",
	"SIRUS_ARENA_POINTS_PREDICT",
	-- "SIRUS_DEATH_RECAP",
	"SIRUS_MOUNTJOURNAL_FAVORITE_PET",
	"SIRUS_MOUNTJOURNAL_PRODUCT_DATA",
	"SIRUS_COLLECTION_FAVORITE_PET",
	"SIRUS_RATEDBATTLEGROUND_RANK",
	"SIRUS_RATEDBATTLEGROUND_READY",
	"SIRUS_RATEDBATTLEGROUND_SCORE_DATA",
	"SIRUS_AUCTION_HOUSE_FAVORITE_ITEMS",
	"SIRUS_COLLECTION_COLLECTED_APPEARANCES",
	"SIRUS_COLLECTION_COLLECTED_ITEM_APPEARANCES",
	"SIRUS_COLLECTION_FAVORITE_APPEARANCES",
	"SIRUS_COLLECTION_RECEIVED_APPEARANCES",
	"SIRUS_COLLECTION_PLAYER_OUTFITS",
}

function SirusRegisterForSaveFrame_OnLoad( ... )
	for _, data in pairs(RegisterForSaveData) do
		RegisterForSave(data)
	end
end