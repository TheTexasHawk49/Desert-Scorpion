// Author: You
// Description: paste your loadout config from the arseanal exporter
#include "\x\cmf\addons\framework\loadouts\undef.hpp" // Reset defines

// ------------------- PASTE BELOW THIS LINE
// Camo set
#define CAMO_UNIFORM "U_LIB_DAK_Soldier_2","U_LIB_DAK_Soldier"
#define CAMO_VEST "V_LIB_GER_VestKar98"
#define CAMO_BACKPACK "B_LIB_GER_Backpack"
#define CAMO_HEADGEAR "H_LIB_DAK_Helmet_net","H_LIB_DAK_Helmet_ns","H_LIB_DAK_Helmet_net_2","H_LIB_DAK_Helmet_ns_2","H_LIB_DAK_Helmet_2"
// Rifle
#define RIFLE "CSA38_kar98k"
#define RIFLE_MAG "CSA38_7_92_5xMauser:10"
#define RIFLE_ATTACHMENTS ""
#define AR_ATTACHMENTS RIFLE_ATTACHMENTS ""
#define ALT_OPTICS ""
// GL Rifle
#define GLRIFLE "fow_w_mp40"
#define GLRIFLE_MAG "fow_32Rnd_9x19_mp40:10"
// WARNING - Unknown GL Muzzle [fow_w_mp40->no2ndMuzzle]
#define GLRIFLE_MAG_FLARE ""
#define GLRIFLE_MAG_SMOKE ""
#define GLRIFLE_MAG_HE ""
// Carbine
#define CARBINE "LIB_G43"
#define CARBINE_MAG "LIB_10Rnd_792x57:5"
// AR
#define AR "fow_w_mg34"
#define AR_MAG "fow_50Rnd_792x57:5"
// AT
#define AT "fow_w_pzfaust_60"
#define AT_MAG "fow_1Rnd_pzfaust_60:1"
// MMG
#define MMG "fow_w_mg42"
#define MMG_MAG "fow_50Rnd_792x57:2"
#define MMG_ATT ""
// MAT
#define MAT "LIB_RPzB"
#define MAT_MAG "LIB_1Rnd_RPzB:1"
#define MAT_MAG2 "LIB_1Rnd_RPzB:1"
#define MAT_OPTIC ""
// Facewear
#define GOG 


// -------------------- PASTE ABOVE THIS LINE
//HMG
#define HMG ""
#define HMG_TRI_HI ""
#define HMG_TRI_LO ""
#define HMG_MAG ""
//HAT
#define HAT ""
#define HAT_TRI_HI ""
#define HAT_TRI_LO ""
#define HAT_MAG ""
// SAM
#define SAM ""
#define SAM_MAG ""
#define SAM_MAG2 ""
// Sniper Rifle
#define SNIPER "CSA38_kar98k2"
#define SNIPER_MAG "CSA38_7_92_5xMauser:10"
#define SNIPER_ATTACHMENTS ""
// Spotter Rifle
#define SPOTTER ""
#define SPOTTER_MAG RIFLE_MAG
#define SPOTTER_ATTACHMENTS ""
// SMG
#define SMG CARBINE ""
#define SMG_MAG CARBINE_MAG ""
// Pistol
#define PISTOL "LIB_P08"
#define PISTOL_MAG "LIB_8Rnd_9x19_P08:3"
// Grenades
#define LEADER_GRENADES BASE_FRAG,LEADER_SMOKES,SIDE_CHEM_LIGHT
// Gear
#define TOOLS BASE_TOOLS
#define LEADER_TOOLS BASE_LEADER_TOOLS,SIDE_KEY
#define LINKED BASE_LINKED
#define LEADER_LINKED BASE_LEADER_LINKED
#define CARRYALL "B_LIB_GER_Backpack"
#define GOG

