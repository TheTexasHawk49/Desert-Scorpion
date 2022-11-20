if (indWaves isEqualTo 10) then {
	systemChat "[CCE Respawn] You are out of respawn waves";
} else {
	// Increment wave count
	indWaves = indWaves + 1;
	publicVariable "indWaves";
	systemChat format ["[CCE Respawn] You have used %1/8 waves", indWaves];
	// Spawn wave
	[independent, false] remoteExec ["Tun_Respawn_fnc_force_Respawn", 2];
};