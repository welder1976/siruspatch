
UNITPOPUP_TITLE_HEIGHT = 26;
UNITPOPUP_BUTTON_HEIGHT = 15;
UNITPOPUP_BORDER_HEIGHT = 8;
UNITPOPUP_BORDER_WIDTH = 19;

UNITPOPUP_NUMBUTTONS = 9;
UNITPOPUP_TIMEOUT = 5;

UNITPOPUP_SPACER_SPACING = 6;

local function makeUnitPopupSubsectionTitle(titleText)
	return { text = titleText, isTitle = true, isUninteractable = true, isSubsection = true, isSubsectionTitle = true, isSubsectionSeparator = true, };
end

local function makeUnitPopupSubsectionSeparator()
	return { text = "", isTitle = true, isUninteractable = true, isSubsection = true, isSubsectionTitle = false, isSubsectionSeparator = true, };
end

UnitPopupButtons = { };
UnitPopupButtons["CANCEL"] = { text = CANCEL, dist = 0, space = 1 };
UnitPopupButtons["TRADE"] = { text = TRADE, dist = 2 };
UnitPopupButtons["INSPECT"] = { text = INSPECT, dist = 1 };
UnitPopupButtons["ACHIEVEMENTS"] = { text = COMPARE_ACHIEVEMENTS, dist = 1 };
UnitPopupButtons["TARGET"] = { text = TARGET, dist = 0 };
UnitPopupButtons["IGNORE"]	= { text = IGNORE, dist = 0 };
UnitPopupButtons["REPORT_SPAM"]	= { text = REPORT_SPAM, dist = 0 };
UnitPopupButtons["POP_OUT_CHAT"] = { text = MOVE_TO_WHISPER_WINDOW, dist = 0 };
UnitPopupButtons["DUEL"] = { text = DUEL, dist = 3, space = 1 };
UnitPopupButtons["WHISPER"]	= { text = WHISPER, dist = 0 };
UnitPopupButtons["INVITE"]	= { text = PARTY_INVITE, dist = 0 };
UnitPopupButtons["UNINVITE"] = { text = PARTY_UNINVITE, dist = 0 };
UnitPopupButtons["REMOVE_FRIEND"]	= { text = REMOVE_FRIEND, dist = 0 };
UnitPopupButtons["SET_NOTE"]	= { text = SET_NOTE, dist = 0 };
UnitPopupButtons["BN_REMOVE_FRIEND"]	= { text = REMOVE_FRIEND, dist = 0 };
UnitPopupButtons["BN_SET_NOTE"]	= { text = SET_NOTE, dist = 0 };
UnitPopupButtons["BN_VIEW_FRIENDS"]	= { text = VIEW_FRIENDS_OF_FRIENDS, dist = 0 };
UnitPopupButtons["BN_INVITE"] = { text = PARTY_INVITE, dist = 0 };
UnitPopupButtons["BN_TARGET"] = { text = TARGET, dist = 0 };
UnitPopupButtons["BLOCK_COMMUNICATION"] = { text = BLOCK_COMMUNICATION, dist = 0 };
UnitPopupButtons["CREATE_CONVERSATION_WITH"] = { text = CREATE_CONVERSATION_WITH, dist = 0 };
UnitPopupButtons["VOTE_TO_KICK"] = { text = VOTE_TO_KICK, dist = 0 };
UnitPopupButtons["PROMOTE"] = { text = PARTY_PROMOTE, dist = 0 };
UnitPopupButtons["PROMOTE_GUIDE"] = { text = PARTY_PROMOTE_GUIDE, dist = 0 };
UnitPopupButtons["GUILD_PROMOTE"] = { text = GUILD_PROMOTE, dist = 0 };
UnitPopupButtons["GUILD_LEAVE"] = { text = GUILD_LEAVE, dist = 0 };
UnitPopupButtons["TEAM_PROMOTE"] = { text = TEAM_PROMOTE, dist = 0 };
UnitPopupButtons["TEAM_KICK"] = { text = TEAM_KICK, dist = 0 };
UnitPopupButtons["TEAM_LEAVE"] = { text = TEAM_LEAVE, dist = 0 };
UnitPopupButtons["LEAVE"] = { text = PARTY_LEAVE, dist = 0 };
UnitPopupButtons["FOLLOW"] = { text = FOLLOW, dist = 4 };
UnitPopupButtons["PET_DISMISS"] = { text = PET_DISMISS, dist = 0 };
UnitPopupButtons["PET_ABANDON"] = { text = PET_ABANDON, dist = 0 };
UnitPopupButtons["PET_PAPERDOLL"] = { text = PET_PAPERDOLL, dist = 0 };
UnitPopupButtons["PET_RENAME"] = { text = PET_RENAME, dist = 0 };
UnitPopupButtons["LOOT_METHOD"] = { text = LOOT_METHOD, dist = 0, nested = 1};
UnitPopupButtons["FREE_FOR_ALL"] = { text = LOOT_FREE_FOR_ALL, dist = 0, checkable = 1 };
UnitPopupButtons["ROUND_ROBIN"] = { text = LOOT_ROUND_ROBIN, dist = 0, checkable = 1 };
UnitPopupButtons["MASTER_LOOTER"] = { text = LOOT_MASTER_LOOTER, dist = 0, checkable = 1 };
UnitPopupButtons["GROUP_LOOT"] = { text = LOOT_GROUP_LOOT, dist = 0, checkable = 1 };
UnitPopupButtons["NEED_BEFORE_GREED"] = { text = LOOT_NEED_BEFORE_GREED, dist = 0, checkable = 1 };
UnitPopupButtons["RESET_INSTANCES"] = { text = RESET_INSTANCES, dist = 0 };

UnitPopupButtons["DUNGEON_DIFFICULTY"] = { text = DUNGEON_DIFFICULTY, dist = 0,  nested = 1};
UnitPopupButtons["DUNGEON_DIFFICULTY1"] = { text = DUNGEON_DIFFICULTY1, dist = 0, checkable = 1 };
UnitPopupButtons["DUNGEON_DIFFICULTY2"] = { text = DUNGEON_DIFFICULTY2, dist = 0, checkable = 1 };
--UnitPopupButtons["DUNGEON_DIFFICULTY3"] = { text = DUNGEON_DIFFICULTY3, dist = 0 };

UnitPopupButtons["RAID_DIFFICULTY"] = { text = RAID_DIFFICULTY, dist = 0,  nested = 1};
UnitPopupButtons["RAID_DIFFICULTY1"] = { text = RAID_DIFFICULTY1, dist = 0, checkable = 1 };
UnitPopupButtons["RAID_DIFFICULTY2"] = { text = RAID_DIFFICULTY2, dist = 0, checkable = 1 };
UnitPopupButtons["RAID_DIFFICULTY3"] = { text = RAID_DIFFICULTY3, dist = 0, checkable = 1 };
UnitPopupButtons["RAID_DIFFICULTY4"] = { text = RAID_DIFFICULTY4, dist = 0, checkable = 1 };

UnitPopupButtons["PVP_FLAG"] = { text = PVP_FLAG, dist = 0, nested = 1};
UnitPopupButtons["PVP_ENABLE"] = { text = ENABLE, dist = 0, checkable = 1 };
UnitPopupButtons["PVP_DISABLE"] = { text = DISABLE, dist = 0, checkable = 1 };

UnitPopupButtons["LOOT_THRESHOLD"] = { text = LOOT_THRESHOLD, dist = 0, nested = 1 };
UnitPopupButtons["LOOT_PROMOTE"] = { text = LOOT_PROMOTE, dist = 0 };
UnitPopupButtons["ITEM_QUALITY2_DESC"] = { text = ITEM_QUALITY2_DESC, dist = 0, color = ITEM_QUALITY_COLORS[2], checkable = 1 };
UnitPopupButtons["ITEM_QUALITY3_DESC"] = { text = ITEM_QUALITY3_DESC, dist = 0, color = ITEM_QUALITY_COLORS[3], checkable = 1 };
UnitPopupButtons["ITEM_QUALITY4_DESC"] = { text = ITEM_QUALITY4_DESC, dist = 0, color = ITEM_QUALITY_COLORS[4], checkable = 1 };

UnitPopupButtons["OPT_OUT_LOOT_TITLE"] = { text = OPT_OUT_LOOT_TITLE, dist = 0, nested = 1, tooltipText = NEWBIE_TOOLTIP_UNIT_OPT_OUT_LOOT };
UnitPopupButtons["OPT_OUT_LOOT_ENABLE"] = { text = YES, dist = 0, checkable = 1 };
UnitPopupButtons["OPT_OUT_LOOT_DISABLE"] = { text = NO, dist = 0, checkable = 1 };

UnitPopupButtons["BN_REPORT"] = { text = BNET_REPORT, dist = 0, nested = 1 };
UnitPopupButtons["BN_REPORT_SPAM"] = { text = BNET_REPORT_SPAM, dist = 0 };
UnitPopupButtons["BN_REPORT_ABUSE"] = { text = BNET_REPORT_ABUSE, dist = 0 };
UnitPopupButtons["BN_REPORT_THREAT"] = { text = BNET_REPORT_THREAT, dist = 0 };
UnitPopupButtons["BN_REPORT_NAME"] = { text = BNET_REPORT_NAME, dist = 0 };

UnitPopupButtons["RAID_LEADER"] = { text = SET_RAID_LEADER, dist = 0 };
UnitPopupButtons["RAID_PROMOTE"] = { text = SET_RAID_ASSISTANT, dist = 0 };
UnitPopupButtons["RAID_MAINTANK"] = { text = SET_MAIN_TANK, dist = 0 };
UnitPopupButtons["RAID_MAINASSIST"] = { text = SET_MAIN_ASSIST, dist = 0 };
UnitPopupButtons["RAID_DEMOTE"] = { text = DEMOTE, dist = 0 };
UnitPopupButtons["RAID_REMOVE"] = { text = REMOVE, dist = 0 };

UnitPopupButtons["PVP_REPORT_AFK"] = { text = PVP_REPORT_AFK, dist = 0 };

UnitPopupButtons["RAF_SUMMON"] = { text = RAF_SUMMON, dist = 0 };
UnitPopupButtons["RAF_GRANT_LEVEL"] = { text = RAF_GRANT_LEVEL, dist = 0 };

UnitPopupButtons["VEHICLE_LEAVE"] = { text = VEHICLE_LEAVE, dist = 0 };

UnitPopupButtons["SET_FOCUS"] = { text = SET_FOCUS, dist = 0 };
UnitPopupButtons["CLEAR_FOCUS"] = { text = CLEAR_FOCUS, dist = 0 };
UnitPopupButtons["LOCK_FOCUS_FRAME"] = { text = LOCK_FOCUS_FRAME, dist = 0 };
UnitPopupButtons["UNLOCK_FOCUS_FRAME"] = { text = UNLOCK_FOCUS_FRAME, dist = 0 };

-- Voice Chat Related
UnitPopupButtons["MUTE"] = { text = MUTE, dist = 0 };
UnitPopupButtons["UNMUTE"] = { text = UNMUTE, dist = 0 };