// Specialized Resupply Vehicle Loadouts
// Ammo Truck
class rhsusf_M1078A1P2_B_WD_CP_fmtv_usarmy {
	TransportWeapons[] = {AT,AT,AT};
	TransportMagazines[] = {RIFLE_MAG,RIFLE_MAG,RIFLE_MAG,RIFLE_MAG,CARBINE_MAG,CARBINE_MAG,GLRIFLE_MAG,GLRIFLE_MAG,AR_MAG,AR_MAG,AR_MAG,AR_MAG,MMG_MAG,MMG_MAG,GLRIFLE_MAG_HE,GLRIFLE_MAG_HE,GLRIFLE_MAG_SMOKE,GLRIFLE_MAG_SMOKE,MAT_MAG,"LIB_Shg24:2","LIB_Shg24:2","LIB_Shg24:2","LIB_Shg24:2"};
	TransportItems[] = {TOOLKIT};
};

class Car {
  TransportWeapons[] = {AT};
  TransportMagazines[] = {RIFLE_MAG,RIFLE_MAG,CARBINE_MAG,GLRIFLE_MAG,AR_MAG,AR_MAG,GLRIFLE_MAG_HE,GLRIFLE_MAG_SMOKE,GLRIFLE_MAG_SMOKE};
  TransportItems[] = {BASE_MEDICAL,BASE_MEDICAL,BASE_MEDICAL,BASE_MEDICAL};
};
class Tank {
  TransportWeapons[] = {AT};
  TransportMagazines[] = {RIFLE_MAG,RIFLE_MAG,CARBINE_MAG,GLRIFLE_MAG,AR_MAG,AR_MAG,GLRIFLE_MAG_HE,GLRIFLE_MAG_SMOKE,GLRIFLE_MAG_SMOKE};
  TransportItems[] = {BASE_MEDICAL,BASE_MEDICAL,BASE_MEDICAL,BASE_MEDICAL};
};
class Helicopter {
  TransportMagazines[] = {RIFLE_MAG,RIFLE_MAG,CARBINE_MAG,GLRIFLE_MAG,AR_MAG,AR_MAG,GLRIFLE_MAG_HE,GLRIFLE_MAG_SMOKE,GLRIFLE_MAG_SMOKE};
  TransportItems[] = {BASE_MEDICAL,BASE_MEDICAL,BASE_MEDICAL,BASE_MEDICAL};
};
class Plane {};
class Ship_F {};

// ====================
// uniform[] = {};                 Uniform/clothes
// vest[] = {};                    Vest/Plate Carrier/Harness/Chest rig
// headgear[] = {};                Helmets, Hats
// backpack[] = {};                Backpack
// goggles[] = {};                 Facewear
// weapons[] = {};                 Primary weapons (Rifles, MGs, DMRs etc)
// handguns[] = {};                Pistols, machine-pistols etc
// launchers[] = {};               AT/AA launchers
// magazines[] = {};               Magazines. Includes grenades, and can include specific explosives such as mines and demo blocks.
// items[] = {};                   Misc items, eg. Explosive detonators, wire cutters etc
// backpackItems[] = {};           Items sent to backpack. Can include weapons, magazines and probably a lot of other things.
// linkedItems[] = {};             Items that go in the linked slots: NVGs, Map, Compass, Watch, Binoculars, Rangefinders, GPS/UAV terminal
// attachments[] = {};             Primary weapon attachments.
// secondaryAttachments[] = {};    Launcher attachments
// handgunAttachments[] = {};      Sidearm attachments
// opticChoices[] = {};            List of optics that can be chosen by this class during safestart. Automatically included by arsenal exporter, so scroll back up and add some for the love of god.
// ====================

// Base Classes
class rifleman {// rifleman
  uniform[] = {CAMO_UNIFORM};
  vest[] = {CAMO_VEST};
  headgear[] = {CAMO_HEADGEAR};
  backpack[] = {CAMO_BACKPACK};
  backpackItems[] = {BASE_MEDICAL};
  weapons[] = {RIFLE};
  magazines[] = {RIFLE_MAG,"LIB_Shg24:2","LIB_NB39:2"};
  items[] = {TOOLS};
  linkedItems[] = {LINKED};
  attachments[] = {RIFLE_ATTACHMENTS};
  opticChoices[] = {ALT_OPTICS};
//  goggles[] = {GOG};
//  face[] = {F_USA};
};
class Fic_Soldier_Carbine: rifleman {// carbine-man
  weapons[] = {CARBINE};
  magazines[] = {CARBINE_MAG,"LIB_Shg24:2","LIB_NB39:2"};
};


