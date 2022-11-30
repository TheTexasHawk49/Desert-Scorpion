//if ((flag getVariable "owner") isEqualTo Independent) exitWith 

params ["_sector", "_owner", "_ownerOld"];

	switch (_owner) do 
	{
		case WEST:
		{
      if ((Flag_a getVariable "owner") isEqualTo BLUFOR) exitWith {[_sector,_ownerold] spawn zone1captureblue};
			Flag_a enableSimulationGlobal false;
			"[CCE] Germany has won the Campaign" remoteExec ["systemChat"];
			// Great Britain victory countdown
			greatbritainControlsAllSectors = true;
			[] spawn CCO_fnc_greatbritainnVictoryCountdown;
			
      trigger_a enableSimulationGlobal true;

		case INDEPENDENT:
		{
			if ((Flag_a getVariable "owner") isNotEqualTo INDEPENDENT) exitWith {[_sector,_ownerold] spawn zone1captureind};
			Flag_a enableSimulationGlobal false;

