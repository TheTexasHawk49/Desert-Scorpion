// Author: You
// Description: paste your loadout config from the arseanal exporter
#include "\x\cmf\addons\framework\loadouts\undef.hpp" // Reset defines

// ------------------- PASTE BELOW THIS LINE

// Camo set
#define CAMO_UNIFORM "U_LIB_UK_KhakiDrills"
#define CAMO_VEST "V_LIB_UK_P37_Rifleman"
#define CAMO_BACKPACK "B_LIB_UK_HSack_Tea"
#define CAMO_HEADGEAR "H_LIB_UK_Helmet_Mk2_Desert_Bowed"
// Rifle
#define RIFLE "LIB_LeeEnfield_No4"
#define RIFLE_MAG "LIB_10Rnd_770x56:5"
#define RIFLE_ATTACHMENTS ""
#define AR_ATTACHMENTS RIFLE_ATTACHMENTS, ""
#define ALT_OPTICS ""
// GL Rifle
#define GLRIFLE "LIB_LeeEnfield_No4_CUP"
#define GLRIFLE_MAG "LIB_10Rnd_770x56:5"
#define GLRIFLE_MAG_FLARE ""
#define GLRIFLE_MAG_SMOKE ""
#define GLRIFLE_MAG_HE "LIB_1Rnd_G_MillsBomb:10"
// Carbine
#define CARBINE "LIB_M1_Garand"
#define CARBINE_MAG "LIB_8Rnd_762x63:6"
// AR
#define AR "CSA38_BRENMKII"
#define AR_MAG "CSA38_7_7_30x56R:16"
// AT
#define AT "LIB_PIAT"
#define AT_MAG "LIB_1Rnd_89m_PIAT:1"
// MMG
#define MMG "LIB_M1919A6"
#define MMG_MAG "LIB_50Rnd_762x63:2"
#define MMG_ATT ""
// MAT
#define MAT "LIB_M1A1_Bazooka"
#define MAT_MAG "LIB_1Rnd_60mm_M6:2"
#define MAT_MAG2 ""
#define MAT_OPTIC ""
// Facewear
#define GOG 
// Special Forces
#define SF_SMG "CSA38_stenMkVI"
#define SF_SMG_MAG "csa38_32_9x19:9"


// -------------------- PASTE ABOVE THIS LINE
//HMG
#define HMG "fow_b_uk_vickers_weapon"
#define HMG_TRI_HI ""
#define HMG_TRI_LO "fow_b_uk_vickers_support"
#define HMG_MAG "ace_csw_100Rnd_127x99_mag:3"
//HAT
#define HAT "ace_compat_rhs_usf3_tow_carry"
#define HAT_TRI_HI "ace_csw_m220CarryTripod"
#define HAT_TRI_LO ""
#define HAT_MAG "ace_compat_rhs_usf3_mag_ITOW"
// SAM
#define SAM ""
#define SAM_MAG ""
#define SAM_MAG2 ""
// Sniper Rifle
#define SNIPER "CSA38_No4t"
#define SNIPER_MAG "CSA38_7_7_10x56R:10"
#define SNIPER_ATTACHMENTS ""
// Spotter Rifle
#define SPOTTER ""
#define SPOTTER_MAG RIFLE_MAG
#define SPOTTER_ATTACHMENTS "rhsusf_acc_ACOG","rhsusf_acc_anpeq15side_bk","rhsusf_acc_grip1"
// SMG
#define SMG "CSA38_stenMkIII"
#define SMG_MAG "csa38_32_9x19:10"
// Pistol
#define PISTOL "LIB_Webley_mk6"
#define PISTOL_MAG "LIB_6Rnd_455:3"
// Grenades
#define LEADER_GRENADES "LIB_F1",LEADER_SMOKES
// Gear
#define TOOLS BASE_TOOLS
#define LEADER_TOOLS BASE_LEADER_TOOLS,SIDE_KEY
#define LINKED BASE_LINKED
#define LEADER_LINKED BASE_LEADER_LINKED
#define CARRYALL "fow_b_uk_bergenpack"
#define GOG

