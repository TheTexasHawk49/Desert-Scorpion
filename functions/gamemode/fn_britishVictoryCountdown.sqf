//Start 20 min countdown
"[CCE] GREAT BRITAIN CONTROLS ALL SECTORS!" remoteExec ["systemChat"];
"[CCE] If held for 20 minutes, Great Britain will declare a capture victory!" remoteExec ["systemChat"];
for "_i" from 1200 to 0 step -1 do
{
	if !(greatbritainControlsAllSectors) exitWith {"[CCE] Germany has recaptured Chateau and ended the victory timer" remoteExec ["systemChat"];}; // break out
	uiSleep 1;
	format ["Time left: %1", _i] remoteExec ["hintSilent", 0];
	// Base timer statement
	switch (_i) do 
	{
		case 900:
		{
			"[CCE] British Capture Victory: 15 minute(s) remain" remoteExec ["systemChat"];
		};
		case 600:
		{
			"[CCE] British Capture Victory: 10 minute(s) remain" remoteExec ["systemChat"];
		};
		case 300:
		{
			"[CCE] British Capture Victory: 5 minute(s) remain" remoteExec ["systemChat"];
		};
		case 60:
		{
			"[CCE] British Capture Victory: 1 minute(s) remain" remoteExec ["systemChat"];
		};
		case 30:
		{
			"[CCE] British Capture Victory: 30 SECONDS!" remoteExec ["systemChat"];
		};
		case 5:
		{
			"[CCE] British Capture Victory: 5 SECONDS!" remoteExec ["systemChat"];
		};
		case 4:
		{
			"[CCE] British Capture Victory: 4 SECONDS!" remoteExec ["systemChat"];
		};
		case 3:
		{
			"[CCE] British Capture Victory: 3 SECONDS!" remoteExec ["systemChat"];
		};
		case 2:
		{
			"[CCE] British Capture Victory: 2 SECONDS!" remoteExec ["systemChat"];
		};
		default {};
	};
};

if !(greatbritainControlsAllSectors) exitWith {};

"[CCE] Great Britain has successfully unified and held the front line for 20 minutes. BRITISH VICTORY!" remoteExec ["systemChat"];