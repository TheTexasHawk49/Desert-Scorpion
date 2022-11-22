if (bluWaves isEqualTo bluMaxWaves) then {
	systemChat "[CCE Respawn] You are out of respawn waves";
} else {
	// Increment wave count
	bluWaves = bluWaves + 1;
	publicVariable "bluWaves";
	systemChat format ["[CCE Respawn] You have used %1/8 waves", bluWaves];
	// Spawn wave
	[west, false] remoteExec ["Tun_Respawn_fnc_force_Respawn", 2];
};