// Specialized Resupply Vehicle Loadouts
// Ammo Truck
class rhsgref_ins_g_gaz66 {
	TransportWeapons[] = {AT,AT,AT};
	TransportMagazines[] = {RIFLE_MAG,RIFLE_MAG,RIFLE_MAG,RIFLE_MAG,CARBINE_MAG,CARBINE_MAG,GLRIFLE_MAG,GLRIFLE_MAG,AR_MAG,AR_MAG,AR_MAG,AR_MAG,MMG_MAG,MMG_MAG,GLRIFLE_MAG_HE,GLRIFLE_MAG_HE,GLRIFLE_MAG_SMOKE,GLRIFLE_MAG_SMOKE,MAT_MAG,"LIB_F1:2","LIB_US_M18:2","LIB_F1:2","LIB_US_M18:2","LIB_F1:2","LIB_US_M18:2","LIB_F1:2","LIB_US_M18:2"};
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
  magazines[] = {RIFLE_MAG,"LIB_F1:2","LIB_US_M18:2"};
  items[] = {TOOLS};
  linkedItems[] = {LINKED};
  attachments[] = {RIFLE_ATTACHMENTS};
  opticChoices[] = {ALT_OPTICS};
//  goggles[] = {GOG};
  face[] = {F_MN};
};
class Fic_Soldier_Carbine: rifleman {// carbine-man
  magazines[] = {"LIB_F1:2","LIB_US_M18:2"};
};


//Leadership
class ftl: rifleman {// FTL
  weapons[] = {SMG};
  magazines[] = {SMG_MAG,"LIB_F1:2","LIB_US_M18:2"};
  items[] += {LEADER_TOOLS};
  linkedItems[] += {LEADER_LINKED,BINOS};
};
class sl: ftl {// SL
  handguns[] = {PISTOL};
  magazines[] += {PISTOL_MAG};
  linkedItems[] = {LINKED,LEADER_LINKED,BINOS};
};
class plt: sl {// Platoon Leader
headgear[] = {fow_h_uk_bp_beret};
};
class coy: plt {// CO and PL
  headgear[] = {fow_h_uk_bp_beret};
  items[] += {RADIO_LR};	
};
class xo: coy {// XO
  headgear[] = {fow_h_uk_bp_beret};
};
class sgt: plt {// Platoon Sergeant
  headgear[] = {fow_h_uk_bp_beret};
};
class fac: coy {// RTO
  weapons[] = {RIFLE};
  magazines[] = {PISTOL_MAG,RIFLE_MAG,"LIB_F1:2","LIB_US_M18:2"};
  linkedItems[] = {LINKED,LEADER_LINKED};
  facewear[] = {G_LIB_GER_Headset};
  backpack[] = {fow_b_uk_p37_radio};
  items[] += {RADIO_LR};
};
class uav: fac { //FO
};


//Medics
class sm: Fic_Soldier_Carbine {// Medic
  magazines[] += {RIFLE_MAG,"LIB_US_M18:4"};
  backpack[] = {"B_Battle_Belt_XL_F"};
  backpackItems[] += {MEDIC_MEDICAL};
  headgear[] = {Headgear_csa38_CZMKIIMED};
};
class plm: sm {// Platoon Medic
};
class cm: plm {// Company Medic
};


//Infantry
class ar: rifleman {// AR
  weapons[] = {AR};
  magazines[] = {AR_MAG,PISTOL_MAG,"LIB_F1:2","LIB_US_M18:2"};
  handguns[] = {PISTOL};
};
class aar: rifleman {// AAR
  backpackItems[] += {AR_MAG};
  linkedItems[] += {BINOS};
};
class lat: Fic_Soldier_Carbine {// RAT
  weapons[] = {RIFLE};
  magazines[] += {RIFLE_MAG,AT_MAG,AT_MAG};
  launchers[] = {AT};
};
class rifleman_02: rifleman {// Grenadier
  weapons[] = {GLRIFLE};
  magazines[] = {GLRIFLE_MAG,GLRIFLE_MAG_HE,GLRIFLE_MAG_HE,GLRIFLE_MAG_SMOKE,"LIB_F1:2","LIB_US_M18:2"};
};

