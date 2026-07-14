private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;

//////////////////////////
//       Vehicles       //
//////////////////////////    

["vehiclesCivCar", [
"bo_app66_green_old",  0.7
,"bo_app66_blue_old", 0.7
,"VAZ2107_UCG_Green_mat", 0.7
,"VAZ2107_UCG_Yellow", 0.7
,"VAZ2107_UCG_Ton_mat", 0.7
,"VAZ2107_UCG_White", 0.7
,"VAZ2107_UCG_Red", 0.7
,"VAZ2107_UCG_Ton", 0.7
, "walker_a3_hilux" , 0.5
,"SIG_SuperBeeB", 0.4
,"SIG_Magnums", 0.4
,"SIG_Hcode", 0.4
,"SIG_Roadrunner", 0.4
,"SIG_SuperBeeM", 0.4
,"SIG_SuperBeeG", 0.4
,"SIG_SuperBeeY", 0.4
,"VAZ2115_UCG_Black", 0.1
,"VAZ2115_UCG_Ton", 0.1
,"beetle", 0.1
,"bmw_e30_stock", 0.1
]] call _fnc_saveToTemplate;

["vehiclesCivIndustrial", [
"MAZ_500_Sedl", 0.3
,"MAZ_500_Bort", 0.3
,"ZIL131_UCG_open_3", 0.3
,"ZIL131_UCG_Cargo", 0.3
,"ford_e350_stock", 0.3
,"ford_e350_red", 0.3
,"Unimog_I_Flatbed_viv", 0.3
    ]] 
    
    call _fnc_saveToTemplate;

["vehiclesCivBoat", [
"xs_kazanka", 0.7
,"xs_kazanka_green", 0.7
,"xs_progress2", 0.7
,"sab_boat", 0.5
,"rksla3_lcvpmk5_1_civ", 0.2
,"HWK_TRAWLER_C", 0.2

    ]] call _fnc_saveToTemplate;

["vehiclesCivRepair", [
    "ZIL131_UCG_ENG", 0.1
    ]] call _fnc_saveToTemplate;

["vehiclesCivMedical", [
	"Unimog_I_Medical", 0.1
]] call _fnc_saveToTemplate;

["vehiclesCivFuel", [
    "MAZ_500_Fuel", 0.1
]] call _fnc_saveToTemplate;

["vehiclesCivPlanes", [
"CAP_an24_ussr", 0.3
,"CAP_il18d_aeroflot", 0.3
,"cap_tu154_aeroflot", 0.3
,"CAP_il76td_vvs", 0.3
,"an12bkv3_USSR_11814", 0.7
,"bo_an14", 1
]]  
  
  call _fnc_saveToTemplate;

["vehiclesCivHeli", [
"bo_ka26", 1
,"bo_ka26_CIV2", 1
,"bo_ka26_speed", 1
  ]] call _fnc_saveToTemplate;
  
/////////////////////////////////
///  Identities and currency  ///
////////////////////////////////

["currencySymbol", "₽"] call _fnc_saveToTemplate;

["faces", [
"PersianHead_A3_01", 
"PersianHead_A3_02", 
"PersianHead_A3_03", 
"LivonianHead_1", 
"LivonianHead_2", 
"LivonianHead_3", 
"LivonianHead_4", 
"LivonianHead_5", 
"LivonianHead_6", 
"LivonianHead_7", 
"LivonianHead_8", 
"LivonianHead_9", 
"LivonianHead_10", 
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
"GreekHead_A3_09", 
"GreekHead_A3_01", 
"GreekHead_A3_02", 
"GreekHead_A3_03", 
"AsianHead_A3_01",
"AsianHead_A3_02",
"AsianHead_A3_03",
"AsianHead_A3_04",
"AsianHead_A3_05", 
"AsianHead_A3_06",
"AfricanHead_01",
"AfricanHead_02",
"AfricanHead_03",
"RussianHead_1",
"RussianHead_2",
"RussianHead_3",
"RussianHead_4",
"RussianHead_5"
]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////

private _civUniforms = [
"C_JP_1", 
"DS_DJ_1",
"FJ_DJ_1",
"JS_JP_1",
"J_SP_2",
"J_SP_1",
"S_SP_1",
"T_JP_1",
"T_S_1",
"TJ_S_1",
"JM_SP_1"
];          //Uniforms given to Normal Civs

private _pressUniforms = [
    "U_C_Journalist",
    "U_Marshal"
    ];            //Uniforms given to Press/Journalists

private _workerUniforms = [
"C_JP_1", 
"DS_DJ_1",
"FJ_DJ_1",
"JS_JP_1",
"J_SP_2",
"J_SP_1",
"S_SP_1",
"T_JP_1",
"T_S_1",
"TJ_S_1",
"JM_SP_1"
    ];           //Uniforms given to Workers at Factories/Resources

private _dlcUniforms = [];          //Uniforms given if DLCs are enabled, only given to the Arsenal not Civilians

if (_hasApex) then {_dlcUniforms append [];
};

if (_hasLawsOfWar) then {_dlcUniforms append [];
};

["uniforms", _civUniforms + _pressUniforms + _workerUniforms + _dlcUniforms] call _fnc_saveToTemplate;          //Uniforms given to the Arsenal, Allowed for Undercover and given to Rebel Ai that go Undercover

_civhats = [];

["headgear", _civHats] call _fnc_saveToTemplate;            //Headgear given to Normal Civs, Workers, Undercover Rebels.

private _loadoutData = call _fnc_createLoadoutData;

_loadoutData set ["uniforms", _civUniforms];
_loadoutData set ["pressUniforms", _pressUniforms];
_loadoutData set ["workerUniforms", _workerUniforms];
_loadoutData set ["pressVests", ["V_Press_F"]];
_loadoutData set ["helmets", _civHats];
_loadoutData set ["glasses", ["G_Aviator", "G_Shades_Black"]];
_loadoutData set ["pressHelmets", ["Armaslav_MSW_Helm99"]];

_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];


private _manTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["glasses"] call _fnc_setFacewear;
    ["uniforms"] call _fnc_setUniform;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};
private _workerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["glasses"] call _fnc_setFacewear;
    ["workerUniforms"] call _fnc_setUniform;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};
private _pressTemplate = {
    ["pressHelmets"] call _fnc_setHelmet;
    ["pressVests"] call _fnc_setVest;
    ["pressUniforms"] call _fnc_setUniform;

    ["items_medical_standard"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};
private _prefix = "militia";
private _unitTypes = [
    ["Press", _pressTemplate],
    ["Worker", _workerTemplate],
    ["Man", _manTemplate]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;