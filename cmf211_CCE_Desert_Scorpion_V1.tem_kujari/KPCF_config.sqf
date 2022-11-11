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
KPCF_generateLists = true;

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
    //Germany
    "LIB_MG34","LIB_K98_Late","LIB_MP40","LIB_P08"
    ,"LIB_RPzB"
    //AMERIKEE
    ,"LIB_M1_Garand","LIB_M1918A2_BAR","LIB_M1928A1_Thompson","LIB_Colt_M1911"
    ,"LIB_M1A1_Bazooka"
    //Uni 
    ,"LIB_FLARE_PISTOL"
];

// Defines the available grenades
KPCF_grenades = [
    "LIB_US_Mk_2","LIB_Shg24","Smokeshell"
];

// Defines the available explosives
KPCF_explosives = [
    "DemoCharge_Remote_Mag"
	,"SatchelCharge_Remote_Mag"
    ,"ace_cswCompatCUP_105mm_m119_he"
    ,"ace_cswCompatCUP_105mm_m119_smoke"
    ,"ace_cswCompatCUP_105mm_m119_illum"
];

// Defines the available items
KPCF_items = [
	"ToolKit","ACE_MapTools","ACE_Flashlight_XL50","ACE_artilleryTable"
	,"LIB_Binocular_GER","LIB_Binocular_US"
	,"ACE_packingBandage","ACE_elasticBandage","ACE_epinephrine","ACE_salineIV_500","ACE_morphine","ACE_tourniquet","ACE_Splint","ACE_bodyBag","ACE_bloodIV","ACE_surgicalKit","ACE_bloodIV_500","ACE_quikclot"
];

// Defines the available backpacks
KPCF_backpacks = [
    "B_Battle_Belt_XL_F"
];