//Special Forces
class sf_rifleman {//Gren Special Forces
  uniform[] = {fow_u_uk_bd40_private};
  headgear[] = {fow_h_uk_bp_beret};
  vest[] = {fow_v_uk_para_base};
  backpack[] = {fow_b_uk_p37};
  backpackItems[] = {BASE_MEDICAL};
  weapons[] = {GLRIFLE};
  magazines[] = {GLRIFLE_MAG,GLRIFLE_MAG_HE,"LIB_F1:2","LIB_US_M18:2"};
  items[] = {TOOLS};
  linkedItems[] = {LINKED};
};
  
class sf_lat: sf_rifleman {//LAT Special Forces 
  launchers[] = {AT};
  weapons[] = {CARBINE};
  magazines[] = {CARBINE_MAG,AT_MAG,AT_MAG,AT_MAG,"LIB_F1:2","LIB_US_M18:2"};
};

class sf_ftl: sf_rifleman {//FTL Special Forces 
  linkedItems[] = {LINKED,LEADER_LINKED};
  weapons[] = {SF_SMG};
  magazines[] = {SF_SMG_MAG,"LIB_F1:2","LIB_US_M18:2"};
}; 

class sf_sl: sf_ftl {//Squad Lead Special Forces  
};

 class sf_rifleman_02: sf_rifleman {//RTO Special Forces 
  backpack[] = {fow_b_uk_p37_radio};
  items[] += {RADIO_LR};
  weapons[] = {CARBINE};
  magazines[] = {CARBINE_MAG,"LIB_F1:2","LIB_US_M18:2"};
};

 class sf_sm: sf_rifleman {//Medic Special Forces
  magazines[] += {RIFLE_MAG,"LIB_F1:2","LIB_US_M18:2"};
  backpack[] = {"B_Battle_Belt_XL_F"};
  backpackItems[] += {MEDIC_MEDICAL,MEDIC_GRENADES};
}; 
 



//Weapons Teams
class Fic_Spotter: rifleman { //Base Spotter
  linkedItems[] += {BINOS};
};

//MMG
class mmgl: sl {// MMG Lead
  weapons[] = {SF_SMG};
  magazines[] = {SF_SMG_MAG};
  uniform[] = {fow_u_uk_bd40_private};
  headgear[] = {fow_h_uk_bp_beret};
  vest[] = {fow_v_uk_para_base};
  backpack[] = {fow_b_uk_p37};
};
class mmgg: ar {// MMG Gunner
  uniform[] = {fow_u_uk_bd40_private};
  headgear[] = {fow_h_uk_bp_beret};
  vest[] = {fow_v_uk_para_base};
  backpack[] = {fow_b_uk_p37};
  weapons[] = {MMG};
  magazines[] = {MMG_MAG,PISTOL_MAG,"LIB_F1:2","LIB_US_M18:2"};
};
class mmgag: Fic_Spotter {// MMG Spotter/Ammo Bearer
  uniform[] = {fow_u_uk_bd40_private};
  headgear[] = {fow_h_uk_bp_beret};
  vest[] = {fow_v_uk_para_base};
  backpack[] = {fow_b_uk_p37};
  backpackItems[] += {MMG_MAG,MMG_MAG};
};

