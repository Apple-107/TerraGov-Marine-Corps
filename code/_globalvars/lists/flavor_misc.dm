//Preferences stuff
GLOBAL_LIST_INIT(ethnicities_list, init_ethnicities())

/// Ethnicity - Initialise all /datum/ethnicity into a list indexed by ethnicity name
/proc/init_ethnicities()
	. = list()
	for(var/path in subtypesof(/datum/ethnicity))
		var/datum/ethnicity/E = new path()
		.[E.name] = E

	//Hairstyles
GLOBAL_LIST_EMPTY(hair_styles_list)			//stores /datum/sprite_accessory/hair indexed by name
GLOBAL_LIST_EMPTY(hair_gradients_list)			//stores /datum/sprite_accessory/hair_gradient indexed by name
GLOBAL_LIST_EMPTY(facial_hair_styles_list)	//stores /datum/sprite_accessory/facial_hair indexed by name
	//Underwear
GLOBAL_LIST_EMPTY(underwear_list)		//stores /datum/sprite_accessory/underwear indexed by name
GLOBAL_LIST_INIT(underwear_m, list("Briefs"))
GLOBAL_LIST_INIT(underwear_f, list("Sports bra and briefs", "Bra and brief", "Bra and panties"))
	//Undershirts
GLOBAL_LIST_INIT(undershirt_m, list("None","Black undershirt", "White undershirt", "Beige undershirt", "Fitness shirt", "Beige undershirt(sleeveless)"))
GLOBAL_LIST_INIT(undershirt_f, list("None","Black undershirt", "White undershirt", "Beige undershirt", "Beige undershirt(sleeveless)"))
	//Mutant Human bits
GLOBAL_LIST_EMPTY(moth_wings_list)
GLOBAL_LIST_EMPTY(tails_list_monkey)


GLOBAL_LIST_INIT(ghost_forms_with_directions_list, list("ghost")) //stores the ghost forms that support directional sprites
GLOBAL_LIST_INIT(ghost_forms_with_accessories_list, list("ghost")) //stores the ghost forms that support hair and other such things

GLOBAL_LIST_INIT(ai_core_display_screens, list(
	":thinking:",
	"Alien",
	"Angel",
	"Banned",
	"Bliss",
	"Blue",
	"Clown",
	"Database",
	"Dorf",
	"Firewall",
	"Fuzzy",
	"Gentoo",
	"Glitchman",
	"Gondola",
	"Goon",
	"Hades",
	"Heartline",
	"Helios",
	"House",
	"Inverted",
	"Matrix",
	"Monochrome",
	"Murica",
	"Nanotrasen",
	"Not Malf",
	"President",
	"Random",
	"Rainbow",
	"Red",
	"Red October",
	"Static",
	"Syndicat Meow",
	"Text",
	"Too Deep",
	"Triumvirate",
	"Triumvirate-M",
	"Weird",
	"shodan",
	"shodan_chill",
	"shodan_data",
	"shodan_pulse"))

/proc/resolve_ai_icon(input)
	if(!input || !(input in GLOB.ai_core_display_screens))
		return "ai"
	else
		if(input == "Random")
			input = pick(GLOB.ai_core_display_screens - "Random")
		return "ai-[lowertext(input)]"

	//Backpacks
GLOBAL_LIST_INIT(backpacklist, list("Nothing", "Backpack", "Satchel"))


GLOBAL_LIST_INIT(genders, list(MALE, FEMALE, NEUTER))

GLOBAL_LIST_INIT(playable_icons, list(
	"boiler",
	"bull",
	"captain",
	"carrier",
	"chief_medical",
	"cl",
	"crusher",
	"cse",
	"defender",
	"defiler",
	"drone",
	"fieldcommander",
	"gorger",
	"hivelord",
	"hivemind",
	"hunter",
	"larva",
	"mech_pilot",
	"medical",
	"pilot",
	"transportofficer",
	"transport_crew",
	"assault_crew",
	"praetorian",
	"private",
	"puppeteer",
	"ravager",
	"requisition",
	"researcher",
	"runner",
	"sentinel",
	"spiderling",
	"spitter",
	"st",
	"staffofficer",
	"synth",
	"warlock",
	"warrior",
	"widow",
	"wraith",
	"xenoking",
	"xenominion",
	"xenoqueen",
	"xenoshrike",
	"behemoth",
	"pyrogen"
))

//like above but autogenerated when a new squad is created
GLOBAL_LIST_INIT(playable_squad_icons, list(
	"private",
	"leader",
	"engi",
	"medic",
	"smartgunner",
))