//Leadership
class ftl: rifleman {// FTL
  weapons[] = {GLRIFLE};
  magazines[] = {GLRIFLE_MAG,GLRIFLE_MAG_HE,GLRIFLE_MAG_SMOKE,LEADER_GRENADES,"LIB_Shg24:2","LIB_NB39:2"};
  items[] += {LEADER_TOOLS};
  linkedItems[] += {LEADER_LINKED,BINOS};
};
class sl: ftl {// SL
  handguns[] = {PISTOL};
  magazines[] += {PISTOL_MAG};
  linkedItems[] = {LINKED,LEADER_LINKED,BINOS};
};
class plt: sl {// Platoon Leader
  uniform[] = {"U_LIB_DAK_Lieutenant"};
  headgear[] = {"H_LIB_DAK_Cap"};
};
class coy: plt {// CO
  uniform[] = {"U_LIB_DAK_Lieutenant"};
  headgear[] = {"fow_h_ger_officer_cap"};
  items[] += {RADIO_LR};
};
class xo: coy {// XO
 uniform[] = {"U_LIB_DAK_Lieutenant"};
 headgear[] = {"H_LIB_DAK_Cap"};
};
class sgt: plt {// Platoon Sergeant
};
class fac: plt {// RTO
  weapons[] = {CARBINE};
  magazines[] = {CARBINE_MAG,SIDE_FAC_GRENADES,PISTOL_MAG};
  linkedItems[] = {LINKED,LEADER_LINKED};
  headgear[] = {"H_LIB_DAK_Cap"};
  goggles[] = {"G_LIB_GER_Headset"};
  uniform[] = {CAMO_UNIFORM};
  backpack[] = {"B_LIB_GER_Radio_ACRE2"};
  items[] += {RADIO_LR};
};
class uav: fac { //FO
};

//Medics
class sm: Fic_Soldier_Carbine {// Medic
  uniform[] = {U_LIB_DAK_Medic};
  headgear[] = {H_LIB_GER_Helmet_Medic};
  magazines[] = {CARBINE_MAG,"LIB_NB39:4"};
  backpack[] = {B_Battle_Belt_XL_F};
  backpackItems[] = {MEDIC_MEDICAL};
};
class plm: sm {// Platoon Medic
};
class cm: plm {// Company Medic
};


//Infantry
class ar: rifleman {// AR
  weapons[] = {AR};
  magazines[] = {AR_MAG,PISTOL_MAG,"LIB_Shg24:2","LIB_NB39:2"};
  handguns[] = {PISTOL};
};
class aar: rifleman {// AAR
  backpackItems[] += {AR_MAG};
  linkedItems[] += {BINOS};
};
class lat: Fic_Soldier_Carbine {// RAT
  magazines[] += {AT_MAG};
  launchers[] = {AT};
};
class rifleman_02: rifleman {// Grenadier
  weapons[] = {GLRIFLE};
  magazines[] = {GLRIFLE_MAG,GLRIFLE_MAG_HE,GLRIFLE_MAG_HE,GLRIFLE_MAG_SMOKE,"LIB_Shg24:2","LIB_NB39:2"};
};


//Weapons Teams
class Fic_Spotter: rifleman { //Base Spotter
  linkedItems[] += {BINOS};
};