//MAT
class matl: sl {// MAT Lead
  weapons[] = {SF_SMG};
  magazines[] = {SF_SMG_MAG};
  uniform[] = {fow_u_uk_bd40_private};
  headgear[] = {fow_h_uk_bp_beret};
  vest[] = {fow_v_uk_para_base};
  backpack[] = {fow_b_uk_p37};
};
class matg: Fic_Soldier_Carbine {// MAT Gunner
  uniform[] = {fow_u_uk_bd40_private};
  headgear[] = {fow_h_uk_bp_beret};
  vest[] = {fow_v_uk_para_base};
  backpack[] = {fow_b_uk_p37};
  magazines[] += {MAT_MAG};
  launchers[] = {MAT};
};
class matag: Fic_Spotter {// MAT Spotter/Ammo Bearer
  uniform[] = {fow_u_uk_bd40_private};
  headgear[] = {fow_h_uk_bp_beret};
  vest[] = {fow_v_uk_para_base};
  backpack[] = {fow_b_uk_p37};
  magazines[] += {MAT_MAG,MAT_MAG};
};

//HMG
/* class hmgl: sl {// HMG Lead
  weapons[] = {RIFLE};
  magazines[] = {RIFLE_MAG,LEADER_GRENADES,PISTOL_MAG,HMG_MAG};
  backpack[] = {CARRYALL};
  launchers[] = {HMG_TRI_LO};
  items[] += {BASE_BALLISTICS};
};
class hmgg: rifleman {// HMG Gunner
  backpack[] = {fow_b_uk_vickers_weapon};
  magazines[] += {HMG_MAG};
};
class hmgag: rifleman {// HMG Spotter
  backpack[] = {fow_b_uk_vickers_support};
  magazines[] += {HMG_MAG};
  items[] += {BASE_BALLISTICS}; 
};
*/
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
  magazines[] = {SPOTTER_MAG,"LIB_F1:2","LIB_US_M18:2"};
  items[] += {RADIO_MR,"ACE_ATragMX","ACE_Kestrel4500"};
  linkedItems[] += {LEADER_LINKED};
  attachments[] = {SPOTTER_ATTACHMENTS};
};
class sniper: spotter {// Sniper
  weapons[] = {SNIPER};
  magazines[] = {SNIPER_MAG,"LIB_F1:2","LIB_US_M18:2"};
  items[] = {TOOLS,"ACE_RangeCard"};
  linkedItems[] = {LINKED};
  attachments[] = {SNIPER_ATTACHMENTS};
};


// Air
class pilot {// Pilot
  uniform[] = {"U_LIB_US_Pilot"};
  backpack[] = {"B_LIB_US_TypeA3"};
  vest[] = {"V_NORTH_SOV_Belt_Late_Pistol_2"};
  headgear[] = {"H_LIB_GER_LW_PilotHelmet"};
  weapons[] = {PISTOL};
  magazines[] = {PISTOL_MAG,PISTOL_MAG,CREW_GRENADES};
  backpackItems[] = {SIDE_KEY,RADIO_LR};
  items[] = {BASE_MEDICAL,TOOLS,LEADER_TOOLS,RADIO_LR};
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
  uniform[] = {"fow_u_uk_bd40_seac_02_private"};
  headgear[] = {"fow_h_uk_beret_rtr"};
  weapons[] = {PISTOL};
  magazines[] = {PISTOL_MAG,"LIB_US_M18:2"};
  backpackItems[] = {SIDE_KEY};
  linkedItems[] = {LINKED,LEADER_LINKED,BINOS};
  items[] += {BASE_MEDICAL};
  
};
class vicd: vicc {// Repair Specialist
  backpackItems[] = {"Toolkit",SIDE_KEY};
  linkedItems[] = {LINKED,LEADER_LINKED};
  
};
class vicl: vicc {// Vehicle Commander
headgear[] = {fow_h_uk_beret_rtr_headset};
backpackItems[] = {RADIO_LR};
weapons[] = {SMG};
magazines[] = {SMG_MAG};
};


//Support Teams
class Fic_eng: Fic_Soldier_Carbine { // Base ENG
  magazines[] = {CARBINE_MAG};
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
  magazines[] = {GLRIFLE_MAG};
  backpack[] = {"B_Battle_Belt_XL_F"};
  items[] += {LEADER_TOOLS};
  linkedItems[] += {LEADER_LINKED,BINOS};
  backpackItems[] += {RADIO_LR};
};
class fallback: rifleman {}; // This means any faction member who doesn't match something will use this loadout
