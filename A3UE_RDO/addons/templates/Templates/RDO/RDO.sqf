//these variables determine whether specified dlcs are loaded
private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;

#include "..\..\script_component.hpp" // TAKE NOTE OF THIS. WITHOUT THIS, YOU CAN'T USE MACROS LIKE QPATHTOFOLDER.

//////////////////////////
//   Side Information   //
//////////////////////////

["name", "USSR"] call _fnc_saveToTemplate; 						//this line determines the faction name -- Example: ["name", "NATO"] - ENTER ONLY ONE OPTION
["spawnMarkerName", format [localize "STR_supportcorridor", "Soviet Occupation Forces"]] call _fnc_saveToTemplate; 			//this line determines the name tag for the "carrier" on the map -- Example: ["spawnMarkerName", "NATO support corridor"] - ENTER ONLY ONE OPTION. Format and localize function can be used for translation

["flag", "flag_NATO"] call _fnc_saveToTemplate; 						//this line determines the flag -- Example: ["flag", "Flag_NATO_F"] - ENTER ONLY ONE OPTION
["flagTexture", QPATHTOFOLDER(Templates\RDO\RDO.paa)] call _fnc_saveToTemplate; 				//this line determines the flag texture -- Example: ["flagTexture", "\A3\Data_F\Flags\Flag_NATO_CO.paa"] - ENTER ONLY ONE OPTION
["flagMarkerType", "my_extension_marker_RDO"] call _fnc_saveToTemplate; 			//this line determines the flag marker type -- Example: ["flagMarkerType", "flag_NATO"] - ENTER ONLY ONE OPTION

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate; 	//Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_NATO_Wps_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type