//MMG
class mmgl: sl {// MMG Lead
  backpack[] = {B_LIB_GER_Backpack};
  magazines[] += {MMG_MAG};
};
class mmgg: ar {// MMG Gunner
  weapons[] = {MMG};
  vest[] = {V_LIB_DAK_VestMG};
  magazines[] = {MMG_MAG,MMG_MAG,PISTOL_MAG,"LIB_Shg24:2","LIB_NB39:2"};
};
class mmgag: Fic_Spotter {// MMG Spotter/Ammo Bearer
  backpackItems[] += {MMG_MAG,MMG_MAG,MMG_MAG};
  vest[] = {V_LIB_DAK_VestMG};
};

//MAT
class matl: sl {// MAT Lead
  backpack[] = {B_LIB_GER_Backpack};
  magazines[] += {MAT_MAG};
};
class matg: rifleman {// MAT Gunner
  backpackItems[] = {};
  magazines[] += {MAT_MAG};
  items[] += {BASE_MEDICAL};
  launchers[] = {MAT};
};
class matag: Fic_Spotter {// MAT Spotter/Ammo Bearer
  backpack[] = {B_LIB_GER_Panzer_Empty};
  magazines[] += {MAT_MAG,MAT_MAG,MAT_MAG,MAT_MAG,MAT_MAG};
  items[] += {BASE_MEDICAL};
};

//HMG
class hmgl: sl {// HMG Lead
  weapons[] = {RIFLE};
  magazines[] = {RIFLE_MAG,LEADER_GRENADES,PISTOL_MAG,HMG_MAG};
  backpack[] = {B_LIB_GER_Backpack};
  launchers[] = {HMG_TRI_LO};
  items[] += {BASE_BALLISTICS};
};
class hmgg: rifleman {// HMG Gunner
  backpack[] = {B_LIB_GER_Backpack};
  magazines[] += {HMG_MAG};
  launchers[] = {HMG};
};
class hmgag: rifleman {// HMG Spotter
  backpack[] = {B_LIB_GER_Backpack};
  magazines[] += {HMG_MAG};
  launchers[] = {HMG_TRI_HI};
  items[] += {BASE_BALLISTICS};
};

//HAT
class hatl: sl {// HAT Lead
  weapons[] = {RIFLE};
  backpackItems[] = {};
  magazines[] = {RIFLE_MAG,LEADER_GRENADES,PISTOL_MAG,HAT_MAG};
  backpack[] = {CARRYALL};
  launchers[] = {HAT_TRI_LO};
  items[] += {BASE_MEDICAL};
};
class hatg: rifleman {// HAT Gunner
  backpack[] = {CARRYALL};
  magazines[] += {HAT_MAG};
  launchers[] = {HAT};
};
class hatag: rifleman {// HAT Spotter
  backpack[] = {CARRYALL};
  magazines[] += {HAT_MAG};
  launchers[] = {HAT_TRI_HI};
};

//SAM
class msaml: sl {// SAM Lead
  backpack[] = {CARRYALL};
  magazines[] += {SAM_MAG2};
};
class msamg: Fic_Soldier_Carbine {// SAM Gunner
  SAM_GEAR(CARRYALL, SAM_MAG)
  launchers[] = {SAM};
};
class msamag: Fic_Spotter {// SAM Spotter/Ammo Bearer
  SAM_GEAR(CARRYALL, SAM_MAG2)
};

//Mortar
class mtrl: sl {// Mortar Lead
  items[] += {BASE_ARTILLERY};
  backpackItems[] += {RADIO_LR};
};
class mtrg: Fic_Soldier_Carbine {// Mortar Gunner
  weapons[] = {RIFLE};
  magazines[] = {RIFLE_MAG,"LIB_Shg24:2","LIB_NB39:2"};
};
class mtrag: Fic_Spotter {// Assistant Mortar
  items[] += {BASE_ARTILLERY};
};

//Artillery
class artl: sl {// Artillery Leader
  backpack[] = {CARRYALL};
  backpackItems[] += {BASE_ARTILLERY};
  
};
class artg: rifleman {// Artillery Gunner
  backpackItems[] += {BASE_ARTILLERY};
};

