/*
    Killah Potatoes Cratefiller v1.1.0

    Author: Dubjunk - https://github.com/KillahPotatoes
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    Configuration file for various variables of the KP cratefiller.
*/

// The Base object is for the player interaction, so at these object you can open the dialog
KPCF_cratefillerBase = [
    "Land_Cargo20_orange_F"
];

// The Spawn object is the point where crates will spawn and acts the center for the KPCF_spawnRadius
KPCF_cratefillerSpawn = "PARACHUTE_TARGET";

// This variable defines if the player will be able to spawn and delete crates
KPCF_canSpawnAndDelete = false;

// If set to "true" the item lists will be generated from the config
KPCF_generateLists = false;

// These variable defines the range where inventories can be edited
// Example: With an setting of 10 all objects in a radius of 10m from the center of the spawn object can be edited
KPCF_spawnRadius = 10;

// Defines the distance for the interaction (addAction / ACE)
KPCF_interactRadius = 5;

// Defines the available crates
KPCF_crates = [
    "ACE_Box_Misc",
	"B_supplyCrate_F"
];


// Defines the blacklisted items
// Blacklisted items are used on every category with activated generatedLists and everytime on the magazines and attachments
// So this variable will ensure the block of unwanted items
KPCF_blacklistedItems = [
    ""
];

// ----- This Variable will only be used with activated generatedLists -----

// Defines the whitelisted items
// Whitelisted items will be added after the item detection to ensure the availability
KPCF_whitelistedItems = [
    ""
];

// ----- These Variables will be replaced with activated generatedLists -----

// Defines the available weapons
KPCF_weapons = [
    "fow_w_mp40","fow_w_g43","fow_w_mg42","CSA38_kar98k","LIB_P08","LIB_RPzB","fow_w_pzfaust_60","LIB_LeeEnfield_No4","CSA38_stenMkIII","CSA38_BRENMKII","CSA38_stenMkVI","LIB_Webley_mk6","LIB_PIAT"
];

// Defines the available grenades
KPCF_grenades = [
    "LIB_F1","LIB_US_M18","LIB_Shg24","LIB_NB39"
];

// Defines the available explosives
KPCF_explosives = [
    "LIB_US_TNT_4pound_mag","ACE_LIB_LadungPM"
];

// Defines the available items
KPCF_items = [
    "ToolKit"
	,"ACE_MapTools","ACE_Flashlight_XL50","Binocular","ACE_ArtilleryTable"
	,"ACE_elasticBandage","ACE_packingBandage","ACE_tourniquet","ACE_epinephrine","ACE_salineIV_500","ACE_morphine","ACE_Splint","ACE_bloodIV_500","LIB_1Rnd_G_MillsBomb"
    ,"JST_105_he_mag","JST_105_smoke_mag","JST_105_illum_mag"
];

// Defines the available backpacks
KPCF_backpacks = [
    "B_Battle_Belt_XL_F"
];