UnitPopupButtons["RAID_TARGET_ICON"] = { text = RAID_TARGET_ICON, dist = 0, nested = 1 };
UnitPopupButtons["RAID_TARGET_1"] = { text = RAID_TARGET_1, dist = 0, checkable = 1, color = {r = 1.0, g = 0.92, b = 0}, icon = "Interface\\TargetingFrame\\UI-RaidTargetingIcons", tCoordLeft = 0, tCoordRight = 0.25, tCoordTop = 0, tCoordBottom = 0.25 };
UnitPopupButtons["RAID_TARGET_2"] = { text = RAID_TARGET_2, dist = 0, checkable = 1, color = {r = 0.98, g = 0.57, b = 0}, icon = "Interface\\TargetingFrame\\UI-RaidTargetingIcons", tCoordLeft = 0.25, tCoordRight = 0.5, tCoordTop = 0, tCoordBottom = 0.25 };
UnitPopupButtons["RAID_TARGET_3"] = { text = RAID_TARGET_3, dist = 0, checkable = 1, color = {r = 0.83, g = 0.22, b = 0.9}, icon = "Interface\\TargetingFrame\\UI-RaidTargetingIcons", tCoordLeft = 0.5, tCoordRight = 0.75, tCoordTop = 0, tCoordBottom = 0.25 };
UnitPopupButtons["RAID_TARGET_4"] = { text = RAID_TARGET_4, dist = 0, checkable = 1, color = {r = 0.04, g = 0.95, b = 0}, icon = "Interface\\TargetingFrame\\UI-RaidTargetingIcons", tCoordLeft = 0.75, tCoordRight = 1, tCoordTop = 0, tCoordBottom = 0.25 };
UnitPopupButtons["RAID_TARGET_5"] = { text = RAID_TARGET_5, dist = 0, checkable = 1, color = {r = 0.7, g = 0.82, b = 0.875}, icon = "Interface\\TargetingFrame\\UI-RaidTargetingIcons", tCoordLeft = 0, tCoordRight = 0.25, tCoordTop = 0.25, tCoordBottom = 0.5 };
UnitPopupButtons["RAID_TARGET_6"] = { text = RAID_TARGET_6, dist = 0, checkable = 1, color = {r = 0, g = 0.71, b = 1}, icon = "Interface\\TargetingFrame\\UI-RaidTargetingIcons", tCoordLeft = 0.25, tCoordRight = 0.5, tCoordTop = 0.25, tCoordBottom = 0.5 };
UnitPopupButtons["RAID_TARGET_7"] = { text = RAID_TARGET_7, dist = 0, checkable = 1, color = {r = 1.0, g = 0.24, b = 0.168}, icon = "Interface\\TargetingFrame\\UI-RaidTargetingIcons", tCoordLeft = 0.5, tCoordRight = 0.75, tCoordTop = 0.25, tCoordBottom = 0.5 };
UnitPopupButtons["RAID_TARGET_8"] = { text = RAID_TARGET_8, dist = 0, checkable = 1, color = {r = 0.98, g = 0.98, b = 0.98}, icon = "Interface\\TargetingFrame\\UI-RaidTargetingIcons", tCoordLeft = 0.75, tCoordRight = 1, tCoordTop = 0.25, tCoordBottom = 0.5 };
UnitPopupButtons["RAID_TARGET_NONE"] = { text = RAID_TARGET_NONE, dist = 0, checkable = 1 };

-- Chat Channel Player Commands
UnitPopupButtons["CHAT_PROMOTE"] = { text = MAKE_MODERATOR, dist = 0 };
UnitPopupButtons["CHAT_DEMOTE"] = { text = REMOVE_MODERATOR, dist = 0 };
UnitPopupButtons["CHAT_OWNER"] = { text = CHAT_OWNER, dist = 0 };
UnitPopupButtons["CHAT_SILENCE"] = { text = CHAT_SILENCE, dist = 0 };
UnitPopupButtons["CHAT_UNSILENCE"] = { text = CHAT_UNSILENCE, dist = 0 };
UnitPopupButtons["PARTY_SILENCE"] = { text = PARTY_SILENCE, dist = 0 };
UnitPopupButtons["PARTY_UNSILENCE"] = { text = PARTY_UNSILENCE, dist = 0 };
UnitPopupButtons["RAID_SILENCE"] = { text = RAID_SILENCE, dist = 0 };
UnitPopupButtons["RAID_UNSILENCE"] = { text = RAID_UNSILENCE, dist = 0 };
UnitPopupButtons["BATTLEGROUND_SILENCE"] = { text = BATTLEGROUND_SILENCE, dist = 0 };
UnitPopupButtons["BATTLEGROUND_UNSILENCE"] = { text = BATTLEGROUND_UNSILENCE, dist = 0 };
UnitPopupButtons["CHAT_KICK"] = { text = CHAT_KICK, dist = 0 };
UnitPopupButtons["CHAT_BAN"] = { text = CHAT_BAN, dist = 0 };

UnitPopupButtons["GM_SEPARATOR"] = makeUnitPopupSubsectionSeparator()
UnitPopupButtons["GM_TITLE"] = UnitPopupButtons["GM_SEPARATOR"]  --makeUnitPopupSubsectionTitle("ГМ Меню")

UnitPopupButtons["GM_INFO"] 				= { text = "Информация об игроке", dist = 0, nested = 1 }
UnitPopupButtons["GM_INFO_PLAYER"] 			= { text = "Персонаж", dist = 0 }
UnitPopupButtons["GM_INFO_ACCOUNT"] 		= { text = "Aккаунт", dist = 0 }
UnitPopupButtons["GM_INFO_IP"] 				= { text = "IP адрес", dist = 0 }
UnitPopupButtons["GM_INFO_CONFIG"] 			= { text = "Конфиг", dist = 0 }

UnitPopupButtons["GM_INTERACT"] 			= { text = "Действие с игроком", dist = 0, nested = 1 }
UnitPopupButtons["GM_INTERACT_MUTE"] 		= { text = "Блокировка чата", dist = 0 }
UnitPopupButtons["GM_INTERACT_PLAYER_BAN"] 	= { text = "Блокировка персонажа", dist = 0 }
UnitPopupButtons["GM_INTERACT_APPEAR"] 		= { text = "Телепорт к персонажу", dist = 0 }
UnitPopupButtons["GM_INTERACT_SUMMON"] 		= { text = "Телепорт персонажа к себе", dist = 0 }

UnitPopupButtons["INTERACT_SUBSECTION_TITLE"] = makeUnitPopupSubsectionTitle(UNIT_FRAME_DROPDOWN_SUBSECTION_TITLE_INTERACT)
UnitPopupButtons["LOOT_SUBSECTION_TITLE"] = makeUnitPopupSubsectionTitle(UNIT_FRAME_DROPDOWN_SUBSECTION_TITLE_LOOT)
UnitPopupButtons["INSTANCE_SUBSECTION_TITLE"] = makeUnitPopupSubsectionTitle(UNIT_FRAME_DROPDOWN_SUBSECTION_TITLE_INSTANCE)
UnitPopupButtons["OTHER_SUBSECTION_TITLE"] = makeUnitPopupSubsectionTitle(UNIT_FRAME_DROPDOWN_SUBSECTION_TITLE_OTHER)
UnitPopupButtons["SUBSECTION_SEPARATOR"] = makeUnitPopupSubsectionSeparator()

-- HEAD HUNTING
UnitPopupButtons["HEADHUNTING_TITLE"] 		= makeUnitPopupSubsectionTitle(HEADHUNTING)
UnitPopupButtons["HEADHUNTING_SET_REWARD"]	= { text = HEADHUNTING_SET_REWARD, dist = 0}

UnitPopupButtons["HEADHUNTING_SETTINGS"] 	= { text = HEADHUNTING, dist = 0, nested = 1 }
UnitPopupButtons["HEADHUNTING_ENABLE"] 		= { text = ENABLE, dist = 0, checkable = 1 }
UnitPopupButtons["HEADHUNTING_DISABLE"] 	= { text = DISABLE, dist = 0, checkable = 1 }

UnitPopupButtons["REFUSE_XP_RATE"]	= { text = REFUSE_XP_RATE, dist = 0}

UnitPopupButtons["WAR_MODE"]	= { text = WAR_MODE, dist = 0}


-- First level menus
UnitPopupMenus = { };

UnitPopupMenus["SELF"] = {
	"RAID_TARGET_ICON",
	"SET_FOCUS",
	"PVP_FLAG",
	"WAR_MODE",
	"HEADHUNTING_SETTINGS",
	"REFUSE_XP_RATE",
	"LOOT_SUBSECTION_TITLE",
	"LOOT_METHOD",
	"LOOT_THRESHOLD",
	"OPT_OUT_LOOT_TITLE",
	"LOOT_PROMOTE",
	"INSTANCE_SUBSECTION_TITLE",
	"DUNGEON_DIFFICULTY",
	"RAID_DIFFICULTY",
	"RESET_INSTANCES",
	"OTHER_SUBSECTION_TITLE",
	"LEAVE",
	"CANCEL" }

UnitPopupMenus["PET"] = { "SET_FOCUS", "PET_PAPERDOLL", "PET_RENAME", "PET_ABANDON", "PET_DISMISS", "CANCEL" };
UnitPopupMenus["PARTY"] = { "GM_TITLE", "GM_INFO", "GM_INTERACT", "GM_SEPARATOR", "RAID_TARGET_ICON", "SET_FOCUS", "INTERACT_SUBSECTION_TITLE", "MUTE", "UNMUTE", "PARTY_SILENCE", "PARTY_UNSILENCE", "RAID_SILENCE", "RAID_UNSILENCE", "BATTLEGROUND_SILENCE", "BATTLEGROUND_UNSILENCE", "PROMOTE", "PROMOTE_GUIDE", "LOOT_PROMOTE", "WHISPER", "INSPECT", "ACHIEVEMENTS", "TRADE", "FOLLOW", "DUEL", "OTHER_SUBSECTION_TITLE", "PVP_REPORT_AFK", "RAF_SUMMON", "RAF_GRANT_LEVEL", "VOTE_TO_KICK", "UNINVITE", "CANCEL" }

UnitPopupMenus["PLAYER"] = {
	"GM_TITLE",
	"GM_INFO",
	"GM_INTERACT",
	"GM_SEPARATOR",
	"RAID_TARGET_ICON",
	"SET_FOCUS",
	"INTERACT_SUBSECTION_TITLE",
	"RAF_SUMMON",
	"RAF_GRANT_LEVEL",
	"INVITE",
	"WHISPER",
	"INSPECT",
	"ACHIEVEMENTS",
	"TRADE",
	"FOLLOW",
	"DUEL",
	"HEADHUNTING_TITLE",
	"HEADHUNTING_SET_REWARD",
	"SUBSECTION_SEPARATOR",
	"CANCEL" };

