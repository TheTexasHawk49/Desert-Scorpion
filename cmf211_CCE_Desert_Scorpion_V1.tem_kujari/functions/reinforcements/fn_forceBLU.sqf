if (bluWaves isEqualTo 5) then {
	systemChat "[CCO Respawn] You are out of respawn waves";
} else {
	// Increment wave count
	bluWaves = bluWaves + 1;
	publicVariable "bluWaves";
	systemChat format ["[CCO Respawn] You have used %1/8 waves",bluWaves];
	// Spawn wave
	[WEST, false] remoteExec ["Tun_Respawn_fnc_force_Respawn", 2];
};