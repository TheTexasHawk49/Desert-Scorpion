//Start 20 min countdown
"[CCO] GERMANY CONTROLS ALL SECTORS!" remoteExec ["systemChat"];
"[CCO] If held for 20 minutes, Germany will declare a capture victory!" remoteExec ["systemChat"];
for "_i" from 1200 to 0 step -1 do
{
	if !(germanyControlsAllSectors) exitWith {"[CCO] America has recaptured Durandiere and ended the victory timer" remoteExec ["systemChat"];}; // break out
	uiSleep 1;
	// Base timer statement
	format ["Time left: %1", _i] remoteExec ["hintSilent", 0];
	switch (_i) do 
	{
		case 900:
		{
			"[CCO] German Capture Victory: 15 minute(s) remain" remoteExec ["systemChat"];
		};
		case 600:
		{
			"[CCO] German Capture Victory: 10 minute(s) remain" remoteExec ["systemChat"];
		};
		case 300:
		{
			"[CCO] German Capture Victory: 5 minute(s) remain" remoteExec ["systemChat"];
		};
		case 60:
		{
			"[CCO] German Capture Victory: 1 minute(s) remain" remoteExec ["systemChat"];
		};
		case 30:
		{
			"[CCO] German Capture Victory: 30 SECONDS!" remoteExec ["systemChat"];
		};
		case 5:
		{
			"[CCO] German Capture Victory: 5 SECONDS!" remoteExec ["systemChat"];
		};
		case 4:
		{
			"[CCO] German Capture Victory: 4 SECONDS!" remoteExec ["systemChat"];
		};
		case 3:
		{
			"[CCO] German Capture Victory: 3 SECONDS!" remoteExec ["systemChat"];
		};
		case 2:
		{
			"[CCO] German Capture Victory: 2 SECONDS!" remoteExec ["systemChat"];
		};
		default {};
	};
};

if !(germanyControlsAllSectors) exitWith {};

"[CCO] Germany has successfully unified and held the front line for 20 minutes. GERMAN VICTORY!" remoteExec ["systemChat"];