//Sniper Team
class spotter: Fic_Spotter {// Spotter
  weapons[] = {SPOTTER};
  magazines[] = {SPOTTER_MAG,"LIB_Shg24:2","LIB_NB39:2"};
  items[] += {RADIO_LR};
  linkedItems[] += {LEADER_LINKED};
  attachments[] = {SPOTTER_ATTACHMENTS};
};
class sniper: spotter {// Sniper
  weapons[] = {SNIPER};
  magazines[] = {SNIPER_MAG,"LIB_Shg24:2","LIB_NB39:2"};
  items[] = {TOOLS,"ACE_RangeCard"};
  linkedItems[] = {LINKED};
  attachments[] = {SNIPER_ATTACHMENTS};
};


// Air
class pilot {// Pilot
  uniform[] = {"U_LIB_GER_LW_pilot"};
  backpack[] = {"B_LIB_US_TypeA3"};
  vest[] = {"V_LIB_DAK_OfficerBelt"};
  headgear[] = {"H_LIB_GER_LW_PilotHelmet"};
  weapons[] = {PISTOL};
  magazines[] = {PISTOL_MAG,PISTOL_MAG,CREW_GRENADES};
  backpackItems[] = {SIDE_KEY,RADIO_LR};
  items[] = {BASE_MEDICAL,TOOLS,LEADER_TOOLS,RADIO_MR};
  linkedItems[] = {LINKED,LEADER_LINKED};
};
class helicrew: pilot {// Aircrew
  backpackItems[] = {"Toolkit",SIDE_KEY};
};
class cc: helicrew {// Crew Chief
  backpackItems[] += {RADIO_MR};
};


//Armor
class vicc: Fic_Soldier_Carbine {// Crew
  uniform[] = {"U_LIB_DAK_Spg_crew_private"};
  headgear[] = {"H_LIB_DAK_Helmet_Glasses"};
  weapons[] = {PISTOL};	
  magazines[] = {PISTOL_MAG,"LIB_NB39:2"};
  backpackItems[] = {SIDE_KEY};
  linkedItems[] = {LINKED,LEADER_LINKED,BINOS};
  items[] += {BASE_MEDICAL};
};
class vicd: vicc {// Repair Specialist
  headgear[] = {"H_LIB_DAK_Helmet_Glasses"};
  backpackItems[] = {"Toolkit",SIDE_KEY};
  linkedItems[] = {LINKED,LEADER_LINKED};
};
class vicl: vicc {// Vehicle Commander
  headgear[] = {"H_LIB_GER_TankOfficerCap2"};
  weapons[] = {GLRIFLE};	
  magazines[] = {GLRIFLE_MAG};	
  backpackItems[] = {SIDE_KEY,RADIO_LR};
};


//Support Teams
class Fic_eng: Fic_Soldier_Carbine { // Base ENG
  magazines[] = {CARBINE_MAG,CREW_GRENADES};
  linkedItems[] = {LINKED,LEADER_LINKED};
  items[] += {BASE_ENG,BASE_MEDICAL};
  backpackItems[] = {};
};

//Demo
class demol: Fic_eng {// Demolitions Leader
  magazines[] += {BASE_EXP};
  backpackItems[] = {RADIO_MR,"Toolkit"};
};
class demo: Fic_eng {// Explosive Specialist
  magazines[] += {BASE_EXP};
};
class mine: Fic_eng {// Mine Specialist
  magazines[] += {BASE_MINE};
  handguns[] = {MINE_DETECTOR};
};

class eng: fic_eng {// Logistics Engineer
  backpackItems[] = {"Toolkit","ACE_EntrenchingTool","ACE_Fortify","ACE_wirecutter"};
};
class engl: eng {// Logistics Leader
  weapons[] = {GLRIFLE};
  magazines[] = {GLRIFLE_MAG,GLRIFLE_MAG_HE,GLRIFLE_MAG_SMOKE,LEADER_GRENADES};
  items[] += {LEADER_TOOLS};
  linkedItems[] += {LEADER_LINKED,BINOS};
  backpackItems[] += {RADIO_MR};
};
class fallback: rifleman {}; // This means any faction member who doesn't match something will use this loadout