UnitPopupMenus["RAID_PLAYER"] = { "GM_TITLE", "GM_INFO", "GM_INTERACT", "GM_SEPARATOR", "RAID_TARGET_ICON", "SET_FOCUS", "INTERACT_SUBSECTION_TITLE", "MUTE", "UNMUTE", "RAID_SILENCE", "RAID_UNSILENCE", "BATTLEGROUND_SILENCE", "BATTLEGROUND_UNSILENCE", "WHISPER", "INSPECT", "ACHIEVEMENTS", "TRADE", "FOLLOW", "DUEL", "OTHER_SUBSECTION_TITLE", "PVP_REPORT_AFK", "RAF_SUMMON", "RAF_GRANT_LEVEL", "VOTE_TO_KICK", "UNINVITE", "CANCEL" }
UnitPopupMenus["RAID"] = { "GM_TITLE", "GM_INFO", "GM_INTERACT", "GM_SEPARATOR", "SET_FOCUS", "MUTE", "UNMUTE", "RAID_SILENCE", "RAID_UNSILENCE", "BATTLEGROUND_SILENCE", "BATTLEGROUND_UNSILENCE", "RAID_LEADER", "RAID_PROMOTE", "RAID_MAINTANK", "RAID_MAINASSIST", "LOOT_PROMOTE", "RAID_DEMOTE", "RAID_REMOVE", "PVP_REPORT_AFK", "CANCEL" };
UnitPopupMenus["FRIEND"] = { "GM_TITLE", "GM_INFO", "GM_INTERACT", "GM_SEPARATOR", "POP_OUT_CHAT", "TARGET", "SET_NOTE", "INTERACT_SUBSECTION_TITLE", "INVITE", "WHISPER", "OTHER_SUBSECTION_TITLE", "IGNORE", "REMOVE_FRIEND", "GUILD_PROMOTE", "GUILD_LEAVE", "REPORT_SPAM", "PVP_REPORT_AFK", "CANCEL" }
UnitPopupMenus["FRIEND_OFFLINE"] = { "GM_TITLE", "GM_INFO", "GM_INTERACT", "GM_SEPARATOR", "SET_NOTE", "IGNORE", "REMOVE_FRIEND", "CANCEL" };
UnitPopupMenus["BN_FRIEND"] = { "WHISPER", "POP_OUT_CHAT", "CREATE_CONVERSATION_WITH", "BN_INVITE", "BN_TARGET", "BN_SET_NOTE", "BN_VIEW_FRIENDS", "BLOCK_COMMUNICATION", "BN_REPORT", "BN_REMOVE_FRIEND", "CANCEL" };
UnitPopupMenus["BN_FRIEND_OFFLINE"] = { "BN_SET_NOTE", "BN_VIEW_FRIENDS", "BN_REPORT", "BN_REMOVE_FRIEND", "CANCEL" };
UnitPopupMenus["TEAM"] = { "WHISPER", "INVITE", "TARGET", "TEAM_PROMOTE", "TEAM_KICK", "TEAM_LEAVE", "CANCEL" };
UnitPopupMenus["RAID_TARGET_ICON"] = { "RAID_TARGET_1", "RAID_TARGET_2", "RAID_TARGET_3", "RAID_TARGET_4", "RAID_TARGET_5", "RAID_TARGET_6", "RAID_TARGET_7", "RAID_TARGET_8", "RAID_TARGET_NONE" };
UnitPopupMenus["CHAT_ROSTER"] = { "WHISPER", "TARGET", "MUTE", "UNMUTE", "CHAT_SILENCE", "CHAT_UNSILENCE", "CHAT_PROMOTE", "CHAT_DEMOTE", "CHAT_OWNER", "CANCEL"  };
UnitPopupMenus["VEHICLE"] = { "SET_FOCUS", "RAID_TARGET_ICON", "VEHICLE_LEAVE", "CANCEL" };
UnitPopupMenus["TARGET"] = { "SET_FOCUS", "RAID_TARGET_ICON", "CANCEL" };
UnitPopupMenus["ARENAENEMY"] = { "SET_FOCUS", "CANCEL" };
UnitPopupMenus["FOCUS"] = { "CLEAR_FOCUS", "LOCK_FOCUS_FRAME", "UNLOCK_FOCUS_FRAME", "RAID_TARGET_ICON", "CANCEL" };
UnitPopupMenus["BOSS"] = { "SET_FOCUS", "RAID_TARGET_ICON", "CANCEL" };

-- Second level menus
UnitPopupMenus["PVP_FLAG"] = { "PVP_ENABLE", "PVP_DISABLE"};
UnitPopupMenus["LOOT_METHOD"] = { "FREE_FOR_ALL", "ROUND_ROBIN", "MASTER_LOOTER", "GROUP_LOOT", "NEED_BEFORE_GREED"};
UnitPopupMenus["LOOT_THRESHOLD"] = { "ITEM_QUALITY2_DESC", "ITEM_QUALITY3_DESC", "ITEM_QUALITY4_DESC" };
UnitPopupMenus["OPT_OUT_LOOT_TITLE"] = { "OPT_OUT_LOOT_ENABLE", "OPT_OUT_LOOT_DISABLE"};
UnitPopupMenus["DUNGEON_DIFFICULTY"] = { "DUNGEON_DIFFICULTY1", "DUNGEON_DIFFICULTY2" };
UnitPopupMenus["RAID_DIFFICULTY"] = { "RAID_DIFFICULTY1", "RAID_DIFFICULTY2", "RAID_DIFFICULTY3", "RAID_DIFFICULTY4" };
UnitPopupMenus["BN_REPORT"] = { "BN_REPORT_SPAM", "BN_REPORT_ABUSE", "BN_REPORT_NAME" };
UnitPopupMenus["GM_INFO"] = { "GM_INFO_PLAYER", "GM_INFO_ACCOUNT", "GM_INFO_IP", "GM_INFO_CONFIG" }
UnitPopupMenus["GM_INTERACT"] = { "GM_INTERACT_MUTE", "GM_INTERACT_PLAYER_BAN", "GM_INTERACT_APPEAR", "GM_INTERACT_SUMMON" }
UnitPopupMenus["HEADHUNTING_SETTINGS"] = { "HEADHUNTING_ENABLE", "HEADHUNTING_DISABLE" }

UnitPopupShown = {};
UnitPopupShown[1] = {};
UnitPopupShown[2] = {};
UnitPopupShown[3] = {};

UnitLootMethod = {};
UnitLootMethod["freeforall"] = { text = LOOT_FREE_FOR_ALL, tooltipText = NEWBIE_TOOLTIP_UNIT_FREE_FOR_ALL };
UnitLootMethod["roundrobin"] = { text = LOOT_ROUND_ROBIN, tooltipText = NEWBIE_TOOLTIP_UNIT_ROUND_ROBIN };
UnitLootMethod["master"] = { text = LOOT_MASTER_LOOTER, tooltipText = NEWBIE_TOOLTIP_UNIT_MASTER_LOOTER };
UnitLootMethod["group"] = { text = LOOT_GROUP_LOOT, tooltipText = NEWBIE_TOOLTIP_UNIT_GROUP_LOOT };
UnitLootMethod["needbeforegreed"] = { text = LOOT_NEED_BEFORE_GREED, tooltipText = NEWBIE_TOOLTIP_UNIT_NEED_BEFORE_GREED };


UnitPopupFrames = {
	"PlayerFrameDropDown",
	"TargetFrameDropDown",
	"FocusFrameDropDown",
	"PartyMemberFrame1DropDown",
	"PartyMemberFrame2DropDown",
	"PartyMemberFrame3DropDown",
	"PartyMemberFrame4DropDown",
	"FriendsDropDown"
};

local function GetDropDownButtonText(button, dropdownMenu)
	if (type(button.text) == "function") then
		return button.text(dropdownMenu);
	end

	return button.text or "";
end

UnitPopupShown = { {}, {}, {}, };

local function UnitPopup_CheckAddSubsection(dropdownMenu, info, menuLevel, currentButton, previousButton, previousIndex, previousValue)
	if previousButton and previousButton.isSubsection then
		if not currentButton.isSubsection then
			if previousButton.isSubsectionSeparator then
				UIDropDownMenu_AddSeparator(info);
			end

			if previousButton.isSubsectionTitle and info then
				UnitPopup_AddDropDownButton(info, dropdownMenu, previousButton, previousValue, menuLevel);
			end
		else
			UnitPopupShown[menuLevel][previousIndex] = 0;
		end
	end
end