["vehiclesBasic", ["uaz2206_ru_z_opfor"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", [""uaz2206_ru_z_opfor"", "bo_app66_green"]] call _fnc_saveToTemplate;
["vehiclesLightArmed",["walker_a3_hiluxhmg"]] call _fnc_saveToTemplate; 		//this line determines light and armed vehicles -- Example: ["vehiclesLightArmed",["B_MRAP_01_hmg_F", "B_MRAP_01_gmg_F"]] -- Array, can contain multiple assets
["vehiclesTrucks", ["Unimog_I_Big", "zil131_krest_new", "ural4320_triangle_new"]] call _fnc_saveToTemplate; 			//this line determines the trucks -- Example: ["vehiclesTrucks", ["B_Truck_01_transport_F", "B_Truck_01_covered_F"]] -- Array, can contain multiple assets
["vehiclesCargoTrucks", ["zil131_krest_new"]] call _fnc_saveToTemplate; 		//this line determines cargo trucks -- Example: ["vehiclesCargoTrucks", ["B_Truck_01_transport_F", "B_Truck_01_covered_F"]] -- Array, can contain multiple assets
["vehiclesAmmoTrucks", ["Unimog_I_Repair", "SUD_Ural_Reammo"]] call _fnc_saveToTemplate;
["vehiclesRepairTrucks", ["Unimog_I_Repair"]] call _fnc_saveToTemplate;
["vehiclesFuelTrucks", ["Unimog_I_fuel"]] call _fnc_saveToTemplate;
["vehiclesMedical", ["Unimog_I_Medical"]] call _fnc_saveToTemplate;
["vehiclesLightAPCs", ["qav_brdm2", "tbd_mtlb_pkt"]] call _fnc_saveToTemplate;
["vehiclesAirborne", ["tbd_mtlb_nona", "qav_brdm2", "tbd_mtlb_6ma2_1p39"]] call _fnc_saveToTemplate;
["vehiclesAPCs", ["qav_brdm2", "SUD_BTR60", "tbd_mtlb_pkt"]] call _fnc_saveToTemplate;
["vehiclesIFVs", ["qav_bmp1", "qav_bmp1_p"]] call _fnc_saveToTemplate;

["vehiclesLightTanks",  ["tbd_mtlb_mt12", "QAV_T54"]] call _fnc_saveToTemplate;
["vehiclesTanks", ["qav_T72A"]] call _fnc_saveToTemplate;
["vehiclesAA", ["RDS_ZSU_CDF", "tbd_mtlb_strela_m3"]] call _fnc_saveToTemplate;


["vehiclesTransportBoats", ["O_G_Boat_Transport_01_F", "rksla3_lcvpmk5_ind_generic_grey", "rksla3_lcvpmk5_ind_viv_generic_grey", "B_Lifeboat"]] call _fnc_saveToTemplate; 	//this line determines transport boats -- Example: ["vehiclesTransportBoats", ["B_Boat_Transport_01_F"]] -- Array, can contain multiple assets
["vehiclesGunBoats", ["sab_mp_migaloo"]] call _fnc_saveToTemplate; 			//this line determines gun boats -- Example: ["vehiclesGunBoats", ["B_Boat_Armed_01_minigun_F"]] -- Array, can contain multiple assets
["vehiclesAmphibious", ["qav_bmp1", "qav_bmp1_p", "qav_brdm2"]] call _fnc_saveToTemplate; 		//this line determines amphibious vehicles  -- Example: ["vehiclesAmphibious", ["B_APC_Wheeled_01_cannon_F"]] -- Array, can contain multiple assets

["vehiclesPlanesCAS", ["FIR_Su25SM3", "UKRI_SU24_OPFOR", "mig15bis_o_soviet"]] call _fnc_saveToTemplate;
["vehiclesPlanesAA", ["JK_O_RUS_SU15_F", "JK_O_RUS_SU15TM_F"]] call _fnc_saveToTemplate;
["vehiclesPlanesTransport", ["bo_an14_WMF", "an12bkv3_USSR_11833"]] call _fnc_saveToTemplate; 	//this line determines transport planes -- Example: ["vehiclesPlanesTransport", ["B_T_VTOL_01_infantry_F"]] -- Array, can contain multiple assets

["vehiclesHelisLight", ["bo_ka32_RF", "bo_ka26_army2_1"]] call _fnc_saveToTemplate; 		//this line determines light helis -- Example: ["vehiclesHelisLight", ["B_Heli_Light_01_F"]] -- Array, can contain multiple assets
["vehiclesHelisTransport", ["OWP_MI26cg", "bo_ka32_RF", "MI_8ATMSH_heli_2_hight", "MI_8ATMSH_GT_green_heli_2_hight"]] call _fnc_saveToTemplate; 	//this line determines transport helis -- Example: ["vehiclesHelisTransport", ["B_Heli_Transport_01_F"]] -- Array, can contain multiple assets
["vehiclesHelisLightAttack", ["bo_ka26_army2_1", "JK_O_KA137_PK_UAV_F"]] call _fnc_saveToTemplate;		// this line determines light attack helicopters
["vehiclesHelisAttack", ["SUD_Mi24V", "MI_8ATMSH_VN_green_heli_2_hight", "Ka50_Base_01"]] call _fnc_saveToTemplate; 		//this line determines attack helis -- Example: ["vehiclesHelisAttack", ["B_Heli_Attack_01_F"]] -- Array, can contain multiple assets

["vehiclesAirPatrol", ["JK_O_KA137_UAV_F", "JK_O_KA137_PK_UAV_F", "bo_ka26_army2_1", "mig15bis_o_soviet", "bo_an14_WMF"]] call _fnc_saveToTemplate;

["vehiclesArtillery", ["tbd_mtlb_bm21", "tbd_mtlb_mt12", "tbd_mtlb_nona"]] call _fnc_saveToTemplate;
["magazines", createHashMapFromArray [
["tbd_mtlb_bm21", ["tbd_magazine_bm21_cluster_ap","tbd_magazine_bm21_cluster_ap","tbd_magazine_bm21_cluster_ap","tbd_magazine_bm21_cluster_he","tbd_magazine_bm21_cluster_he","tbd_magazine_bm21_cluster_he","tbd_magazine_bm21_he","tbd_magazine_bm21_he","tbd_magazine_bm21_he","tbd_magazine_bm21_cluster_smoke","tbd_magazine_bm21_cluster_smoke","tbd_magazine_bm21_cluster_smoke"]],
["tbd_mtlb_mt12", ["TBD_MTLB_100MM_MAG_AP","TBD_MTLB_100MM_MAG_AP","TBD_MTLB_100MM_MAG_AP","TBD_MTLB_100MM_MAG_AP","TBD_MTLB_100MM_MAG_AP","TBD_MTLB_100MM_MAG_AP","TBD_MTLB_100MM_MAG_AP","TBD_MTLB_100MM_MAG_AP","TBD_MTLB_100MM_MAG_AP","TBD_MTLB_100MM_MAG_AP","TBD_MTLB_100MM_MAG_AP","TBD_MTLB_100MM_MAG_AP","TBD_MTLB_100MM_MAG_AP","TBD_MTLB_100MM_MAG_AP","TBD_MTLB_100MM_MAG_AP","TBD_MTLB_100MM_MAG_HEAT","TBD_MTLB_100MM_MAG_HEAT","TBD_MTLB_100MM_MAG_HEAT","TBD_MTLB_100MM_MAG_HEAT","TBD_MTLB_100MM_MAG_HEAT","TBD_MTLB_100MM_MAG_HEAT","TBD_MTLB_100MM_MAG_HEAT","TBD_MTLB_100MM_MAG_HEAT","TBD_MTLB_100MM_MAG_HEAT","TBD_MTLB_100MM_MAG_HEAT","TBD_MTLB_100MM_MAG_HEAT","TBD_MTLB_100MM_MAG_HEAT","TBD_MTLB_100MM_MAG_HEAT","TBD_MTLB_100MM_MAG_HEAT","TBD_MTLB_100MM_MAG_HEAT","TBD_MTLB_100MM_MAG_HE","TBD_MTLB_100MM_MAG_HE","TBD_MTLB_100MM_MAG_HE","TBD_MTLB_100MM_MAG_HE","TBD_MTLB_100MM_MAG_HE","TBD_MTLB_100MM_MAG_HE","TBD_MTLB_100MM_MAG_HE","TBD_MTLB_100MM_MAG_HE","TBD_MTLB_100MM_MAG_HE","TBD_MTLB_100MM_MAG_HE","TBD_MTLB_100MM_MAG_HE","TBD_MTLB_100MM_MAG_HE","TBD_MTLB_100MM_MAG_HE","TBD_MTLB_100MM_MAG_HE","TBD_MTLB_100MM_MAG_HE"]],
["tbd_mtlb_nona", ["tbd_mtlb_nona_magazine_he_cluster","tbd_mtlb_nona_magazine_he","tbd_mtlb_nona_magazine_he_ra","tbd_mtlb_nona_magazine_heat","tbd_mtlb_nona_magazine_smoke"]]
]] call _fnc_saveToTemplate;

["uavsPortable", ["JK_O_KA137_UAV_F", "JK_O_KA137_PK_UAV_F"]] call _fnc_saveToTemplate; 				//this line determines portable UAVs -- Example: ["uavsPortable", ["B_UAV_01_F"]] -- Array, can contain multiple assets

//Config special vehicles - militia vehicles are mostly used in the early game, police cars are being used by troops around cities -- Example:
["vehiclesMilitiaLightArmed", ["walker_a3_hiluxhmg"]] call _fnc_saveToTemplate; //this line determines lightly armed militia vehicles -- Example: ["vehiclesMilitiaLightArmed", ["B_G_Offroad_01_armed_F"]] -- Array, can contain multiple assets
["vehiclesMilitiaTrucks", ["walker_a3_hilux"]] call _fnc_saveToTemplate; 	//this line determines militia trucks (unarmed) -- Example: ["vehiclesMilitiaTrucks", ["B_G_Van_01_transport_F"]] -- Array, can contain multiple assets
["vehiclesMilitiaCars", ["walker_a3_hilux", "VAZ2107_UCG_Ton_mat"]] call _fnc_saveToTemplate; 		//this line determines militia cars (unarmed) -- Example: ["vehiclesMilitiaCars", ["B_G_Offroad_01_F"]] -- Array, can contain multiple assets

["vehiclesMilitiaAPCs", ["tbd_mtlb_pkt"]] call _fnc_saveToTemplate;						//this line determines militia APCs

["vehiclesPolice", ["ZIL131_UCG_PD", "77FuryCop"]] call _fnc_saveToTemplate; 			//this line determines police cars -- Example: ["vehiclesPolice", ["B_GEN_Offroad_01_gen_F"]] -- Array, can contain multiple assets

["staticMGs", ["RDS_AGS_CSAT", "RDS_KORD_high_CSAT", "RDS_KORD_CSAT", "RDS_DSHKM_CSAT", "RDS_DSHkM_Mini_TriPod_CSAT"]] call _fnc_saveToTemplate; 					//this line determines static MGs -- Example: ["staticMG", ["B_HMG_01_high_F"]] -- Array, can contain multiple assets
["staticAT", ["tbd_spg"]] call _fnc_saveToTemplate; 					//this line determinesstatic ATs -- Example: ["staticAT", ["B_static_AT_F"]] -- Array, can contain multiple assets
["staticAA", ["tbd_s60", "RDS_ZU23_CSAT"]] call _fnc_saveToTemplate; 					//this line determines static AAs -- Example: ["staticAA", ["B_static_AA_F"]] -- Array, can contain multiple assets
["staticMortars", ["tbd_120mm_pm_43"]] call _fnc_saveToTemplate; 				//this line determines static mortars -- Example: ["staticMortars", ["B_Mortar_01_F"]] -- Array, can contain multiple assets
["staticHowitzers", ["tbd_d20_vanilla"]] call _fnc_saveToTemplate;							//this line determines static howitzers. Basically it's just a stronger mortar, use same syntax as above.

["vehicleRadar", ["JK_O_RU_76n6_ClamShell_Lower_F", "JK_O_RU_76n6_ClamShell_F", "S300_RS_F_UCG"]] call _fnc_saveToTemplate;
["vehicleSam", ["S300_F_UCG"]] call _fnc_saveToTemplate;

["mortarMagazineHE", "tbd_mortar_120mm_shell_he"] call _fnc_saveToTemplate; 			//this line determines available HE-shells for the static mortars - !needs to be compatible with the mortar! -- Example: ["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] - ENTER ONLY ONE OPTION

["howitzerMagazineHE", "tbd_d20_152mm_mag_he"] call _fnc_saveToTemplate;			//this line determines available HE-shells for the static howitzers - !needs to be compatible with the howitzer! -- same syntax as above - ENTER ONLY ONE OPTION

//Minefield definition
["minefieldAT", ["ATMine_Range_Mag"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine_Range_Mag", "ACE_APERSMine_ToePopper_Mag", "APERSTripMine_Wire_Mag"]] call _fnc_saveToTemplate;

/////////////////////
///  Variants   /////
/////////////////////

["variants", [
    ["qav_bmp1", ["cdf",1]],
    ["qav_bmp1_p",  ["cdf",1]],
    ["qav_T72A",  ["cdf",1]], 
    ["qav_brdm2",  ["cdf",1]], 
    ["tbd_mtlb_bm21",  ["cdf",1]], 
    ["tbd_mtlb_mt12",  ["cdf",1]], 
    ["tbd_mtlb_nona",  ["cdf",1]], 
    ["tbd_mtlb_pkt",  ["cdf",1]], 
    ["tbd_mtlb_shturm_sm",  ["cdf",1]], 
    ["tbd_mtlb_strela_m3",  ["cdf",1]], 
    ["MI_8ATMSH_VN_green_heli_2_hight", ["Black_pidrila",1]], 
    ["MI_8ATMSH_GT_green_heli_2_hight", ["Black_pidrila",1]], 
    ["MI_8ATMSH_heli_2_hight", ["Black_pidrila",1]]
]] call _fnc_saveToTemplate;

/////////////////////
///  Identities   ///
/////////////////////

["faces", [
    "WhiteHead_01",
    "WhiteHead_02",
    "WhiteHead_03",
    "WhiteHead_04",
    "WhiteHead_05",
    "WhiteHead_06",
    "WhiteHead_07",
    "WhiteHead_08",
    "WhiteHead_09",
    "WhiteHead_10",
    "WhiteHead_11",
    "WhiteHead_12",
    "WhiteHead_13",
    "WhiteHead_14",
    "WhiteHead_15",
    "WhiteHead_16",
    "WhiteHead_17",
    "WhiteHead_18",
    "WhiteHead_19",
    "WhiteHead_20",
    "WhiteHead_21",
    "RussianHead_1",
    "RussianHead_2",
    "RussianHead_3",
    "RussianHead_4",
    "RussianHead_5"
]] call _fnc_saveToTemplate;
["voices", ["Male01RUS", "Male02RUS", "Male01RUS"]] call _fnc_saveToTemplate;

["insignia", ["soviet_beardecal"]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["slRifles", []];
_loadoutData set ["rifles", []];
_loadoutData set ["carbines", []];
_loadoutData set ["grenadeLaunchers", []];
_loadoutData set ["designatedGrenadeLaunchers", []];
_loadoutData set ["SMGs", []];
_loadoutData set ["machineGuns", []];
_loadoutData set ["marksmanRifles", []];
_loadoutData set ["sniperRifles", []];

_loadoutData set ["lightATLaunchers", []];
_loadoutData set ["ATLaunchers", []];
_loadoutData set ["missileATLaunchers", []];
_loadoutData set ["AALaunchers", []];
_loadoutData set ["sidearms", []];

_loadoutData set ["ATMines", ["ATMine_Range_Mag"]]; 					//this line determines the AT mines which can be carried by units -- Example: ["ATMine_Range_Mag"] -- Array, can contain multiple assets
_loadoutData set ["APMines", ["APERSTripMine_Wire_Mag", "ACE_APERSMine_ToePopper_Mag", "APERSMine_Range_Mag"]]; 					//this line determines the APERS mines which can be carried by units -- Example: ["APERSMine_Range_Mag"] -- Array, can contain multiple assets
_loadoutData set ["lightExplosives", ["DemoCharge_Remote_Mag"]]; 			//this line determines light explosives -- Example: ["DemoCharge_Remote_Mag"] -- Array, can contain multiple assets
_loadoutData set ["heavyExplosives", ["SatchelCharge_Remote_Mag"]]; 			//this line determines heavy explosives -- Example: ["SatchelCharge_Remote_Mag"] -- Array, can contain multiple assets

_loadoutData set ["antiInfantryGrenades", ["HandGrenade", "ACE_CTS9"]]; 		//this line determines anti infantry grenades (frag and such) -- Example: ["HandGrenade", "MiniGrenade"] -- Array, can contain multiple assets
_loadoutData set ["antiTankGrenades", []]; 			//this line determines anti tank grenades. Leave empty when not available. -- Array, can contain multiple assets
_loadoutData set ["smokeGrenades", ["SmokeShell"]];
_loadoutData set ["signalsmokeGrenades", []];

//Basic equipment. Shouldn't need touching most of the time.
//Mods might override this, or certain mods might want items removed (No GPSs in WW2, for example)
_loadoutData set ["maps", ["ItemMap"]];				//this line determines map
_loadoutData set ["watches", ["ItemWatch"]];		//this line determines watch
_loadoutData set ["compasses", ["ItemCompass"]];	//this line determines compass
_loadoutData set ["radios", ["ItemRadio"]];			//this line determines radio
_loadoutData set ["gpses", ["ItemGPS"]];			//this line determines GPS
_loadoutData set ["NVGs", []];						//this line determines NVGs -- Array, can contain multiple assets
_loadoutData set ["binoculars", ["Binocular"]];		//this line determines the binoculars
_loadoutData set ["rangefinders", []];

_loadoutData set ["traitorUniforms", ["JS_JP_1"]];		//this line determines traitor uniforms for traitor mission
_loadoutData set ["traitorVests", ["hendrix_6b5_11_olive"]];			//this line determines traitor vesets for traitor mission
_loadoutData set ["traitorHats", ["hendrix_beanie_g"]];			//this line determines traitor headgear for traitor missions

_loadoutData set ["officerUniforms", ["u_hendrix_m88_2_FloraSea"]];			//this line determines officer uniforms for assassination mission
_loadoutData set ["officerVests", ["hendrix_6b5_11_olive"]];		//this line determines officer vesets for assassination mission
_loadoutData set ["officerHats", ["H_Beret_CSAT_01_F"]];	//this line determines officer headgear for assassination missions

_loadoutData set ["cloakUniforms", ["U_I_FullGhillie_lsh"]];
_loadoutData set ["cloakVests", ["hendrix_6b5_7_olive"]];
_loadoutData set ["cloakCarbines", [
["gs_sr3m", "", "", "", ["gs_20rS_9x39mm_SPP"], [], ""]
]];
_loadoutData set ["cloakRifles", [
["gs_vss", "", "", "gs_acc_pso1_1_vss", ["gs_20r_9x39mm_SP6", ""], [], ""]
]];
_loadoutData set ["cloakSidearms", [
["Reak_Sa61", "reak_sa61tlumic", "", "", ["Reak_20Rnd_B_765x17_Ball"], [], ""]
]];

_loadoutData set ["uniforms", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["slUniforms", []];
_loadoutData set ["vests", []];						//don't fill this line - this is only to set the variable
_loadoutData set ["Hvests", []];
_loadoutData set ["sniVests", []];
_loadoutData set ["backpacks", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["longRangeRadios", ["hendrix_r148_radio", "hendrix_rd54_radio_afganka"]];
_loadoutData set ["atBackpacks", ["hendrix_rpg_2"]];
_loadoutData set ["helmets", []];					//don't fill this line - this is only to set the variable
_loadoutData set ["slHat", ["H_Beret_blk"]];
_loadoutData set ["sniHats", ["lshz4"]];

_loadoutData set ["glasses", []];	//cosmetics
_loadoutData set ["goggles", []];		//cosmetics

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the basic medical loadout for vanilla
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the standard medical loadout for vanilla
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the medic medical loadout for vanilla
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

//Unit type specific item sets. Add or remove these, depending on the unit types in use.
private _slItems = ["Laserbatteries", "Laserbatteries", "Laserbatteries"];
private _eeItems = ["ToolKit", "MineDetector"];
private _mmItems = [];

if (A3A_hasACE) then {
    _slItems append ["ACE_microDAGR", "ACE_DAGR"];
    _eeItems append ["ACE_Clacker", "ACE_DefusalKit"];
    _mmItems append ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500"];
};

_loadoutData set ["items_squadLeader_extras", _slItems];
_loadoutData set ["items_rifleman_extras", []];
_loadoutData set ["items_medic_extras", []];
_loadoutData set ["items_grenadier_extras", []];
_loadoutData set ["items_explosivesExpert_extras", _eeItems];
_loadoutData set ["items_engineer_extras", _eeItems];
_loadoutData set ["items_lat_extras", []];
_loadoutData set ["items_at_extras", []];
_loadoutData set ["items_aa_extras", []];
_loadoutData set ["items_machineGunner_extras", []];
_loadoutData set ["items_marksman_extras", _mmItems];
_loadoutData set ["items_sniper_extras", _mmItems];
_loadoutData set ["items_police_extras", []];
_loadoutData set ["items_crew_extras", []];
_loadoutData set ["items_unarmed_extras", []];

//TODO - ACE overrides for misc essentials, medical and engineer gear

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_sfLoadoutData set ["uniforms", ["CBRN_Expansion_Olive"]];
_sfLoadoutData set ["vests", ["hendrix_v95_sumrak_blk"]];
_sfLoadoutData set ["Hvests", ["hendrix_v95_sumrak_blk"]];
_sfLoadoutData set ["backpacks", ["CBRN_CBRN_Specialist_Hazardous_pack"]];
_sfLoadoutData set ["helmets", []];
_sfLoadoutData set ["binoculars", ["Binocular"]];
_sfLoadoutData set ["glasses", ["PMK_1_Gas_mask_B1_F"]];	//cosmetics
_sfLoadoutData set ["goggles", ["PMK_1_Gas_mask_B1_F"]];		//cosmetics
_sfLoadoutData set ["NVGs", []];


_sfLoadoutData set ["lightATLaunchers", [
["vtn_rpg7v2_pg7v", "", "", "", ["vtn_pg7vm", "vtn_pg7vr", "vtn_tbg7v"], [], ""],
]];
_sfLoadoutData set ["missileATLaunchers", [
["launch_SUD_METIS", "", "", "", ["SUD_9m115"], [], ""]
]];
_sfLoadoutData set ["AALaunchers", [
["launch_sud_igla", "", "", "", ["SUD_9m39"], [], ""]
]];

_sfLoadoutData set ["slRifles", [
["hlc_rifle_aks74_GL", "", "", "", ["hlc_30Rnd_545x39_B_AK"], ["PHEN_FSPLUS_ChemGrenade_BlisterAgentGrenade_40mm", "hlcPHEN_FSPLUS_ChemGrenade_NerveAgentGrenade_40mm_GRD_White"], ""]
]];
_sfLoadoutData set ["rifles", [
["hlc_rifle_aks74_GL", "", "", "", ["hlc_30Rnd_545x39_B_AK"], ["PHEN_FSPLUS_ChemGrenade_BlisterAgentGrenade_40mm", "hlcPHEN_FSPLUS_ChemGrenade_NerveAgentGrenade_40mm_GRD_White"], ""],
["gs_asval_g", "", "", "", ["gs_20r_9x39mm_SP6"], [], ""]
]];
_sfLoadoutData set ["grenadeLaunchers", [
["hlc_rifle_aks74_GL", "", "", "", ["hlc_30Rnd_545x39_B_AK"], ["PHEN_FSPLUS_ChemGrenade_BlisterAgentGrenade_40mm", "hlcPHEN_FSPLUS_ChemGrenade_NerveAgentGrenade_40mm_GRD_White"], ""]
]];

_sfLoadoutData set ["SMGs", [
["gs_asval_g", "", "", "", ["gs_20r_9x39mm_SP6"], [], ""]
]];

_sfLoadoutData set ["machineGuns", [
["hlc_rifle_rpk", "hlc_muzzle_762SUP_AK", "", "", ["hlc_75Rnd_762x39_t_rpk"], [], ""]
]];

_sfLoadoutData set ["marksmanRifles", [
["gs_vss_g", "", "", "gs_acc_pso1_1_vss", ["gs_20r_9x39mm_SP6", ""], [], ""]
]];
_sfLoadoutData set ["sniperRifles", [
["gs_vss_g", "", "", "gs_acc_pso1_1_vss", ["gs_20r_9x39mm_SP6", ""], [], ""]
]];
_sfLoadoutData set ["sidearms", [
["ech_pssvul", "", "", "", ["ech_pssvul_6rnd_SP4"], [], ""]
]];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_eliteLoadoutData set ["uniforms", ["u_hendrix_m88_4_afganka"]];
_eliteLoadoutData set ["vests", ["hendrix_smersh_7", "hendrix_6b5_8_olive"]];
_eliteLoadoutData set ["Hvests", ["hendrix_6b5_8_olive"]];
_eliteLoadoutData set ["backpacks", ["hendrix_r148_radio", "hendrix_kolobok_2", "hendrix_rd54_radio_afganka"]];
_eliteLoadoutData set ["helmets", ["hendrix_ushanka", "hendrix_m68_v3_ushanka_net_ushanka", "hendrix_m68_v3_ushanka_net2_ushanka", "hendrix_altyn_beanie", "hendrix_beanie_blk" ]];
_eliteLoadoutData set ["binoculars", ["Binocular"]];
_eliteLoadoutData set ["glasses", ["heandrix_balaklava_gloves_5_Black", "heandrix_gloves_4"]];	//cosmetics
_eliteLoadoutData set ["goggles", []];		//cosmetics
_eliteLoadoutData set ["NVGs", []];


_eliteLoadoutData set ["lightATLaunchers", [
["sp_fwa_m72a1_law_loaded", "", "", "", [], [], ""]
]];
_eliteLoadoutData set ["missileATLaunchers", [
["tbd_spg_launcher", "", "", "tbd_optic_pgo9", ["tbd_spg_launcher_magazine_og9v", "tbd_spg_launcher_magazine_pg9v", "tbd_spg_launcher_magazine_pg9vnt"], [], ""],
["launch_SUD_METIS", "", "", "", ["SUD_9m115"], [], ""]
]];
_eliteLoadoutData set ["AALaunchers", [
["launch_sud_igla", "", "", "", ["SUD_9m39"], [], ""]
]];

_eliteLoadoutData set ["slRifles", [
["hlc_rifle_aks74u", "", "", "", ["hlc_30Rnd_545x39_B_AK"], [], ""],
["hlc_rifle_aks74", "", "", "", ["hlc_30Rnd_545x39_B_AK"], [], ""]
]];
_eliteLoadoutData set ["rifles", [
["hlc_rifle_aks74", "", "", "", ["hlc_30Rnd_545x39_B_AK"], [], ""]
]];
_eliteLoadoutData set ["carbines", [
["hlc_rifle_aks74u", "", "", "", ["hlc_30Rnd_545x39_B_AK"], [], ""]
]];
_eliteLoadoutData set ["grenadeLaunchers", [
["hlc_rifle_aks74_GL", "", "", "", ["hlc_30Rnd_545x39_B_AK"], ["hlc_VOG25_AK", "hlc_GRD_White"], ""]
]];
_eliteLoadoutData set ["SMGs", [
["hlc_rifle_aks74u", "", "", "", ["hlc_30Rnd_545x39_B_AK"], [], ""]
]];

_eliteLoadoutData set ["machineGuns", [
["hlc_rifle_rpk74n", "", "", "", ["hlc_45Rnd_545x39_m_rpk"], [], ""]
]];
_eliteLoadoutData set ["marksmanRifles", [
["gs_vss", "", "", "gs_acc_pso1_1_vss", ["gs_10r_9x39mm_SP5"], [], ""]
]];

_eliteLoadoutData set ["sniperRifles", [
["gs_vss", "", "", "gs_acc_pso1_1_vss", ["gs_10r_9x39mm_SP5"], [], ""]
]];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militaryLoadoutData set ["uniforms", ["u_hendrix_gorka_1", "u_hendrix_gorka_2", "u_hendrix_gorka_1_berezka", "u_hendrix_gorka_2_berezka"]];
_militaryLoadoutData set ["vests", ["hendrix_rpg_2", "hendrix_6b5_5_olive", "hendrix_razgruzka_a_2", "hendrix_razgruzka_a_5", "hendrix_6b5_v2_8_olive", "hendrix_smersh_8"]];
_militaryLoadoutData set ["Hvests", ["hendrix_6b5_pioner_olive_blk", "hendrix_6b5_bvd_5_olive", "hendrix_6b5_11_olive"]];
_militaryLoadoutData set ["backpacks", ["hendrix_rd54_2_afganka", "hendrix_rd54_3_afganka", "hendrix_kolobok_2", "hendrix_rd54_radio_afganka", "hendrix_r148_radio"]];
_militaryLoadoutData set ["helmets", ["hendrix_m68_v2_beanie", "hendrix_m68_v2_net", "hendrix_m68_v3_ushanka_net2_ushanka", "hendrix_m68_v2_butan", "H_Beret_Colonel", "hendrix_ushanka", "hendrix_beanie_g"]];
_militaryLoadoutData set ["binoculars", ["Binocular"]];
_militaryLoadoutData set ["glasses", []];	//cosmetics
_militaryLoadoutData set ["goggles", []];		//cosmetics
_militaryLoadoutData set ["NVGs", []];

_militaryLoadoutData set ["lightATLaunchers", [
["vtn_rpg7v2_pg7v", "", "", "", ["vtn_pg7vm", "vtn_pg7v', "vtn_tbg7v"], [], ""]
]];
_militaryLoadoutData set ["ATLaunchers", ["sp_fwa_m72a1_law_loaded"]];
_militaryLoadoutData set ["AALaunchers", [
["launch_sud_igla", "", "", "", ["SUD_9m39"], [], ""]
]];

_militaryLoadoutData set ["slRifles", [
["hlc_rifle_aks74_MTK", "", "", "", ["hlc_30Rnd_545x39_B_AK"], [], ""],
["hlc_rifle_ak74_dirty", "", "", "", ["hlc_30Rnd_545x39_B_AK"], [], ""],
["hlc_rifle_ak74_dirty2", "", "", "", ["hlc_30Rnd_545x39_B_AK"], [], ""],
["hlc_rifle_aks74_GL", "", "", "", ["hlc_30Rnd_545x39_B_AK"], ["hlc_VOG25_AK", "hlc_GRD_White" ], ""]
]];
_militaryLoadoutData set ["rifles", [
["hlc_rifle_aks74_MTK", "", "", "", ["hlc_30Rnd_545x39_B_AK"], [], ""],
["hlc_rifle_ak74_dirty", "", "", "", ["hlc_30Rnd_545x39_B_AK"], [], ""],
["hlc_rifle_ak74_dirty2", "", "", "", ["hlc_30Rnd_545x39_B_AK"], [], ""]
]];
_militaryLoadoutData set ["carbines", [
["hlc_rifle_aks74u", "", "", "", ["hlc_30Rnd_545x39_B_AK"], [], ""]
]];
_militaryLoadoutData set ["grenadeLaunchers", [
["hlc_rifle_aks74_GL", "", "", "", ["hlc_30Rnd_545x39_B_AK"], ["hlc_VOG25_AK", "hlc_GRD_White" ], ""]
]];
_militaryLoadoutData set ["SMGs", [
["Reak_Sa61", "", "", "", ["Reak_20Rnd_B_765x17_Ball", ""], [], ""]
]];

_militaryLoadoutData set ["machineGuns", [
["LMG_SUD_PK", "", "", "", ["SUD_100Rnd_762x54_PK"], [], ""],
["hlc_rifle_rpk74n", "", "", "", ["hlc_45Rnd_545x39_m_rpk"], [], ""]
]];

_militaryLoadoutData set ["marksmanRifles", [
["gs_vss", "", "", "gs_acc_pso1_1_vss", ["gs_10r_9x39mm_SP5"], [], ""]
]];

_militaryLoadoutData set ["sniperRifles", [
["gs_vss", "", "", "gs_acc_pso1_1_vss", ["gs_10r_9x39mm_SP5"], [], ""]
]];
_militaryLoadoutData set ["sidearms", [
["vtn_aps", "", "", "", ["vtn_aps_20s_pst"], [], ""]
]];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_policeLoadoutData set ["uniforms", ["shf_1"]];
_policeLoadoutData set ["vests", []];
_policeLoadoutData set ["helmets", ["lk_campaign_hat"]];
_policeLoadoutData set ["glasses", ["G_Aviator"]];	//cosmetics
_policeLoadoutData set ["goggles", ["hendrix_armband_bushlat_rh_NVG_g"]];		//cosmetics

_policeLoadoutData set ["SMGs", [
["WBK_AlterHis_MP30_Drilling", "", "", "", ["2Rnd_12Gauge_Pellets", "Drilling_1_Mag"], ["Drilling_1_Mag"], ""],
["sp_fwa_ruger_mini14", "", "", "", ["sp_fwa_20Rnd_556_Ruger_Mini14_ball"], [], ""]
]];
_policeLoadoutData set ["sidearms", [
["sp_fwa_m1911", "", "", "", ["sp_fwa_7Rnd_45acp_m1911"], [], ""],
["vtn_aps", "", "", "", ["vtn_aps_20s_pst"], [], ""]
]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militiaLoadoutData set ["uniforms", ["C_JP_1", "DS_DJ_1", "FJ_DJ_1", "JS_JP_1","J_SP_2", "J_SP_1", "S_SP_1", "JM_SP_1"]];
_militiaLoadoutData set ["vests", []];
_militiaLoadoutData set ["Hvests", ["hendrix_smersh_9"]];
_militiaLoadoutData set ["backpacks", ["hendrix_rd54_1_afganka"]];
_militiaLoadoutData set ["helmets", ["H_Beret_blk"]];
_militiaLoadoutData set ["glasses", ["G_Balaclava_blk"]];	//cosmetics
_militiaLoadoutData set ["goggles", ["hendrix_armband_bushlat_rh_NVG_g"]];		//cosmetics

_militiaLoadoutData set ["ATLaunchers", ["sp_fwa_m72a1_law_loaded"]];

_militiaLoadoutData set ["slRifles", [
["Reak_Sa58V2", "", "", "", ["Reak_30Rnd_762x39_SA58"], [], ""],
["Reak_Sa58V2", "", "", "", ["Reak_30Rnd_762x39_SA58"], [], ""],
]];
_militiaLoadoutData set ["rifles", [
["sp_fwa_kar_98k", "", "", "", ["sp_fwa_5Rnd_792x57_K98"], [], ""],
["sp_fwa_enfield_no5_walnut", "", "", "", ["sp_fwa_stripper_5rnd_303"], [], ""],
["sp_fwa_m1903a1_unertl", "", "", "", ["sp_fwa_stripper_5rnd_3006"], [], ""],
["sp_fwa_m38_carcano", "", "", "", ["sp_fwa_6Rnd_65carcano_m38"], [], ""]
]];
_militiaLoadoutData set ["carbines", [
["WBK_AlterHis_MP30_Drilling", "", "", "", ["2Rnd_12Gauge_Pellets", "Drilling_1_Mag"], ["Drilling_1_Mag"], ""]
]];
_militiaLoadoutData set ["grenadeLaunchers", [
["sp_fwa_m1903", "", "", "", ["sp_fwa_stripper_5rnd_3006", ""], ["sp_fwa_1rnd_riflegrenade_mas_ap", "sp_fwa_1rnd_riflegrenade_mas_wp", "sp_fwa_1rnd_riflegrenade_mas_at_s"], ""]
]];
_militiaLoadoutData set ["SMGs", [
["sp_fwa_smg_sten_mk2", "", "", "", ["sp_fwa_32Rnd_9x19_sten"], [], ""],
["WBK_AlterHis_MP41_PPSH", "", "", "", ["Parabellum_32Rnd_Mag"], [], ""]
]];
_militiaLoadoutData set ["machineGuns", [
["sp_fwa_m1919a6_browning", "", "", "", ["rhs_100Rnd_7sp_fwa_50Rnd_3006_mag62x54mmR"], [], ""]
]];

_militiaLoadoutData set ["marksmanRifles", [
["sp_fwa_m1903a1_unertl", "", "", "sp_fwa_scope_m1903_unertl8x", ["sp_fwa_stripper_5rnd_3006"], [], ""],
["sp_fwa_m1_garand", "", "", "sp_fwa_scope_garand_m84", ["sp_fwa_8Rnd_3006_Garand"], [], ""]
]];
_militiaLoadoutData set ["sniperRifles", [
["sp_fwa_m1903a1_unertl", "", "", "sp_fwa_scope_m1903_unertl8x", ["sp_fwa_stripper_5rnd_3006"], [], ""]
]];
_militiaLoadoutData set ["sidearms", [
["sp_fwa_l9a1_hipower_wood", "", "", "", ["sp_fwa_13Rnd_9mm_HiPower"], [], ""]
]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////


private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
_crewLoadoutData set ["uniforms", ["u_hendrix_gorka_1"]];
_crewLoadoutData set ["vests", ["hendrix_v95_gorka_blk"]];
_crewLoadoutData set ["helmets", ["H_sud_ussr_crew_helmet"]];


private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["u_hendrix_gorka_1"]];
_pilotLoadoutData set ["vests", ["hendrix_v95_gorka_blk"]];
_pilotLoadoutData set ["helmets", ["H_sud_ussr_pilot_helmet"]];





/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////


private _squadLeaderTemplate = {
    [selectRandomWeighted ["helmets", 2, "slHat", 1]] call _fnc_setHelmet;
    [selectRandomWeighted ["glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    [["slUniforms", "uniforms"] call _fnc_fallback] call _fnc_setUniform;

    [["slRifles", "rifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;
    ["primary", 4] call _fnc_addAdditionalMuzzleMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_squadLeader_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["signalsmokeGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["gpses"] call _fnc_addGPS;
    ["binoculars"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _riflemanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted ["glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_rifleman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _radiomanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted ["glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["longRangeRadios"] call _fnc_setBackpack;


    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_rifleman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _medicTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted ["glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;
    [selectRandom ["carbines", "rifles"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_medic"] call _fnc_addItemSet;
    ["items_medic_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _grenadierTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted ["glasses", 0.75, "goggles", 1.25]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    if (random 1 < 0.3) then {
        [["designatedGrenadeLaunchers", "grenadeLaunchers"] call _fnc_fallback] call _fnc_setPrimary;
        ["backpacks"] call _fnc_setBackpack;
    } else {
        ["grenadeLaunchers"] call _fnc_setPrimary;
    };
    
    ["primary", 6] call _fnc_addMagazines;
    ["primary", 10] call _fnc_addAdditionalMuzzleMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_grenadier_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 4] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _explosivesExpertTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted ["glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;


    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_explosivesExpert_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["lightExplosives", 2] call _fnc_addItem;
    if (random 1 > 0.5) then {["heavyExplosives", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["atMines", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["apMines", 1] call _fnc_addItem;};

    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _engineerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted ["glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["carbines", "rifles"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_engineer_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    if (random 1 > 0.5) then {["lightExplosives", 1] call _fnc_addItem;};

    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _latTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted ["glasses", 0.75, "goggles", 1]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    [["lightATLaunchers", "ATLaunchers"] call _fnc_fallback] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_lat_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _atTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted ["glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    [selectRandom ["ATLaunchers", "missileATLaunchers"]] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_at_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _aaTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted ["glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["AALaunchers"] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_aa_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _machineGunnerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted ["glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["machineGuns"] call _fnc_setPrimary;
    ["primary", 4] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_machineGunner_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _marksmanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted ["glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    ["marksmanRifles"] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_marksman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _sniperTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted ["glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["sniVests","vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    [["sniperRifles", "marksmanRifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _policeTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted ["glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    ["SMGs"] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_police_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _crewTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted ["glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    [selectRandom ["carbines", "SMGs"]] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_crew_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["gpses"] call _fnc_addGPS;
    ["NVGs"] call _fnc_addNVGs;
};

private _unarmedTemplate = {
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _traitorTemplate = {
    ["traitorHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.25, "glasses", 0.75]] call _fnc_setFacewear;
    ["traitorVests"] call _fnc_setVest;
    ["traitorUniforms"] call _fnc_setUniform;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _officerTemplate = {
    ["officerHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.25, "glasses", 0.75]] call _fnc_setFacewear;
    ["officerVests"] call _fnc_setVest;
    ["officerUniforms"] call _fnc_setUniform;

    [["SMGs", "carbines"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;
    
    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _patrolSniperTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    [selectRandomWeighted ["glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["cloakVests","vests"] call _fnc_fallback] call _fnc_setVest;
    [["cloakUniforms","uniforms"] call _fnc_fallback] call _fnc_setUniform;

    ["cloakRifles"] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["cloakSidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _patrolSpotterTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    [selectRandomWeighted ["glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["cloakVests","vests"] call _fnc_fallback] call _fnc_setVest;
    [["cloakUniforms","uniforms"] call _fnc_fallback] call _fnc_setUniform;

    ["cloakCarbines"] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["cloakSidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

////////////////////////////////////////////////////////////////////////////////////////
//  You shouldn't touch below this line unless you really really know what you're doing.
//  Things below here can and will break the gamemode if improperly changed.
////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////
//  Special Forces Units   //
/////////////////////////////
private _prefix = "SF";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _sfLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

/*{
    params ["_name", "_loadoutTemplate"];
    private _loadouts = [_sfLoadoutData, _loadoutTemplate] call _fnc_buildLoadouts;
    private _finalName = _prefix + _name;
    [_finalName, _loadouts] call _fnc_saveToTemplate;
} forEach _unitTypes;
*/

///////////////////////
//  Military Units   //
///////////////////////
private _prefix = "military";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Police Units    //
////////////////////////
private _prefix = "police";
private _unitTypes = [
	["SquadLeader", _policeTemplate, [], [_prefix]],
	["Standard", _policeTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _policeLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Militia Units    //
////////////////////////
private _prefix = "militia";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _militiaLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

///////////////////////
//  Elite Units   //
///////////////////////
private _prefix = "elite";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _eliteLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

//////////////////////
//    Misc Units    //
//////////////////////

//The following lines are determining the loadout of vehicle crew
["other", [["Crew", _crewTemplate, [], ["other"]]], _crewLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
["other", [["Pilot", _crewTemplate, [], ["other"]]], _pilotLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the unit used in the "kill the official" mission
["other", [["Official", _officerTemplate, [], ["other"]]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "kill the traitor" mission
["other", [["Traitor", _traitorTemplate, [], ["other"]]], _militiaLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "Invader Punishment" mission
["other", [["Unarmed", _UnarmedTemplate, [], ["other"]]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;