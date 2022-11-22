// Event handlers per sector change -------------------------------------------
[SChateau, "ownerChanged",	// Chateau, northern sector
{
	params ["_sector", "_owner", "_ownerOld"];

	switch (_owner) do 
	{
		case sideUnknown:
		{
			"[CCE] Chateau is neutralized" remoteExec ["systemChat"];
			greatbritainControlsAllSectors = false;
		};
		case WEST:
		{
			Hill92Trigger enableSimulationGlobal true;
			"[CCE] Chateau captured by Germany" remoteExec ["systemChat"];
			// Complete task
			["wtask1","SUCCEEDED"] call BIS_fnc_taskSetState;
			// new task
			//[WEST, ["wtask2"], ["Secure Hill 92", "Take Hill 92", ""], getPos SHill92, "AUTOASSIGNED"] call BIS_fnc_taskCreate;
			greatbritainControlsAllSectors = false;
		};
		case INDEPENDENT:
		{
			if ((SHill92 getVariable "owner") isNotEqualTo INDEPENDENT) exitWith {[_sector,_ownerold] spawn CCO_fnc_resetSector};
			Hill92Trigger enableSimulationGlobal false;
			"[CCE] Chateau captured by Great Britain" remoteExec ["systemChat"];
			// Great Britain victory countdown
			greatbritainControlsAllSectors = true;
			[] spawn CCO_fnc_greatbritainnVictoryCountdown;
		};
	};
}] call BIS_fnc_addScriptedEventHandler;

[SHill92, "ownerChanged",	// Hill92, north of Neaville
{
	params ["_sector", "_owner", "_ownerOld"];

	switch (_owner) do 
	{
		case sideUnknown:
		{
			"[CCE] Hill 92 is contested" remoteExec ["systemChat"];
		};
		case WEST:
		{
			if ((SChateau getVariable "owner") isEqualTo sideUnknown && (SNeaville getVariable "owner") isEqualTo INDEPENDENT) exitWith {[_sector,_ownerold] spawn CCO_fnc_resetSector};
			ChateauTrigger enableSimulationGlobal false;
			"[CCE] Hill 92 captured by Germany" remoteExec ["systemChat"];
			NeavilleTrigger enableSimulationGlobal true;
			// Complete task
			//["wtask2","SUCCEEDED"] call BIS_fnc_taskSetState;
			// new task
			//[WEST, ["wtask3"], ["Secure Neaville", "Take Neavile", ""], getPos SNeaville, "AUTOASSIGNED"] call BIS_fnc_taskCreate;
		};
		case INDEPENDENT:
		{
			if ((SNeaville getVariable "owner") isEqualTo sideUnknown && (SChateau getVariable "owner") isEqualTo WEST) exitWith {[_sector,_ownerold] spawn CCO_fnc_resetSector};
			NeavilleTrigger enableSimulationGlobal false;
			"[CCE] Hill 92 captured by Great Britain" remoteExec ["systemChat"];
			ChateauTrigger enableSimulationGlobal true;
			// Complete task
			//["itask4","SUCCEEDED"] call BIS_fnc_taskSetState;
			// new task
			//[INDEPENDENT, ["itask5"], ["Secure Hill 92", "Take Hill 92", ""], getPos SChateau, "AUTOASSIGNED"] call BIS_fnc_taskCreate;
		};
	};
}] call BIS_fnc_addScriptedEventHandler;

[SNeaville, "ownerChanged",	// Neaville
{
	params ["_sector", "_owner", "_ownerOld"];

	switch (_owner) do 
	{
		case sideUnknown:
		{
			"[CCE] Neaville is contested" remoteExec ["systemChat"];
		};
		case WEST:
		{
			if ((SHill92 getVariable "owner") isEqualTo sideUnknown && (SHill93 getVariable "owner") isEqualTo INDEPENDENT) exitWith {[_sector,_ownerold] spawn CCO_fnc_resetSector};
			Hill92Trigger enableSimulationGlobal false;
			"[CCE] Neaville captured by Germany" remoteExec ["systemChat"];
			Hill93Trigger enableSimulationGlobal true;
			// Complete task
			//["wtask3","SUCCEEDED"] call BIS_fnc_taskSetState;
			// new task
			//[WEST, ["wtask4"], ["Secure Hill 93", "Take Hill 93", ""], getPos SHill93, "AUTOASSIGNED"] call BIS_fnc_taskCreate;
		};
		case INDEPENDENT:
		{
			if ((SHill93 getVariable "owner") isEqualTo sideUnknown && (SHill92 getVariable "owner") isEqualTo WEST) exitWith {[_sector,_ownerold] spawn CCO_fnc_resetSector};
			Hill93Trigger enableSimulationGlobal false;
			"[CCE] Neaville captured by Great Britain" remoteExec ["systemChat"];
			Hill92Trigger enableSimulationGlobal true;
			// Complete task
			//["itask3","SUCCEEDED"] call BIS_fnc_taskSetState;
			// new task
			//[INDEPENDENT, ["itask4"], ["Secure Hill 92", "Take Hill 92", ""], getPos SHill92, "AUTOASSIGNED"] call BIS_fnc_taskCreate;
		};
	};
}] call BIS_fnc_addScriptedEventHandler;