function UnitPopup_ShowMenu (dropdownMenu, which, unit, name, userData)
	local server = nil;
	-- Init variables
	dropdownMenu.which = which;
	dropdownMenu.unit = unit;
	if ( unit ) then
		name, server = UnitName(unit);
	elseif ( name ) then
		local n, s = strmatch(name, "^([^-]+)-(.*)");
		if ( n ) then
			name = n;
			server = s;
		end
	end
	dropdownMenu.name = name;
	dropdownMenu.userData = userData;
	dropdownMenu.server = server;

	-- Determine which buttons should be shown or hidden
	UnitPopup_HideButtons();

	-- If only one menu item (the cancel button) then don't show the menu
	local count = 0;
	for index, value in ipairs(UnitPopupMenus[which]) do
		if( UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] == 1 and value ~= "CANCEL" ) then
			count = count + 1;
		end
	end
	if ( count < 1 ) then
		return;
	end

	-- Determine which loot method and which loot threshold are selected and set the corresponding buttons to the same text
	dropdownMenu.selectedLootMethod = UnitLootMethod[GetLootMethod()].text;
	UnitPopupButtons["LOOT_METHOD"].text = dropdownMenu.selectedLootMethod;
	UnitPopupButtons["LOOT_METHOD"].tooltipText = UnitLootMethod[GetLootMethod()].tooltipText;
	dropdownMenu.selectedLootThreshold = _G["ITEM_QUALITY"..GetLootThreshold().."_DESC"];
	UnitPopupButtons["LOOT_THRESHOLD"].text = dropdownMenu.selectedLootThreshold;
	-- This allows player to view loot settings if he's not the leader
	if ( ((GetNumPartyMembers() > 0) or (GetNumRaidMembers() > 0)) and IsPartyLeader() and not HasLFGRestrictions()) then
		-- If this is true then player is the party leader
		UnitPopupButtons["LOOT_METHOD"].nested = 1;
		UnitPopupButtons["LOOT_THRESHOLD"].nested = 1;
	else
		UnitPopupButtons["LOOT_METHOD"].nested = nil;
		UnitPopupButtons["LOOT_THRESHOLD"].nested = nil;
	end
	-- Set the selected opt out of loot option to the opt out of loot button text
	if ( GetOptOutOfLoot() ) then
		UnitPopupButtons["OPT_OUT_LOOT_TITLE"].text = format(OPT_OUT_LOOT_TITLE, UnitPopupButtons["OPT_OUT_LOOT_ENABLE"].text);
	else
		UnitPopupButtons["OPT_OUT_LOOT_TITLE"].text = format(OPT_OUT_LOOT_TITLE, UnitPopupButtons["OPT_OUT_LOOT_DISABLE"].text);
	end
	-- Disable dungeon and raid difficulty in instances except for for leaders in dynamic instances
	local selectedRaidDifficulty, allowedRaidDifficultyChange;
	local _, instanceType, _, _, _, _, isDynamicInstance = GetInstanceInfo();
	if ( isDynamicInstance and CanChangePlayerDifficulty() ) then
		selectedRaidDifficulty, allowedRaidDifficultyChange = _GetPlayerDifficultyMenuOptions();
	end
	if ( instanceType == "none" ) then
		UnitPopupButtons["DUNGEON_DIFFICULTY"].nested = 1;
		UnitPopupButtons["RAID_DIFFICULTY"].nested = 1;
	else
		UnitPopupButtons["DUNGEON_DIFFICULTY"].nested = nil;
		if ( allowedRaidDifficultyChange ) then
			UnitPopupButtons["RAID_DIFFICULTY"].nested = 1;
		else
			UnitPopupButtons["RAID_DIFFICULTY"].nested = nil;
		end
	end

	--Add the cooldown to the RAF Summon
	do
		local start, duration = GetSummonFriendCooldown();
		local remaining = start + duration - GetTime();
		if ( remaining > 0 ) then
			UnitPopupButtons["RAF_SUMMON"].text = format(RAF_SUMMON_WITH_COOLDOWN, SecondsToTime(remaining, true));
		else
			UnitPopupButtons["RAF_SUMMON"].text = RAF_SUMMON;
		end
	end

	-- If level 2 dropdown
	local info;
	local color;
	local icon;
	if ( UIDROPDOWNMENU_MENU_LEVEL == 2 ) then
		dropdownMenu.which = UIDROPDOWNMENU_MENU_VALUE;
		-- Set which menu is being opened
		OPEN_DROPDOWNMENUS[UIDROPDOWNMENU_MENU_LEVEL] = {which = dropdownMenu.which, unit = dropdownMenu.unit};
		info = UIDropDownMenu_CreateInfo();
		local previousButton, previousIndex, previousValue
		for index, value in ipairs(UnitPopupMenus[UIDROPDOWNMENU_MENU_VALUE]) do
			local cntButton = UnitPopupButtons[value]

			info.text = UnitPopupButtons[value].text;
			info.owner = UIDROPDOWNMENU_MENU_VALUE;
			-- Set the text color
			color = UnitPopupButtons[value].color;
			if ( color ) then
				info.colorCode = string.format("|cFF%02x%02x%02x", color.r*255, color.g*255, color.b*255);
			else
				info.colorCode = nil;
			end
			-- Icons
			info.icon = UnitPopupButtons[value].icon;
			info.tCoordLeft = UnitPopupButtons[value].tCoordLeft;
			info.tCoordRight = UnitPopupButtons[value].tCoordRight;
			info.tCoordTop = UnitPopupButtons[value].tCoordTop;
			info.tCoordBottom = UnitPopupButtons[value].tCoordBottom;
			-- Checked conditions
			info.checked = nil;
			if ( info.text == dropdownMenu.selectedLootMethod  ) then
				info.checked = 1;
			elseif ( info.text == dropdownMenu.selectedLootThreshold ) then
				info.checked = 1;
			elseif ( strsub(value, 1, 12) == "RAID_TARGET_" ) then
				local raidTargetIndex = GetRaidTargetIndex(unit);
				if ( raidTargetIndex == index ) then
					info.checked = 1;
				end
			elseif ( strsub(value, 1, 18) == "DUNGEON_DIFFICULTY" and (strlen(value) > 18)) then
				local dungeonDifficulty = GetDungeonDifficulty();
				if ( dungeonDifficulty == index ) then
					info.checked = 1;
				end
				local inParty = 0;
				if ( (GetNumPartyMembers() > 0) or (GetNumRaidMembers() > 0) ) then
					inParty = 1;
				end
				local isLeader = 0;
				if ( IsPartyLeader() ) then
					isLeader = 1;
				end
				local inInstance, instanceType = IsInInstance();
				if ( ( inParty == 1 and isLeader == 0 ) or inInstance ) then
					info.disabled = 1;
				end
			elseif ( strsub(value, 1, 15) == "RAID_DIFFICULTY" and (strlen(value) > 15)) then
				if ( isDynamicInstance ) then
					if ( selectedRaidDifficulty == index ) then
						info.checked = 1;
					end
				else
					local dungeonDifficulty = GetRaidDifficulty();
					if ( dungeonDifficulty == index ) then
						info.checked = 1;
					end
				end
				local inParty = 0;
				if ( (GetNumPartyMembers() > 0) or (GetNumRaidMembers() > 0) ) then
					inParty = 1;
				end
				local isLeader = 0;
				if ( IsPartyLeader() ) then
					isLeader = 1;
				end
				local inInstance, instanceType = IsInInstance();
				if ( ( inParty == 1 and isLeader == 0 ) or inInstance ) then
					info.disabled = 1;
				end
				if ( allowedRaidDifficultyChange and allowedRaidDifficultyChange == value ) then
					info.disabled = nil;
				end
			elseif ( value == "PVP_ENABLE" ) then
				if ( GetPVPDesired() == 1 ) then
					info.checked = 1;
				end
			elseif ( value == "PVP_DISABLE" ) then
				if ( GetPVPDesired() == 0 ) then
					info.checked = 1;
				end
			elseif ( value == "OPT_OUT_LOOT_ENABLE" ) then
				if ( GetOptOutOfLoot() ) then
					info.checked = 1;
				end
			elseif ( value == "OPT_OUT_LOOT_DISABLE" ) then
				if ( not GetOptOutOfLoot() ) then
					info.checked = 1;
				end
			elseif value == "HEADHUNTING_ENABLE" then
				if C_CacheInstance:Get("ASMSG_HEADHUNTING_ZONE_NOTIFICATIONS", 0) == 1 then
					info.checked = 1
				end
			elseif value == "HEADHUNTING_DISABLE" then
				if C_CacheInstance:Get("ASMSG_HEADHUNTING_ZONE_NOTIFICATIONS", 0) == 0 then
					info.checked = 1
				end
			end

			info.value = value;
			info.func = UnitPopup_OnClick;
			if ( not UnitPopupButtons[value].checkable ) then
				info.notCheckable = true;
			else
				info.notCheckable = nil;
			end
			if ( UnitPopupButtons[value].isNotRadio ) then
				info.isNotRadio = true;
			else
				info.isNotRadio = nil;
			end
			-- Setup newbie tooltips
			info.tooltipTitle = UnitPopupButtons[value].text;
			info.tooltipText = _G["NEWBIE_TOOLTIP_UNIT_"..value];

			if not cntButton.isSubsection then
				UnitPopup_AddDropDownButton(info, dropdownMenu, cntButton, value, UIDROPDOWNMENU_MENU_LEVEL);
			end

			previousButton = cntButton;
			previousIndex = index;
			previousValue = value;
		end
		return;
	end

	-- Add dropdown title
	UnitPopup_AddDropDownTitle(unit, name, userData)

	-- Set which menu is being opened
	OPEN_DROPDOWNMENUS[UIDROPDOWNMENU_MENU_LEVEL] = {which = dropdownMenu.which, unit = dropdownMenu.unit};
	-- Show the buttons which are used by this menu
	info = UIDropDownMenu_CreateInfo();
	local tooltipText;
	local previousButton, previousIndex, previousValue;
	for index, value in ipairs(UnitPopupMenus[which]) do
		if( UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] == 1 ) then
			local cntButton = UnitPopupButtons[value];

			UnitPopup_CheckAddSubsection(dropdownMenu, info, UIDROPDOWNMENU_MENU_LEVEL, cntButton, previousButton, previousIndex, previousValue);

			if not cntButton.isSubsection then
				UnitPopup_AddDropDownButton(info, dropdownMenu, cntButton, value);
			end

			previousButton = cntButton;
			previousIndex = index;
			previousValue = value;
		end
	end
	PlaySound("igMainMenuOpen");
end

function UnitPopup_AddDropDownTitle(unit, name, userData)
	if ( unit or name ) then
		local info = UIDropDownMenu_CreateInfo();

		local titleText = name;
		if not titleText and unit then
			titleText = UnitName(unit);
		end

		info.text = titleText or UNKNOWN;
		info.isTitle = true;
		info.notCheckable = true;

		local class;
		if unit then
			class = select(2, UnitClass(unit));
		end

		if not class and userData and userData.guid then
			class = select(2, GetPlayerInfoByGUID(userData.guid));
		end

		if class then
			local colorCode = select(4, GetClassColor(class));

			if unit and not UnitIsPlayer(unit) then
				colorCode = "ffffd200"
			end

			info.disablecolor = "|c" .. colorCode;
		end

		UIDropDownMenu_AddButton(info);
	end
end

function UnitPopup_AddDropDownButton(info, dropdownMenu, cntButton, buttonIndex, level)
	if (not level) then
		level = 1;
	end

	info.text = GetDropDownButtonText(cntButton, dropdownMenu);
	info.value = buttonIndex;
	info.owner = nil;
	info.func = UnitPopup_OnClick;

	if ( not cntButton.checkable ) then
		info.notCheckable = true;
	else
		info.notCheckable = nil;
	end

	local color = cntButton.color;
	if ( color ) then
		info.colorCode = string.format("|cFF%02x%02x%02x",  color.r*255,  color.g*255,  color.b*255);
	else
		info.colorCode = nil;
	end
		-- Icons
	if ( cntButton.iconOnly ) then
		info.iconOnly = 1;
		info.icon = cntButton.icon;
		info.iconInfo = { tCoordLeft = cntButton.tCoordLeft,
							tCoordRight = cntButton.tCoordRight,
							tCoordTop = cntButton.tCoordTop,
							tCoordBottom = cntButton.tCoordBottom,
							tSizeX = cntButton.tSizeX,
							tSizeY = cntButton.tSizeY,
							tFitDropDownSizeX = cntButton.tFitDropDownSizeX };
	else
		info.iconOnly = nil;
		info.icon = cntButton.icon;
		info.tCoordLeft = cntButton.tCoordLeft;
		info.tCoordRight = cntButton.tCoordRight;
		info.tCoordTop = cntButton.tCoordTop;
		info.tCoordBottom = cntButton.tCoordBottom;
		info.iconInfo = nil;
	end

	-- Checked conditions
	if (level == 1) then
		info.checked = nil;
	end

	info.checked = UnitPopup_GetOverrideIsChecked(buttonIndex, info.checked, dropdownMenu);

	if ( cntButton.nested ) then
		info.hasArrow = true;
	else
		info.hasArrow = nil;
	end
	if ( cntButton.isNotRadio ) then
		info.isNotRadio = true
	else
		info.isNotRadio = nil;
	end

	if ( cntButton.isTitle ) then
		info.isTitle = true;
	else
		info.isTitle = nil;

		-- NOTE: UnitPopup_AddDropDownButton is called for both level 1 and 2 buttons, level 2 buttons already
		-- had a disable mechanism, so only set disabled to nil for level 1 buttons.
		-- All buttons can define IsDisabledFn to override behavior.
		-- NOTE: There are issues when both 'nested' and 'disabled' are true, the label on the menu won't respect
		-- the disabled state, but the arrow will.  Should fix this at some point.
		if cntButton.IsDisabledFn then
			info.disabled = cntButton.IsDisabledFn();
		else
			if (level == 1) then
				info.disabled = nil;
			end
		end
	end

	-- Setup newbie tooltips
	info.tooltipTitle = cntButton.text;
	local tooltipText = _G["NEWBIE_TOOLTIP_UNIT_"..buttonIndex];
	if ( not tooltipText ) then
		tooltipText = cntButton.tooltipText;
	end

	info.tooltipText = tooltipText;

	info.tooltipWhileDisabled = cntButton.tooltipWhileDisabled;
	info.noTooltipWhileEnabled = cntButton.noTooltipWhileEnabled;
	info.tooltipOnButton = cntButton.tooltipOnButton;
	info.tooltipInstruction = cntButton.tooltipInstruction;
	info.tooltipWarning = cntButton.tooltipWarning;

	UIDropDownMenu_AddButton(info, level);
