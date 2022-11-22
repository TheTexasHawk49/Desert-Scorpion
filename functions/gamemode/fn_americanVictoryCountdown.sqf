//Start 20 min countdown
"[CCO] AMERICA CONTROLS ALL SECTORS!" remoteExec ["systemChat"];
"[CCO] If held for 20 minutes, America will declare a capture victory!" remoteExec ["systemChat"];
for "_i" from 1200 to 0 step -1 do
{
	if !(americaControlsAllSectors) exitWith {"[CCO] Germany has recaptured Chateau and ended the victory timer" remoteExec ["systemChat"];}; // break out
	uiSleep 1;
	format ["Time left: %1", _i] remoteExec ["hintSilent", 0];
	// Base timer statement
	switch (_i) do 
	{
		case 900:
		{
			"[CCO] American Capture Victory: 15 minute(s) remain" remoteExec ["systemChat"];
		};
		case 600:
		{
			"[CCO] American Capture Victory: 10 minute(s) remain" remoteExec ["systemChat"];
		};
		case 300:
		{
			"[CCO] American Capture Victory: 5 minute(s) remain" remoteExec ["systemChat"];
		};
		case 60:
		{
			"[CCO] American Capture Victory: 1 minute(s) remain" remoteExec ["systemChat"];
		};
		case 30:
		{
			"[CCO] American Capture Victory: 30 SECONDS!" remoteExec ["systemChat"];
		};
		case 5:
		{
			"[CCO] American Capture Victory: 5 SECONDS!" remoteExec ["systemChat"];
		};
		case 4:
		{
			"[CCO] American Capture Victory: 4 SECONDS!" remoteExec ["systemChat"];
		};
		case 3:
		{
			"[CCO] American Capture Victory: 3 SECONDS!" remoteExec ["systemChat"];
		};
		case 2:
		{
			"[CCO] American Capture Victory: 2 SECONDS!" remoteExec ["systemChat"];
		};
		default {};
	};
};

if !(americaControlsAllSectors) exitWith {};

"[CCO] America has successfully unified and held the front line for 20 minutes. AMERICAN VICTORY!" remoteExec ["systemChat"];