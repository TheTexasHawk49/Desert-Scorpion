// Save/load player map markers
[] spawn CCE_fnc_saveLoadMarkers;

// Respawn functions
indWaves			= 0;
indMaxWaves		= 8;
bluWaves			= 0;
bluMaxWaves		= 8;
if (vehicleVarName player isEqualTo "BLU_COY") then {
	_bluaction = ["bforcerespawn","Force a Respawn","",{[] spawn CCE_fnc_forceBLU;},{true}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions","ACE_Equipment"], _bluaction, true] call ace_interact_menu_fnc_addActionToObject;
};
if (vehicleVarName player isEqualTo "IND_COY") then {
	_indaction = ["iforcerespawn","Force a Respawn","",{[] spawn CCE_fnc_forceIND;},{true}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions","ACE_Equipment"], _indaction, true] call ace_interact_menu_fnc_addActionToObject;
};