GLOBAL_LIST_INIT(campaign_asset_icon_types, list(
	"b18",
	"gorgon",
	"medkit",
	"materials",
	"heavy_mech",
	"medium_mech",
	"light_mech",
	"militia",
	"freelancers",
	"icc",
	"pmc",
	"combat_robots",
	"vsd",
	"logistics_buff",
	"logistics_malus",
	"bluespace_logistics",
	"bluespace_logistics_malus",
	"tele_uses",
	"tele_active",
	"tele_broken",
	"droppod_refresh",
	"droppod_active",
	"droppod_broken",
	"cas",
	"mortar",
	"cas_disabled",
	"mortar_disabled",
	"droppod_disabled",
	"tele_disabled",
	"reserve_force",
	"tyr",
	"lorica",
	"riot_shield",
	"xeno",
	"grenade",
	"shotgun",
	"scout",
	"ballistic",
	"lasergun",
	"volkite",
	"smartgun",
	"at_mine",
	"binoculars",
	"respawn",
	"support_1",
	"support_2",
	"support_3",
))

GLOBAL_LIST_INIT(campaign_mission_icon_types, list(
	"combat_patrol",
	"mortar_raid",
	"cas_raid",
	"mech_war",
	"teleporter_raid",
	"supply_depot",
	"raiding_base",
	"comm_uplink",
	"asat_capture",
	"phoron_raid",
	"nt_rescue",
	"speahead_som",
	"spearhead_tgmc",
	"final_som",
	"final_tgmc",
))

GLOBAL_LIST_INIT(campaign_perk_icon_types, list(
	"health_1",
	"soft_footed",
	"health_2",
	"cqc_1",
	"cqc_2",
	"melee_1",
	"melee_2",
	"pistols",
	"shotguns",
	"rifles",
	"smgs",
	"heavy",
	"construction",
	"medical",
	"stamina_1",
	"stamina_2",
	"leadership",
	"smartguns",
	"firearms",
	"overclock",
	"sword",
	"axe",
))

GLOBAL_LIST_INIT(campaign_loadout_item_icon_types, list(
	"default",
	"empty",
	"lasergun",
	"volkite",
	"smartgun",
	"light_armour_shield",
	"medium_armour_shield",
	"heavy_armour_shield",
	"light_armour",
	"medium_armour",
	"heavy_armour",
	"gorgon",
	"medkit",
	"materials",
	"tyr",
	"lorica",
	"riot_shield",
	"grenade",
	"scout",
	"helmet",
	"boots",
	"machete",
	"axe",
	"construction",
	"tx55",
	"m25",
	"m240",
	"m1911c",
	"rt3",
	"vp70",
	"v11",
	"t19",
	"t90",
	"sg29",
	"t18",
	"t12",
	"alf51b",
	"tx11",
	"sshotgun",
	"tx15",
	"t160",
	"t60",
	"v34",
	"ak47",
	"v41",
	"rpg",
	"t35",
	"m41a",
	"tx8",
	"tx54",
	"vx32",
	"v21",
	"sp13",
	"tec",
	"tem",
	"vx12",
	"minigun_sg",
	"v31",
	"ter",
	"t64",
	"vx33",
	"v51",
	"v62",
	"t21",
))

GLOBAL_LIST_INIT(minimap_icons, init_minimap_icons())

///Populates minimap_icons
/proc/init_minimap_icons()
	. = list()
	for(var/icon_state in GLOB.playable_icons)
		.[icon_state] = icon2base64(icon('icons/UI_icons/map_blips.dmi', icon_state, frame = 1))

GLOBAL_LIST_INIT(campaign_asset_icons, init_campaign_asset_icons())

///Populates campaign_asset_icons
/proc/init_campaign_asset_icons()
	. = list()
	var/list/colours = list("green", "orange", "grey", "red", "blue")
	for(var/icon_state in GLOB.campaign_asset_icon_types)
		for(var/colour in colours)
			. += "[icon_state]_[colour]"

GLOBAL_LIST_INIT(campaign_mission_icons, init_campaign_mission_icons())

///Populates campaign_mission_icons
/proc/init_campaign_mission_icons()
	. = list()
	var/list/colours = list("green", "yellow", "grey", "red", "blue")
	for(var/icon_state in GLOB.campaign_mission_icon_types)
		for(var/colour in colours)
			. += "[icon_state]_[colour]"

GLOBAL_LIST_INIT(campaign_perk_icons, init_campaign_perk_icons())

///Populates campaign_perk_icons
/proc/init_campaign_perk_icons()
	. = list()
	var/list/colours = list("green", "orange", "grey", "red", "blue")
	for(var/icon_state in GLOB.campaign_perk_icon_types)
		for(var/colour in colours)
			. += "[icon_state]_[colour]"

GLOBAL_LIST_INIT(campaign_loadout_item_icons, init_campaign_loadout_item_icons())

///Populates campaign_loadout_item_icons
/proc/init_campaign_loadout_item_icons()
	. = list()
	var/list/colours = list("green", "orange", "grey", "red", "blue")
	for(var/icon_state in GLOB.campaign_loadout_item_icon_types)
		for(var/colour in colours)
			. += "[icon_state]_[colour]"