[SHill93, "ownerChanged",	// Hill93, south of Neaville
{
	params ["_sector", "_owner", "_ownerOld"];

	switch (_owner) do 
	{
		case sideUnknown:
		{
			"[CCE] Hill 93 is contested" remoteExec ["systemChat"];
		};
		case WEST:
		{
			if ((SNeaville getVariable "owner") isEqualTo sideUnknown && (SDurandiere getVariable "owner") isEqualTo INDEPENDENT) exitWith {[_sector,_ownerold] spawn CCO_fnc_resetSector};
			NeavilleTrigger enableSimulationGlobal false;
			"[CCE] Hill 93 captured by Germany" remoteExec ["systemChat"];
			DuraTrigger enableSimulationGlobal true;
			// Complete task
			//["wtask4","SUCCEEDED"] call BIS_fnc_taskSetState;
			// new task
			//[WEST, ["wtask5"], ["Secure Durandiere", "Take Durandiere", ""], getPos SDurandiere, "AUTOASSIGNED"] call BIS_fnc_taskCreate;
		};
		case INDEPENDENT:
		{
			if ((SDurandiere getVariable "owner") isEqualTo sideUnknown && (SNeaville getVariable "owner") isEqualTo WEST) exitWith {[_sector,_ownerold] spawn CCO_fnc_resetSector};
			DuraTrigger enableSimulationGlobal false;
			"[CCE] Hill 93 captured by Great Britain" remoteExec ["systemChat"];
			NeavilleTrigger enableSimulationGlobal true;
			// Complete task
			//["itask2","SUCCEEDED"] call BIS_fnc_taskSetState;
			// new task
			//[INDEPENDENT, ["itask3"], ["Secure Neaville", "Take Neaville", ""], getPos SNeaville, "AUTOASSIGNED"] call BIS_fnc_taskCreate;
		};
	};
}] call BIS_fnc_addScriptedEventHandler;

[SDurandiere, "ownerChanged",	// Dura, southern cap
{
	params ["_sector", "_owner", "_ownerOld"];

	switch (_owner) do 
	{
		case sideUnknown:
		{
			"[CCE] Durandiere is contested" remoteExec ["systemChat"];
			germanyControlsAllSectors = false;
		};
		case WEST:
		{
			if ((SHill93 getVariable "owner") isNotEqualTo WEST) exitWith {[_sector,_ownerold] spawn CCO_fnc_resetSector};
			Hill93Trigger enableSimulationGlobal false;
			"[CCE] Durandiere captured by Germany" remoteExec ["systemChat"];
			// Complete task
			//["wtask5","SUCCEEDED"] call BIS_fnc_taskSetState;
			// Hold for completion
			//[WEST, ["wtask6"], ["Hold the line", "Hold the front line for 20 mins for a capture victory", ""], getPos SDurandiere, "AUTOASSIGNED"] call BIS_fnc_taskCreate;
			// German victory countdown
			germanyControlsAllSectors = true;
			[] spawn CCO_fnc_germanVictoryCountdown;
		};
		case INDEPENDENT:
		{
			Hill93Trigger enableSimulationGlobal true;
			"[CCE] Durandiere captured by Great Britain" remoteExec ["systemChat"];
			// Complete task
			//["itask1","SUCCEEDED"] call BIS_fnc_taskSetState;
			// new task
			//[INDEPENDENT, ["itask2"], ["Secure Hill 93", "Take Hill 93", ""], getPos SHill93, "AUTOASSIGNED"] call BIS_fnc_taskCreate;
			germanyControlsAllSectors = false;
		};
	};
}] call BIS_fnc_addScriptedEventHandler;