end

function UnitPopup_GetOverrideIsChecked(command, currentIsChecked, dropdownMenu)
	if command == "LARGE_FOCUS" then
		if GetCVarBool("fullSizeFocusFrame") then
			return true;
		end
	end

	-- If there was no override, use the current value
	return currentIsChecked;
end

function UnitPopup_HideButtons ()
	local dropdownMenu = UIDROPDOWNMENU_INIT_MENU;
	local inInstance, instanceType = IsInInstance();
	local inParty = 0;
	if ( (GetNumPartyMembers() > 0) or (GetNumRaidMembers() > 0) ) then
		inParty = 1;
	end

	local inRaid = 0;
	if ( (GetNumRaidMembers() > 0) ) then
		inRaid = 1;
	end

	local isLeader = 0;
	if ( IsPartyLeader() ) then
		isLeader = 1;
	end

	local isAssistant = 0;
	if ( IsRaidOfficer() ) then
		isAssistant = 1;
	end

	local inBattleground = 0;
	if ( UnitInBattleground("player") ) then
		inBattleground = 1;
	end

	local canCoop = 0;
	if ( dropdownMenu.unit and UnitCanCooperate("player", dropdownMenu.unit) ) then
		canCoop = 1;
	end

	for index, value in ipairs(UnitPopupMenus[dropdownMenu.which]) do
		UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 1;

		if ( value == "TRADE" ) then
			if ( canCoop == 0 ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "INVITE" ) then
			if ( dropdownMenu.unit and not (C_Unit:IsRenegade("player") or C_Unit:IsRenegade(dropdownMenu.unit)) ) then
				local _, server = UnitName(dropdownMenu.unit);
				if ( canCoop == 0  or UnitIsUnit("player", dropdownMenu.unit) or (server and server ~= "") ) then
					UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
				end
			elseif ( (dropdownMenu == PVPDropDown) and not PVPDropDown.online ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			elseif ( (dropdownMenu == ChannelRosterDropDown) ) then
				if ( UnitInRaid(dropdownMenu.name) ~= nil ) then
					UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
				end
			else
				if ( dropdownMenu.name == UnitName("party1") or
					 dropdownMenu.name == UnitName("party2") or
					 dropdownMenu.name == UnitName("party3") or
					 dropdownMenu.name == UnitName("party4") or
					 dropdownMenu.name == UnitName("player")) then
					UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
				end
			end
		elseif ( value == "FOLLOW" ) then
			if ( canCoop == 0 ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "WHISPER" ) then
			if ( dropdownMenu.unit ) then
				if ( canCoop == 0  or dropdownMenu.name == UnitName("player") ) then
					UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
				end
			elseif ( (dropdownMenu == PVPDropDown) and not PVPDropDown.online ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "CREATE_CONVERSATION_WITH" ) then
			if ( not dropdownMenu.presenceID or not BNFeaturesEnabledAndConnected()) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			else
				local presenceID, givenName, surname, toonName, toonID, client, isOnline = BNGetFriendInfoByID(dropdownMenu.presenceID);
				if ( not isOnline ) then
					UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
				end
			end
		elseif ( value == "DUEL" ) then
			if ( UnitCanAttack("player", dropdownMenu.unit) ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "INSPECT" or value == "ACHIEVEMENTS" ) then
			if ( not dropdownMenu.unit or UnitCanAttack("player", dropdownMenu.unit) ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "IGNORE" ) then
			if ( dropdownMenu.name == UnitName("player") and canCoop == 0 ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "REMOVE_FRIEND" ) then
			if ( not dropdownMenu.friendsList ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "SET_NOTE" ) then
			if ( not dropdownMenu.friendsList ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "BN_SET_NOTE" ) then
			if ( not dropdownMenu.friendsList ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "BN_VIEW_FRIENDS" ) then
			if ( not dropdownMenu.friendsList ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "BN_REMOVE_FRIEND" ) then
			if ( not dropdownMenu.friendsList ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "BLOCK_COMMUNICATION" ) then
			-- only show it for presence IDs that are not friends
			if ( dropdownMenu.presenceID and BNFeaturesEnabledAndConnected()) then
				local presenceID, givenName, surname, toonName, toonID, client, isOnline, lastOnline, isAFK, isDND, broadcastText, noteText, isFriend = BNGetFriendInfoByID(dropdownMenu.presenceID);
				if ( isFriend ) then
					UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
				end
			else
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "BN_REPORT" ) then
			if ( not dropdownMenu.presenceID or not BNFeaturesEnabledAndConnected() ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "REPORT_SPAM" ) then
			if ( not dropdownMenu.lineID or not CanComplainChat(dropdownMenu.lineID) ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "POP_OUT_CHAT" ) then
			if ( (dropdownMenu.chatType ~= "WHISPER" and dropdownMenu.chatType ~= "BN_WHISPER") or dropdownMenu.chatTarget == UnitName("player") or
				FCFManager_GetNumDedicatedFrames(dropdownMenu.chatType, dropdownMenu.chatTarget) > 0 ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "TARGET" ) then
			-- We don't want to show a menu option that will end up being blocked
			if ( InCombatLockdown() or not issecure() ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			elseif ( (dropdownMenu == PVPDropDown) and not PVPDropDown.online ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "PROMOTE" ) then
			if ( (inParty == 0) or (isLeader == 0) or HasLFGRestrictions()) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "PROMOTE_GUIDE" ) then
			if ( (inParty == 0) or (isLeader == 0) or not HasLFGRestrictions()) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "GUILD_PROMOTE" ) then
			if ( not IsGuildLeader() or not UnitIsInMyGuild(dropdownMenu.name) or dropdownMenu.name == UnitName("player") or not GuildFrame:IsShown() ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "GUILD_LEAVE" ) then
			if ( dropdownMenu.name ~= UnitName("player") or not GuildFrame:IsShown() ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "TEAM_PROMOTE" ) then
			if ( dropdownMenu.name == UnitName("player") or not PVPUI_ArenaTeamDetails:IsShown() ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			elseif ( PVPUI_ArenaTeamDetails:IsShown() and not IsArenaTeamCaptain(PVPUI_ArenaTeamDetails.team) ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "TEAM_KICK" ) then
			if ( dropdownMenu.name == UnitName("player") or not PVPUI_ArenaTeamDetails:IsShown() ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			elseif ( PVPUI_ArenaTeamDetails:IsShown() and not IsArenaTeamCaptain(PVPUI_ArenaTeamDetails.team) ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "TEAM_LEAVE" ) then
			if ( dropdownMenu.name ~= UnitName("player") or not PVPUI_ArenaTeamDetails:IsShown() ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "UNINVITE" ) then
			if ( (inParty == 0) or (isLeader == 0) or (instanceType == "pvp") or (instanceType == "arena") or HasLFGRestrictions() ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "VOTE_TO_KICK" ) then
			if ( (inParty == 0) or (instanceType == "pvp") or (instanceType == "arena") or (not HasLFGRestrictions()) ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "LEAVE" ) then
			if ( (inParty == 0) ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "FREE_FOR_ALL" ) then
			if ( (inParty == 0) or ((isLeader == 0) and (GetLootMethod() ~= "freeforall")) ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "ROUND_ROBIN" ) then
			if ( (inParty == 0) or ((isLeader == 0) and (GetLootMethod() ~= "roundrobin")) ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "MASTER_LOOTER" ) then
			if ( (inParty == 0) or ((isLeader == 0) and (GetLootMethod() ~= "master")) ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "GROUP_LOOT" ) then
			if ( (inParty == 0) or ((isLeader == 0) and (GetLootMethod() ~= "group")) ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "NEED_BEFORE_GREED" ) then
			if ( (inParty == 0) or ((isLeader == 0) and (GetLootMethod() ~= "needbeforegreed")) ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "LOOT_THRESHOLD" ) then
			if ( inParty == 0 or HasLFGRestrictions() ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "OPT_OUT_LOOT_TITLE" ) then
			if ( inParty == 0 or ( inParty == 1 and GetLootMethod() == "freeforall" ) ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "LOOT_PROMOTE" ) then
			local lootMethod;
			local partyIndex, raidIndex;
			local isMaster = nil;
			lootMethod, partyIndex, raidIndex = GetLootMethod();
			if ( (dropdownMenu.which == "RAID") or (dropdownMenu.which == "RAID_PLAYER") ) then
				if ( raidIndex and (dropdownMenu.unit == "raid"..raidIndex) ) then
					isMaster = 1;
				end
			elseif ( dropdownMenu.which == "SELF" ) then
				 if ( partyIndex and (partyIndex == 0) ) then
					isMaster = 1;
				 end
			else
				if ( partyIndex and (dropdownMenu.unit == "party"..partyIndex) ) then
					isMaster = 1;
				end
			end
			if ( (inParty == 0) or (isLeader == 0) or (lootMethod ~= "master") or isMaster ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "LOOT_METHOD" ) then
			if ( inParty == 0 ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "RESET_INSTANCES" ) then
			if ( ( inParty == 1 and isLeader == 0 ) or inInstance) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "DUNGEON_DIFFICULTY" ) then
			if ( ( UnitLevel("player") < 65 and isLeader == 0 ) and GetDungeonDifficulty() == 1 ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "RAID_DIFFICULTY" ) then
			if ( ( UnitLevel("player") < 65 and isLeader == 0 ) and GetRaidDifficulty() == 1 ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "MUTE" ) then
			if ( not IsVoiceChatEnabled() or (dropdownMenu.unit and not UnitIsConnected(dropdownMenu.unit)) ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			else
				-- Hide if already muted.
				if ( dropdownMenu.name == UnitName("player") or IsMuted(dropdownMenu.name) ) then
					UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
				end
			end
		elseif ( value == "UNMUTE" ) then
			if ( not IsVoiceChatEnabled() ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			else
				-- Hide if not muted or not online.
				if ( dropdownMenu.name == UnitName("player") or not IsMuted(dropdownMenu.name) ) then
					UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
				end
			end
		elseif ( value == "RAID_LEADER" ) then
			if ( (isLeader == 0) or UnitIsPartyLeader(dropdownMenu.unit)or not dropdownMenu.name ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "RAID_PROMOTE" ) then
			if ( isLeader == 0 ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			elseif ( isLeader == 1 ) then
				if ( UnitIsRaidOfficer(dropdownMenu.unit) ) then
					UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
				end
			end
		elseif ( value == "RAID_DEMOTE" ) then
			if ( ( isLeader == 0 and isAssistant == 0 ) or not dropdownMenu.name ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			elseif ( not GetPartyAssignment("MAINTANK", dropdownMenu.name, 1) and not GetPartyAssignment("MAINASSIST", dropdownMenu.name, 1) ) then
				if ( isLeader == 0  and isAssistant == 1 and UnitIsRaidOfficer(dropdownMenu.unit) ) then
					UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
				elseif ( isLeader == 1 or isAssistant == 1 ) then
					if ( UnitIsPartyLeader(dropdownMenu.unit) or not UnitIsRaidOfficer(dropdownMenu.unit)) then
						UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
					end
				end
			end
		elseif ( value == "RAID_MAINTANK" ) then
			-- We don't want to show a menu option that will end up being blocked
			local name, rank, subgroup, level, class, fileName, zone, online, isDead, role = GetRaidRosterInfo(dropdownMenu.userData);
			if ( not issecure() or (isLeader == 0 and isAssistant == 0) or (role == "MAINTANK") or not dropdownMenu.name ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "RAID_MAINASSIST" ) then
			-- We don't want to show a menu option that will end up being blocked
			local name, rank, subgroup, level, class, fileName, zone, online, isDead, role = GetRaidRosterInfo(dropdownMenu.userData);
			if ( not issecure() or (isLeader == 0 and isAssistant == 0) or (role == "MAINASSIST") or not dropdownMenu.name ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "RAID_REMOVE" ) then
			if ( ( isLeader == 0 and isAssistant == 0 ) or not dropdownMenu.name ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			elseif ( isLeader == 0 and isAssistant == 1 and UnitIsRaidOfficer(dropdownMenu.unit) ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			elseif ( isLeader == 1 and UnitIsUnit(dropdownMenu.unit, "player") ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "PVP_REPORT_AFK" ) then
			if ( inBattleground == 0 or GetCVar("enablePVPNotifyAFK") == "0" ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			elseif ( dropdownMenu.unit ) then
				if ( UnitIsUnit(dropdownMenu.unit,"player") ) then
					UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
				elseif ( not UnitInBattleground(dropdownMenu.unit) ) then
					UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
				elseif ( (PlayerIsPVPInactive(dropdownMenu.unit)) ) then
					UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
				end
			elseif ( dropdownMenu.name ) then
				if ( dropdownMenu.name == UnitName("player") ) then
					UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
				elseif ( not UnitInBattleground(dropdownMenu.name) ) then
					UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
				end
			end
		elseif ( value == "RAF_SUMMON" ) then
			if( not IsReferAFriendLinked(dropdownMenu.unit) ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "RAF_GRANT_LEVEL" ) then
			if( not IsReferAFriendLinked(dropdownMenu.unit) ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "PET_PAPERDOLL" ) then
			if( not PetCanBeAbandoned() ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "PET_RENAME" ) then
			if( not PetCanBeAbandoned() or not PetCanBeRenamed() ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "PET_ABANDON" ) then
			if( not PetCanBeAbandoned() ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "PET_DISMISS" ) then
			if( PetCanBeAbandoned() or not PetCanBeDismissed() ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( strsub(value, 1, 12)  == "RAID_TARGET_" ) then
			-- Task #30755. Let any party member mark targets
			-- Task 34355 - But only raid leaders can mark targets.
			if ( inRaid == 1 and isLeader == 0 and isAssistant == 0 ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
			if ( not (dropdownMenu.which == "SELF") ) then
				if ( UnitExists("target") and not UnitPlayerOrPetInParty("target") and not UnitPlayerOrPetInRaid("target") ) then
					if ( UnitIsPlayer("target") and (not UnitCanCooperate("player", "target") and not UnitIsUnit("target", "player")) ) then
						UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
					end
				end
			end

		elseif ( value == "CHAT_PROMOTE" ) then
			if ( dropdownMenu.category == "CHANNEL_CATEGORY_GROUP" ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			else
				if ( not IsDisplayChannelOwner() or dropdownMenu.owner or dropdownMenu.moderator or dropdownMenu.name == UnitName("player") ) then
					UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
				end
			end
		elseif ( value == "CHAT_DEMOTE" ) then
			if ( dropdownMenu.category == "CHANNEL_CATEGORY_GROUP" ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			else
				if ( not IsDisplayChannelOwner() or dropdownMenu.owner or not dropdownMenu.moderator or dropdownMenu.name == UnitName("player") ) then
					UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
				end
			end
		elseif ( value == "CHAT_OWNER" ) then
			if ( dropdownMenu.category == "CHANNEL_CATEGORY_GROUP" ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			else
				if ( not IsDisplayChannelOwner() or dropdownMenu.owner or dropdownMenu.name == UnitName("player") ) then
					UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
				end
			end
		elseif ( value == "CHAT_SILENCE" ) then
			if ( not IsVoiceChatEnabled() or not dropdownMenu.name or dropdownMenu.name == UNKNOWNOBJECT or not GetVoiceStatus(dropdownMenu.name) ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			else
				if ( IsDisplayChannelModerator() and dropdownMenu.name ~= UnitName("player") ) then
					if ( IsSilenced(dropdownMenu.name) ) then
						UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
					end
				else
					UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
				end
			end
		elseif ( value == "CHAT_UNSILENCE" ) then
			if ( not IsVoiceChatEnabled() or not dropdownMenu.name or dropdownMenu.name == UNKNOWNOBJECT or not GetVoiceStatus(dropdownMenu.name) ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			else
				if ( IsDisplayChannelModerator() ) then
					if ( not IsSilenced(dropdownMenu.name) ) then
						UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
					end
				else
					UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
				end
			end
		elseif ( value == "PARTY_SILENCE" ) then
			if ( not IsVoiceChatEnabled() or not dropdownMenu.name or dropdownMenu.name == UNKNOWNOBJECT or not GetVoiceStatus(dropdownMenu.name) ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			else
				if ( ( inParty == 1 and isLeader == 1 and inRaid == 0 ) and dropdownMenu.name ~= UnitName("player") ) then
					if ( UnitIsSilenced(dropdownMenu.name, "party") ) then
						UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
					end
					dropdownMenu.channelName = "party";
				else
					UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
				end
			end
		elseif ( value == "PARTY_UNSILENCE" ) then
			if ( not IsVoiceChatEnabled() or not dropdownMenu.name or dropdownMenu.name == UNKNOWNOBJECT or not GetVoiceStatus(dropdownMenu.name) ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			else
				if ( ( inParty == 1 and isLeader == 1 and inRaid == 0 ) ) then
					if ( not UnitIsSilenced(dropdownMenu.name, "party") ) then
						UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
					end
					dropdownMenu.channelName = "party";
				else
					UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
				end
			end
		elseif ( value == "RAID_SILENCE" ) then
			if ( not IsVoiceChatEnabled() or not dropdownMenu.name or dropdownMenu.name == UNKNOWNOBJECT or not GetVoiceStatus(dropdownMenu.name) ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			else
				if (  inBattleground == 0 ) then
					if ( ( inParty == 1 and isAssistant == 1 and inRaid == 1 ) and dropdownMenu.name ~= UnitName("player") ) then
						if ( UnitIsSilenced(dropdownMenu.name, "raid") ) then
							UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
						end
						dropdownMenu.channelName = "raid";
					else
						UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
					end
				else
					UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
				end
			end
		elseif ( value == "RAID_UNSILENCE" ) then
			if ( not IsVoiceChatEnabled() or not dropdownMenu.name or dropdownMenu.name == UNKNOWNOBJECT or not GetVoiceStatus(dropdownMenu.name) ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			else
				if (  inBattleground == 0 ) then
					if ( ( inParty == 1 and isAssistant == 1 and inRaid == 1 ) ) then
						if ( not UnitIsSilenced(dropdownMenu.name, "raid") ) then
							UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
						end
						dropdownMenu.channelName = "raid";
					else
						UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
					end
				else
					UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
				end
			end
		elseif ( value == "BATTLEGROUND_SILENCE" ) then
			if ( not IsVoiceChatEnabled() or not dropdownMenu.name or dropdownMenu.name == UNKNOWNOBJECT or not GetVoiceStatus(dropdownMenu.name) ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			else
				if (  inBattleground == 1 ) then
					if ( ( inParty == 1 and isAssistant == 1 and inRaid == 1 ) and dropdownMenu.name ~= UnitName("player") ) then
						if ( UnitIsSilenced(dropdownMenu.name, "battleground") ) then
							UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
						end
						dropdownMenu.channelName = "battleground";
					else
						UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
					end
				else
					UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
				end
			end
		elseif ( value == "BATTLEGROUND_UNSILENCE" ) then
			if ( not IsVoiceChatEnabled() or not dropdownMenu.name or dropdownMenu.name == UNKNOWNOBJECT or not GetVoiceStatus(dropdownMenu.name) ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			else
				if (  inBattleground == 1 ) then
					if ( ( inParty == 1 and isAssistant == 1 and inRaid == 1 ) ) then
						if ( not UnitIsSilenced(dropdownMenu.name, "battleground") ) then
							UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
						end
						dropdownMenu.channelName = "battleground";
					else
						UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
					end
				else
					UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
				end
			end
		elseif ( value == "CHAT_KICK" ) then
			UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
		elseif ( value == "CHAT_LEAVE" ) then
			if ( not dropdownMenu.active or dropdownMenu.group) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "VEHICLE_LEAVE" ) then
			if ( not CanExitVehicle() ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "LOCK_FOCUS_FRAME" ) then
			if ( FocusFrame_IsLocked() ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "UNLOCK_FOCUS_FRAME" ) then
			if ( not FocusFrame_IsLocked() ) then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0;
			end
		elseif ( value == "GM_TITLE" or value == "GM_INFO" or value == "GM_INTERACT" or value == "GM_SEPARATOR" ) then
			if not IsGMAccount() then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0
			end
		elseif isOneOf(value, "HEADHUNTING_TITLE", "HEADHUNTING_SET_REWARD", "HEADHUNTING_SETTINGS", "HEADHUNTING_ENABLE", "HEADHUNTING_DISABLE") then
			if C_Service:IsLockRenegadeFeatures() then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0
			end
		elseif value == "REFUSE_XP_RATE" then
			local hiddenByLevel = UnitLevel("player") > 9;
			if select(2, UnitClass("player")) == "DEATHKNIGHT" then
				hiddenByLevel = UnitLevel("player") > 58;
			end
			if C_Service:IsLockRefuseXPRateFeature() or hiddenByLevel or C_CacheInstance:Get("ASMSG_ENABLE_X1_RATE") then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0
			end
		elseif value == "WAR_MODE" then
			if C_Service:IsLockSwitchWarModeFeature() or  C_Service:IsLockWarModFeature() then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0
			end
		elseif value == "PVP_FLAG" then
			if C_Service:IsWarModRealm() then
				UnitPopupShown[UIDROPDOWNMENU_MENU_LEVEL][index] = 0
			end
		end
	end
end

local function UnitPopup_IsEnabled(dropdownFrame, unitPopupButton)
	if unitPopupButton.isUninteractable then
		return 0;
	end

	if unitPopupButton.dist and unitPopupButton.dist > 0 and not CheckInteractDistance(dropdownFrame.unit, unitPopupButton.dist) then
		return 0;
	end

	return 1;
end

function UnitPopup_OnUpdate (elapsed)
	if ( not DropDownList1:IsShown() ) then
		return;
	end

	-- If none of the untipopup frames are visible then return
	for index, value in ipairs(UnitPopupFrames) do
		if ( UIDROPDOWNMENU_OPEN_MENU == _G[value] ) then
			break;
		elseif ( index == #UnitPopupFrames ) then
			return;
		end
	end

	local currentDropDown = UIDROPDOWNMENU_OPEN_MENU;

	local inParty = 0;
	if ( (GetNumPartyMembers() > 0) or (GetNumRaidMembers() > 0) ) then
		inParty = 1;
	end

	local isCaptain
	if (PVPUI_ArenaTeamDetails.team and IsArenaTeamCaptain(PVPUI_ArenaTeamDetails.team) ) then
		isCaptain = 1;
	end

	local isLeader = 0;
	if ( IsPartyLeader() ) then
		isLeader = 1;
	end
	local isAssistant = 0;
	if ( IsRaidOfficer() ) then
		isAssistant = 1;
	end

	-- dynamic difficulty
	local allowedRaidDifficultyChange;
	local _, instanceType, _, _, _, _, isDynamicInstance = GetInstanceInfo();
	if ( isDynamicInstance and CanChangePlayerDifficulty() ) then
		_, allowedRaidDifficultyChange = _GetPlayerDifficultyMenuOptions();
	end

	local count, tempCount;
	local inInstance, instanceType = IsInInstance();
	for level, dropdownFrame in pairs(OPEN_DROPDOWNMENUS) do
		if ( dropdownFrame ) then
			count = 0;
			for index, value in ipairs(UnitPopupMenus[dropdownFrame.which]) do
				if ( UnitPopupShown[level][index] == 1 ) then
					count = count + 1;
					local enable = UnitPopup_IsEnabled(dropdownFrame, UnitPopupButtons[value]);
					local notClickable = false;

					if ( value == "TRADE" ) then
						if ( UnitIsDeadOrGhost("player") or (not HasFullControl()) or UnitIsDeadOrGhost(dropdownFrame.unit) ) then
							enable = 0;
						end
					elseif ( value == "LEAVE" ) then
						if ( inParty == 0 ) then
							enable = 0;
						end
					elseif ( value == "INVITE" ) then
						if ( (inParty == 1 and (isLeader == 0 and isAssistant == 0)) or currentDropDown.server ) then
							enable = 0;
						end
					elseif ( value == "UNINVITE" ) then
						if ( inParty == 0 or (isLeader == 0) or HasLFGRestrictions() ) then
							enable = 0;
						end
					elseif ( value == "BN_INVITE" or value == "BN_TARGET" ) then
						if ( not currentDropDown.presenceID or not CanCooperateWithToon(currentDropDown.presenceID) ) then
							enable = 0;
						end
					elseif ( value == "VOTE_TO_KICK" ) then
						if ( inParty == 0 or not HasLFGRestrictions() ) then
							enable = 0;
						end
					elseif ( value == "PROMOTE" or value == "PROMOTE_GUIDE" ) then
						if ( inParty == 0 or isLeader == 0 or ( dropdownFrame.unit and not UnitIsConnected(dropdownFrame.unit) ) ) then
							enable = 0;
						end
					elseif ( value == "WHISPER" ) then
						if ( dropdownFrame.unit and not UnitIsConnected(dropdownFrame.unit) ) then
							enable = 0;
						end
					elseif ( value == "MUTE" ) then
						if ( dropdownFrame.unit and not UnitIsConnected(dropdownFrame.unit) ) then
							enable = 0;
						end
					elseif ( value == "INSPECT" ) then
						if ( UnitIsDeadOrGhost("player") ) then
							enable = 0;
						end
					elseif ( value == "FOLLOW" ) then
						if ( UnitIsDead("player") ) then
							enable = 0;
						end
					elseif ( value == "DUEL" ) then
						if ( UnitIsDeadOrGhost("player") or (not HasFullControl()) or UnitIsDeadOrGhost(dropdownFrame.unit) ) then
							enable = 0;
						end
					elseif ( value == "LOOT_METHOD" ) then
						if ( isLeader == 0 or HasLFGRestrictions() ) then
							enable = 0;
						end
					elseif ( value == "LOOT_PROMOTE" ) then
						local lootMethod;
						local partyMaster, raidMaster;
						lootMethod, partyMaster, raidMaster = GetLootMethod();
						if ( (inParty == 0) or (isLeader == 0) or (lootMethod ~= "master") ) then
							enable = 0;
						else
							local masterName = 0;
							if ( partyMaster and (partyMaster == 0) ) then
								masterName = "player";
							elseif ( partyMaster ) then
								masterName = "party"..partyMaster;
							elseif ( raidMaster ) then
								masterName = "raid"..raidMaster;
							end
							if ( dropdownFrame.unit and UnitIsUnit(dropdownFrame.unit, masterName) ) then
								enable = 0;
							end
						end
					elseif ( value == "DUNGEON_DIFFICULTY" and inInstance ) then
						enable = 0;
					elseif ( ( strsub(value, 1, 18) == "DUNGEON_DIFFICULTY" ) and ( strlen(value) > 18 ) ) then
						if ( ( inParty == 1 and isLeader == 0 ) or inInstance or HasLFGRestrictions() ) then
							enable = 0;
						end
					elseif ( value == "RAID_DIFFICULTY" and inInstance and not allowedRaidDifficultyChange ) then
						enable = 0;
					elseif ( ( strsub(value, 1, 15) == "RAID_DIFFICULTY" ) and ( strlen(value) > 15 ) ) then
						if ( ( inParty == 1 and isLeader == 0 ) or inInstance ) then
							enable = 0;
						end
						if ( allowedRaidDifficultyChange and allowedRaidDifficultyChange == value ) then
							enable = 1;
						end
					elseif ( value == "RESET_INSTANCES" ) then
						if ( ( inParty == 1 and isLeader == 0 ) or inInstance or HasLFGRestrictions() ) then
							enable = 0;
						end
					elseif ( value == "RAF_SUMMON" ) then
						if( not CanSummonFriend(dropdownFrame.unit) ) then
							enable = 0;
						end
					elseif ( value == "RAF_GRANT_LEVEL" ) then
						if( not CanGrantLevel(dropdownFrame.unit) ) then
							enable = 0;
						end
					elseif value == "PVP_DISABLE" then
						local unitLevel = UnitLevel("player")
						local realmID = C_Service:GetRealmID()
						if unitLevel == 80 and (realmID and realmID == E_REALM_ID.NELTHARION) then
							enable = 0
						end
					elseif value == "GM_INFO_ACCOUNT" or value == "GM_INFO_IP" or value == "GM_INFO_CONFIG" then
						if currentDropDown.name and GMClientMixIn.accountDataByName[currentDropDown.name] then
							enable = 1
						else
							enable = 0
						end
					end

					local diff = (level > 1) and 0 or 1;

					if ( UnitPopupButtons[value].isSubsectionTitle ) then
						--If the button is a title then it has a separator above it that is not in UnitPopupButtons.
						--So 1 extra is added to each count because UnitPopupButtons does not count the separators and
						--the DropDown does.
						tempCount = count + diff;
						count = count + 1;
					else
						tempCount = count + diff;
					end

					if ( enable == 1 ) then
						UIDropDownMenu_EnableButton(level, tempCount);
					else
						if (notClickable == 1) then
							UIDropDownMenu_SetButtonNotClickable(level, tempCount);
						else
							UIDropDownMenu_SetButtonClickable(level, tempCount);
						end
						UIDropDownMenu_DisableButton(level, tempCount);
					end
				end
			end
		end
	end
end

function UnitPopup_OnClick (self)
	local dropdownFrame = UIDROPDOWNMENU_INIT_MENU;
	local button = self.value;
	local unit = dropdownFrame.unit;
	local name = dropdownFrame.name;
	local server = dropdownFrame.server;
	local fullname = name;

	if ( server and (not unit or not UnitIsSameServer("player", unit)) ) then
		fullname = name.."-"..server;
	end

	local inParty = 0;
	if ( (GetNumPartyMembers() > 0) or (GetNumRaidMembers() > 0) ) then
		inParty = 1;
	end

	local isLeader = 0;
	if ( IsPartyLeader() ) then
		isLeader = 1;
	end
	local isAssistant = 0;
	if ( IsRaidOfficer() ) then
		isAssistant = 1;
	end

	if ( button == "TRADE" ) then
		InitiateTrade(unit);
	elseif ( button == "WHISPER" ) then
		ChatFrame_SendTell(fullname, dropdownFrame.chatFrame);
	elseif ( button == "CREATE_CONVERSATION_WITH" ) then
		BNConversationInvite_NewConversation(dropdownFrame.presenceID)
	elseif ( button == "INSPECT" ) then
		InspectUnit(unit);
	elseif ( button == "ACHIEVEMENTS" ) then
		InspectAchievements(unit);
	elseif ( button == "TARGET" ) then
		TargetUnit(fullname, 1);
	elseif ( button == "IGNORE" ) then
		AddOrDelIgnore(fullname);
	elseif ( button == "REPORT_SPAM" ) then
		local dialog = StaticPopup_Show("CONFIRM_REPORT_SPAM_CHAT", name);
		if ( dialog ) then
			dialog.data = dropdownFrame.lineID;
		end
	elseif ( button == "POP_OUT_CHAT" ) then
		FCF_OpenTemporaryWindow(dropdownFrame.chatType, dropdownFrame.chatTarget, dropdownFrame.chatFrame, true);
	elseif ( button == "DUEL" ) then
		StartDuel(unit, 1);
	elseif ( button == "INVITE" ) then
		InviteUnit(fullname);
	elseif ( button == "UNINVITE" or button == "VOTE_TO_KICK" ) then
		UninviteUnit(fullname);
	elseif ( button == "REMOVE_FRIEND" ) then
		RemoveFriend(name);
	elseif ( button == "SET_NOTE" ) then
		FriendsFrame.NotesID = name;
		StaticPopup_Show("SET_FRIENDNOTE", name);
		PlaySound("igCharacterInfoClose");
	elseif ( button == "BN_REMOVE_FRIEND" ) then
		local presenceID, givenName, surname = BNGetFriendInfoByID(dropdownFrame.presenceID);
		local dialog = StaticPopup_Show("CONFIRM_REMOVE_FRIEND", string.format(BATTLENET_NAME_FORMAT, givenName, surname));
		if ( dialog ) then
			dialog.data = presenceID;
		end
	elseif ( button == "BN_SET_NOTE" ) then
		FriendsFrame.NotesID = dropdownFrame.presenceID;
		StaticPopup_Show("SET_BNFRIENDNOTE", name);
		PlaySound("igCharacterInfoClose");
	elseif ( button == "BN_VIEW_FRIENDS" ) then
		FriendsFriendsFrame_Show(dropdownFrame.presenceID);
	elseif ( button == "BN_INVITE" ) then
		local presenceID, givenName, surname, toonName = BNGetFriendInfoByID(dropdownFrame.presenceID);
		if ( toonName ) then
			InviteUnit(toonName);
		end
	elseif ( button == "BN_TARGET" ) then
		local presenceID, givenName, surname, toonName = BNGetFriendInfoByID(dropdownFrame.presenceID);
		if ( toonName ) then
			TargetUnit(toonName, 1);
		end
	elseif ( button == "BLOCK_COMMUNICATION" ) then
		BNSetToonBlocked(dropdownFrame.presenceID, true);
	elseif ( button == "PROMOTE" or button == "PROMOTE_GUIDE" ) then
		PromoteToLeader(unit, 1);
	elseif ( button == "GUILD_PROMOTE" ) then
		local dialog = StaticPopup_Show("CONFIRM_GUILD_PROMOTE", name);
		dialog.data = name;
	elseif ( button == "GUILD_LEAVE" ) then
		StaticPopup_Show("CONFIRM_GUILD_LEAVE", GetGuildInfo("player"));
	elseif ( button == "TEAM_PROMOTE" ) then
		local dialog = StaticPopup_Show("CONFIRM_TEAM_PROMOTE", name, GetArenaTeam(PVPUI_ArenaTeamDetails.team));
		if ( dialog ) then
			dialog.data = PVPUI_ArenaTeamDetails.team;
			dialog.data2 = name;
		end
	elseif ( button == "TEAM_KICK" ) then
		local dialog = StaticPopup_Show("CONFIRM_TEAM_KICK", name, GetArenaTeam(PVPUI_ArenaTeamDetails.team) );
		if ( dialog ) then
			dialog.data = PVPUI_ArenaTeamDetails.team;
			dialog.data2 = name;
		end
	elseif ( button == "TEAM_LEAVE" ) then
		local dialog = StaticPopup_Show("CONFIRM_TEAM_LEAVE", GetArenaTeam(PVPUI_ArenaTeamDetails.team) );
		if ( dialog ) then
			dialog.data = PVPUI_ArenaTeamDetails.team;
		end
	elseif ( button == "LEAVE" ) then
		LeaveParty();
	elseif ( button == "PET_DISMISS" ) then
		PetDismiss();
	elseif ( button == "PET_ABANDON" ) then
		StaticPopup_Show("ABANDON_PET");
	elseif ( button == "PET_PAPERDOLL" ) then
		if ( PetPaperDollFrame.selectedTab == 1 or (not PetPaperDollFrame:IsVisible()) ) then	--If the frame is already shown, but turned to a different tab (mounts or companions), just change tabs
			ToggleCharacter("PetPaperDollFrame");
		end
	elseif ( button == "PET_RENAME" ) then
		StaticPopup_Show("RENAME_PET");
	elseif ( button == "FREE_FOR_ALL" ) then
		SetLootMethod("freeforall");
		UIDropDownMenu_SetButtonText(self:GetParent().parentLevel, self:GetParent().parentID, UnitPopupButtons[button].text);
		UIDropDownMenu_Refresh(dropdownFrame, nil, 1);
	elseif ( button == "ROUND_ROBIN" ) then
		SetLootMethod("roundrobin");
		UIDropDownMenu_SetButtonText(self:GetParent().parentLevel, self:GetParent().parentID, UnitPopupButtons[button].text);
		UIDropDownMenu_Refresh(dropdownFrame, nil, 1);
	elseif ( button == "MASTER_LOOTER" ) then
		SetLootMethod("master", fullname);
		UIDropDownMenu_SetButtonText(self:GetParent().parentLevel, self:GetParent().parentID, UnitPopupButtons[button].text);
		UIDropDownMenu_Refresh(dropdownFrame, nil, 1);
	elseif ( button == "GROUP_LOOT" ) then
		SetLootMethod("group");
		UIDropDownMenu_SetButtonText(self:GetParent().parentLevel, self:GetParent().parentID, UnitPopupButtons[button].text);
		UIDropDownMenu_Refresh(dropdownFrame, nil, 1);
	elseif ( button == "NEED_BEFORE_GREED" ) then
		SetLootMethod("needbeforegreed");
		UIDropDownMenu_SetButtonText(self:GetParent().parentLevel, self:GetParent().parentID, UnitPopupButtons[button].text);
		UIDropDownMenu_Refresh(dropdownFrame, nil, 1);
	elseif ( button == "OPT_OUT_LOOT_ENABLE" ) then
		SetOptOutOfLoot(1);
		CloseDropDownMenus()
	elseif ( button == "OPT_OUT_LOOT_DISABLE" ) then
		SetOptOutOfLoot(nil);
		CloseDropDownMenus();
	elseif ( strsub(button, 1, 18) == "DUNGEON_DIFFICULTY" and (strlen(button) > 18) ) then
		local dungeonDifficulty = tonumber( strsub(button,19,19) );
		SetDungeonDifficulty(dungeonDifficulty);
	elseif ( strsub(button, 1, 15) == "RAID_DIFFICULTY" and (strlen(button) > 15) ) then
		local raidDifficulty = tonumber( strsub(button,16,16) );
		SetRaidDifficulty(raidDifficulty);
	elseif ( button == "LOOT_PROMOTE" ) then
		SetLootMethod("master", fullname, 1);
	elseif ( button == "PVP_ENABLE" ) then
		SetPVP(1);
	elseif ( button == "PVP_DISABLE" ) then
		SetPVP(nil);
	elseif ( button == "RESET_INSTANCES" ) then
		StaticPopup_Show("CONFIRM_RESET_INSTANCES");
	elseif ( button == "FOLLOW" ) then
		FollowUnit(fullname, 1);
	elseif ( button == "MUTE" ) then
		AddMute(fullname);
	elseif ( button == "UNMUTE" ) then
		DelMute(fullname);
	elseif ( button == "RAID_LEADER" ) then
		PromoteToLeader(fullname, 1)
	elseif ( button == "RAID_PROMOTE" ) then
		PromoteToAssistant(fullname, 1);
	elseif ( button == "RAID_DEMOTE" ) then
		if ( isLeader == 1 and UnitIsRaidOfficer(unit) ) then
			DemoteAssistant(fullname, 1);
		end
		if ( GetPartyAssignment("MAINTANK", fullname, 1) ) then
			ClearPartyAssignment("MAINTANK", fullname, 1);
		elseif ( GetPartyAssignment("MAINASSIST", fullname, 1) ) then
			ClearPartyAssignment("MAINASSIST", fullname, 1);
		end
	elseif ( button == "RAID_MAINTANK" ) then
		SetPartyAssignment("MAINTANK", fullname, 1);
	elseif ( button == "RAID_MAINASSIST" ) then
		SetPartyAssignment("MAINASSIST", fullname, 1);
	elseif ( button == "RAID_REMOVE" ) then
		UninviteUnit(fullname);
	elseif ( button == "PVP_REPORT_AFK" ) then
		ReportPlayerIsPVPAFK(fullname);
	elseif ( button == "RAF_SUMMON" ) then
		SummonFriend(unit)
	elseif ( button == "RAF_GRANT_LEVEL" ) then
		GrantLevel(unit);
	elseif ( button == "ITEM_QUALITY2_DESC" or button == "ITEM_QUALITY3_DESC" or button == "ITEM_QUALITY4_DESC" ) then
		local id = self:GetID()+1;
		SetLootThreshold(id);
		UIDropDownMenu_SetButtonText(self:GetParent().parentLevel, self:GetParent().parentID, UnitPopupButtons[button].text);
	elseif ( strsub(button, 1, 12) == "RAID_TARGET_" and button ~= "RAID_TARGET_ICON" ) then
		local raidTargetIndex = strsub(button, 13);
		if ( raidTargetIndex == "NONE" ) then
			raidTargetIndex = 0;
		end
		SetRaidTargetIcon(unit, tonumber(raidTargetIndex));
	elseif ( button == "CHAT_PROMOTE" ) then
		ChannelModerator(dropdownFrame.channelName, fullname);
	elseif ( button == "CHAT_DEMOTE" ) then
		ChannelUnmoderator(dropdownFrame.channelName, fullname);
	elseif ( button == "CHAT_OWNER" ) then
		SetChannelOwner(dropdownFrame.channelName, fullname);
	elseif ( button == "CHAT_SILENCE" or button == "PARTY_SILENCE" or button == "RAID_SILENCE" or button == "BATTLEGROUND_SILENCE" ) then
		ChannelSilenceVoice(dropdownFrame.channelName, fullname);
	elseif ( button == "CHAT_UNSILENCE" or button == "PARTY_UNSILENCE" or button == "RAID_UNSILENCE" or button == "BATTLEGROUND_UNSILENCE" ) then
		ChannelUnSilenceVoice(dropdownFrame.channelName, fullname);
	elseif ( button == "CHAT_KICK" ) then
		ChannelKick(dropdownFrame.channelName, fullname);
	elseif ( button == "CHAT_BAN" ) then
		ChannelBan(dropdownFrame.channelName, fullname);
	elseif ( button == "VEHICLE_LEAVE" ) then
		VehicleExit();
	elseif ( button == "SET_FOCUS" ) then
		if unit == "target" then
			-- TODO: Решить проблему с хаком. В данный момент это необходимо для того чтоб аддоны не вызывали Taint, если вызывают это меню с под себя.
			SecureCallFocusUnit:Show()
		else
			FocusUnit(unit)
		end
	elseif ( button == "CLEAR_FOCUS" ) then
		ClearFocus(unit);
	elseif ( button == "LOCK_FOCUS_FRAME" ) then
		FocusFrame_SetLock(true);
	elseif ( button == "UNLOCK_FOCUS_FRAME" ) then
		FocusFrame_SetLock(false);
	elseif ( strsub(button, 1, 10) == "BN_REPORT_" ) then
		BNet_InitiateReport(dropdownFrame.presenceID, strsub(button, 11));
	elseif ( button == "GM_INFO_PLAYER" ) then
		GMClientMixIn:RequestPlayerInfoByName( name, nil, true)
	elseif ( button == "GM_INFO_ACCOUNT" ) then
		SendChatMessage(".lo pl acc "..(GMClientMixIn.accountDataByName[dropdownFrame.name] and GMClientMixIn.accountDataByName[dropdownFrame.name].accountLogin or ""), "WHISPER", nil, UnitName("player"))
	elseif ( button == "GM_INFO_IP" ) then
		SendChatMessage(".lo pl ip "..(GMClientMixIn.accountDataByName[dropdownFrame.name] and GMClientMixIn.accountDataByName[dropdownFrame.name].lastIP or ""), "WHISPER", nil, UnitName("player"))
	elseif ( button == "GM_INFO_CONFIG" ) then
		SendChatMessage(".lo pl config "..(GMClientMixIn.accountDataByName[dropdownFrame.name] and GMClientMixIn.accountDataByName[dropdownFrame.name].config or ""), "WHISPER", nil, UnitName("player"))
	elseif ( button == "GM_INTERACT_APPEAR" ) then
		SendChatMessage(".app "..name, "WHISPER", nil, UnitName("player"))
	elseif ( button == "GM_INTERACT_SUMMON" ) then
		SendChatMessage(".summ "..name, "WHISPER", nil, UnitName("player"))
	elseif ( button == "GM_INTERACT_MUTE" ) then
		GMClientMixIn:ShowMuteWindow( name )
	elseif ( button == "GM_INTERACT_PLAYER_BAN" ) then
		GMClient_BanFrame.playerName = name

		if GMClient_BanFrame:IsShown() then
			GMClient_BanFrame.TitleText:SetText("Ban "..name)
		else
			GMClient_BanFrame:Show()
		end
	elseif button == "HEADHUNTING_SET_REWARD" then
		local GUID = UnitGUID(unit)

		if GUID then
			HeadHuntingSetRewardExternalFrame:OpenAndSearch(name, GUID)
		end
	elseif button == "HEADHUNTING_ENABLE" then
		SendServerMessage("ACMSG_HEADHUNTING_ZONE_NOTIFICATIONS", 1)
	elseif button == "HEADHUNTING_DISABLE" then
		SendServerMessage("ACMSG_HEADHUNTING_ZONE_NOTIFICATIONS", 0)
	elseif button == "REFUSE_XP_RATE" then
		StaticPopup_Show("ENABLE_X1_RATE");
	elseif button == "WAR_MODE" then
		StaticPopup_Show("WARMODE_TOGGLE");
	end

	PlaySound("UChatScrollButton");
end
