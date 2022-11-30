/*/////////////////////////////////////////////////////////

	Simple vehicle respawn script by Jester

		- Detects vehicle death, deletion, or abandonment, waits, and respawns the vehicle at starting position
		- Vehicle is respawned with original Garage configuration
		- Run on server only, scheduled
 
*//////////////////////////////////////////////////////////

if (!isServer) exitWith {};

/*///////////////////////////////////////////////////////

	BEGIN USER CONFIG

*////////////////////////////////////////////////////////

// input all vehicles to respawn in format [vehName, crew restricted boolean, timer, fnc]
CCE_vehs =
[
	[btank1,				true,			(15 * 60),		{}]
	,[btank2,			true,			(15 * 60),		{}]
	,[btank3,			true,			(15 * 60),		{}]
	,[btank4,			true,			(15 * 60),		{}]
	,[bapc1,				false,		(10 * 60),		{}]
	,[bapc2,				false,		(10 * 60),		{}]
	,[bapc3,				false,		(10 * 60),		{}]
	,[bapc4,				false,		(10 * 60),		{}]
	,[bapc5,				false,		(10 * 60),		{}]
	,[bapc6,				false,		(10 * 60),		{}]
	,[barty1,			false,		(30 * 60),		{}]
	,[barty2,			false,		(30 * 60),		{}]
	,[barty3,			false,		(30 * 60),		{}]
	,[btruck1,			false,		(5 * 60),		{}]
	,[btruck2,			false,		(5 * 60),		{}]
	,[btruck3,			false,		(5 * 60),		{}]
	,[btruck4,			false,		(5 * 60),		{}]
	,[btruck5,			false,		(5 * 60),		{}]
	,[btruck6,			false,		(5 * 60),		{}]
	,[bfuel,				false,		(30 * 60),		{}]
	,[bammo,				false,		(30 * 60),		{}]
	,[brepair,			false,		(30 * 60),		{}]
	,[bmed,				false,		(30 * 60),		{}]
	,[bkubel1,			false,		(5 * 60),		{}]
	,[bkubel2,			false,		(5 * 60),		{}]
	,[itank1,			true,			(20 * 60),		{}]
	,[itank2,			true,			(20 * 60),		{}]
	,[itank3,			true,			(20 * 60),		{}]
	//,[itank4,			true,			(20 * 60),		{}]
	,[iapc1,				false,		(10 * 60),		{}]
	,[iapc2,				false,		(10 * 60),		{}]
	,[iapc3,				false,		(10 * 60),		{}]
	,[iapc4,				false,		(10 * 60),		{}]
	,[iapc5,				false,		(10 * 60),		{}]
	,[iapc6,				false,		(10 * 60),		{}]
	,[ijeep1,			false,		(5 * 60),		{}]
	,[ijeep2,			false,		(5 * 60),		{}]
	,[ijeep3,			false,		(5 * 60),		{}]
	,[ijeep4,			false,		(5 * 60),		{}]
	//,[ijeep5,			false,		(5 * 60),		{}]
	//,[ijeep6,			false,		(5 * 60),		{}]
	//,[ijeep7,			false,		(5 * 60),		{}]
	,[ijeepmg1,			false,		(15 * 60),		{}]
	//,[ijeepmg2,			false,		(15 * 60),		{}]
	//,[ijeepmg3,			false,		(15 * 60),		{}]
	,[itruck1,			false,		(5 * 60),		{}]
	,[itruck2,			false,		(5 * 60),		{}]
	,[itruck3,			false,		(5 * 60),		{}]
	,[itruck4,			false,		(5 * 60),		{}]
	,[itruck5,			false,		(5 * 60),		{}]
	//,[itruck6,			false,		(5 * 60),		{}]
	,[ifuel,				false,		(30 * 60),		{}]
	,[iammo,				false,		(30 * 60),		{}]
	,[irepair,			false,		(30 * 60),		{}]
	,[imed,				false,		(30 * 60),		{}]
	,[iarty1,			false,		(30 * 60),		{}]
	,[iarty2,			false,		(30 * 60),		{}]
	,[iarty3,			false,		(30 * 60),		{}]
	,[iplane1,			false, 		(30 * 60),		{}]
];

// enable/disable abandoned vehicle auto respawn
CCE_vehicleCleanerOn = true;

// seconds before an abandoned vehicle is deleted and the respawn wait begins (use multiples of 10)
CCE_vehicleCleanerTime = (3 * 60);

// meters from friendlies for a vehicle to be considered abandoned
CCE_vehicleCleanerDis = 200;

// banned vehicle magazines
VehBannedMagazines =
[
	"LIB_60x_SprGr34_KWK40_HE"
	,"LIB_60x_M42A1_M1_HE"
	,"LIB_Shell_76L55_HEMk1_HE"
	,"CSA38_HE_M48"
];

/*///////////////////////////////////////////////////////

	END USER CONFIG, DON'T TOUCH BELOW CODE

*////////////////////////////////////////////////////////

// adds handlers to vehicles that start respawn process and remove themselves
JST_fnc_addVehRespawnHandlers =
{
	params ["_veh"];
	
	// killed: remove all handlers, start respawn loop
	_veh addMPEventHandler
	[
		"MPKilled",
		{
			params ["_unit", "_killer", "_instigator", "_useEffects"];
			// do not run if not server
			if !(isServer) exitWith {};
			// pull data
			private _vehArray = _unit getVariable "CCE_vehArray";
			// remove all event handlers
			_unit removeAllMPEventHandlers "MPKilled";
			[_unit, "Deleted"] remoteExec ["removeAllEventHandlers", 0];
			// delete all attached objects
			{
				deleteVehicle _x;
			} forEach (attachedObjects _unit);
			// respawn on server
			[_vehArray] remoteExec ["JST_fnc_vehRespawn", 2];
		}
	];
	
	// deleted: remove all handlers, start respawn loop
	_veh addEventHandler
	[
		"Deleted",
		{
			params ["_unit"];
			// do not run if not server
			if !(isServer) exitWith {};
			// pull data
			private _vehArray = _unit getVariable "CCE_vehArray";
			// remove all event handlers
			_unit removeAllMPEventHandlers "MPKilled";
			[_unit, "Deleted"] remoteExec ["removeAllEventHandlers", 0];
			// delete all attached objects
			{
				deleteVehicle _x;
			} forEach (attachedObjects _unit);
			// respawn on server
			[_vehArray] remoteExec ["JST_fnc_vehRespawn", 2];
		}
	];
};

// process that handles the actual respawn wait and spawn
JST_fnc_vehRespawn =
{
	params ["_vehArray"];
	if (!isServer) exitWith {};
	
	// pull respawn data from dead unit
	_vehArray params ["_originalUnitVar", "_restricted", "_time", "_pos", "_vDirAndUp", "_class", "_config", "_name", "_attObjs", "_fnc", "_sideLocInfo"];
	
	// wait respawn time
	UIsleep _time;
	
	// find nearest safe position to respawn point
	private _safePos = _pos findEmptyPosition [0, 30, _class];
	
	// respawn vehicle
	private _unitVar = createVehicle [_class, [(_safePos select 0), (_safePos select 1), ((_safePos select 2) + 10000)], [], 0, "NONE"];
	
	// set up its variable name
	_unitVar setVehicleVarName _name;
	
	// position it properly
	_unitVar setVectorDirAndUp _vDirAndUp;
	_unitVar setPos [(_safePos select 0), (_safePos select 1), ((_safePos select 2) + 1.5)];
	_unitVar setVectorDirAndUp _vDirAndUp;
	[_unitVar, _config select 0, _config select 1] call BIS_fnc_initVehicle;
	
	// add to zeuses
	{
		_x addCuratorEditableObjects [[_unitVar], true]
	} forEach allCurators;
	
	// add event handlers
	[_unitVar] call JST_fnc_addVehRespawnHandlers;
	
	// save respawn data onto vehicle
	_unitVar setVariable ["CCE_vehArray", _vehArray, true];
	
	// safety check
	UIsleep 1;
	_unitVar setDamage 0;
	UIsleep 1;
	_unitVar setDamage 0;
	
	// Remove banned magazines
	{
		_unitVar removeMagazinesTurret [_x, [0]];
	} forEach VehBannedMagazines;
	
	// recreate attached objects, if any
	if ((count _attObjs) > 0) then
	{
		{
			_x params ["_type", "_relPos", "_vDirAndUp"];
			private _posSafe = [(_pos select 0), (_pos select 1), 100];
			private _obj = createVehicle [_type, _posSafe, [], 0, "CAN_COLLIDE"];
			_obj enableSimulationGlobal false;
			_obj setPos (_unitVar modelToWorld _relPos);
			_obj setVectorDirAndUp _vDirAndUp;
			[_obj, _unitVar] call BIS_fnc_attachToRelative;
		} forEach _attObjs;
	};
	
	// recreate setVariable'd sideLocInfo, if any
	_unitVar setVariable ["sideLocInfo", _sideLocInfo, true];
	
	// run any functions assigned to this vehicle
	[_unitVar] call _fnc;
};

// wait for mission start
waitUntil {time > 3};
waitUntil {!(isNil "CCE_vehs")};

// handle vehicles at start: save data, remove banned magazines, add handlers
{
	// variable of vehicle
	private _unitVar = _x select 0;
	
	// find attached objects, if any
	private _attObjs = [];
	{ 
		private _type = typeOf _x;
		private _relPos = _unitVar worldToModel (getPos _x);
		private _vDir = vectorDir _x;
		private _vUp = vectorUp _x;
		_attObjs pushBack [_type, _relPos, [_vDir, _vUp]];
	} forEach (attachedObjects _unitVar);
	
	// in Eden, mission maker can setVariable in init for respawn notification [array of sides to notify, location name]
	// defaults to generic stuff if no input
	private _configSide = switch (getNumber (configfile >> "CfgVehicles" >> typeOf _unitVar >> "side")) do
	{
		case 0: {EAST};
		case 1: {WEST};
		case 2: {INDEPENDENT};
		case 3: {CIVILIAN};
		default {CIVILIAN};
	};
	private _sideLocInfo = _unitVar getVariable["sideLocInfo", [[_configSide],"MAIN"]];
	
	// get vehicle data...
	private _vehArray =
	[
		_unitVar								// the vehicle
		,_x select 1						// crew restricted boolean
		,_x select 2						// respawn wait time
		,getPos _unitVar					// current position
		,[
			vectorDir _unitVar			// direction it's facing
			,vectorUp _unitVar				// what is up??? gotta know
		]
		,typeOf _unitVar					// classname of vehicle
		,[_unitVar] call BIS_fnc_getVehicleCustomization // garage attributes
		,vehicleVarName _unitVar		// eden variable name
		,_attObjs							// attached objects
		,_x select 3						// assigned functions
		,_unitVar getVariable ["sideLocInfo", [[_configSide],"MAIN"]]	// side and location name info from mission maker
	];
	
	// ... and store it on vehicle
	_unitVar setVariable ["CCE_vehArray", _vehArray, true];
	
	// Remove banned magazines
	{
		_unitVar removeMagazinesTurret [_x, [0]];
	} forEach VehBannedMagazines;
	
	// run any functions assigned to this vehicle
	[_unitVar] spawn (_x select 3);
	
	// add handlers
	[_unitVar] spawn JST_fnc_addVehRespawnHandlers;
	
	// short sleep to avoid overload
	UIsleep 0.25;
	
} forEach CCE_vehs;

// start idle check loop if enabled
if (CCE_vehicleCleanerOn) then
{
	[] spawn
	{
		// enable/disable debug
		private _debug = false;
		
		// calculate max ticks before an abandoned vehicle is processed
		private _maxTicks = CCE_vehicleCleanerTime / 10;
		
		// start ten second loop to check vehicles
		while {UIsleep 10; CCE_vehicleCleanerOn} do
		{
			if (_debug) then {systemChat "idleChecker starting loop over vehicles..."};
			{
				// skip dead vehicles, thanks Arma
				if (!alive _x) then {continue};
			
				// vehicle and pos variables
				private _veh = _x;
				private _pos = getPos _veh;
				
				// if not a respawn vehicle, skip
				private _vehArray = _veh getVariable ["CCE_vehArray", 0];
				if (_vehArray isEqualTo 0) then
				{
					if (_debug) then {systemChat format ["Skipping non-respawn vehicle: %1", _veh]};
					continue
				};
				if (_debug) then {systemChat format ["Found respawn vehicle: %1", _veh]};
				
				// get idleChecker variables; if none, init them
				private _idleChecker = _veh getVariable ["CCE_idleChecker", 0];
				if (_idleChecker isEqualTo 0) then
				{
					_veh setVariable ["CCE_idleChecker", [_pos, 0]];
					_idleChecker = [_pos, 0];
					if (_debug) then {systemChat format ["Initializing idleChecker at 0 ticks: %1", _veh]};
				};
				
				// if current pos is not the same as stored pos, override to 0 ticks and skip
				if (((_idleChecker select 0) distance2D _pos) > 1) then
				{
					_veh setVariable ["CCE_idleChecker", [_pos, 0]];
					if (_debug) then {systemChat format ["Skipping moved vehicle: %1", _veh]};
					continue
				};
				if (_debug) then {systemChat format ["... is stationary vehicle: %1", _veh]};
				
				// if near original spawn point, override to 0 ticks and skip
				private _spawnPos = _vehArray select 3;
				if ((_pos distance2D _spawnPos) < 20) then
				{
					_veh setVariable ["CCE_idleChecker", [_pos, 0]];
					if (_debug) then {systemChat format ["Skipping vehicle near its spawn: %1", _veh]};
					continue
				};
				if (_debug) then {systemChat format ["... is not near its spawn: %1", _veh]};
				
				// if crewed, override to 0 ticks and skip
				private _cnt = 0;
				{
					if (alive _x) then {_cnt = _cnt + 1};
				} forEach (crew _veh);
				if (_cnt > 0) then
				{
					_veh setVariable ["CCE_idleChecker", [_pos, 0]];
					if (_debug) then {systemChat format ["Skipping crewed vehicle: %1", _veh]};
					continue
				};
				if (_debug) then {systemChat format ["... is not crewed: %1", _veh]};
				
				// if within X meters of a friendly player, override to 0 ticks and skip
				private _sideLocInfo = _vehArray select 10;
				private _friendlyNearby = false;
				{
					private _vehSide = _x;
					{
						private _player = _x;
						if (((side _player) isEqualTo _vehSide) and ((_pos distance2D _player) < CCE_vehicleCleanerDis)) exitWith
						{
							_friendlyNearby = true;
						};
					} forEach allPlayers;
				} forEach (_sideLocInfo select 0);
				if (_friendlyNearby) then
				{
					_veh setVariable ["CCE_idleChecker", [_pos, 0]];
					if (_debug) then {systemChat format ["Skipping vehicle near friendlies: %1", _veh]};
					continue
				};
				if (_debug) then {systemChat format ["... is not near friendlies: %1", _veh]};
				
				// increment ticks on and eventually respawn the remaining vehicles
				private _lastPos = _idleChecker select 0;
				private _currentTick = _idleChecker select 1;
				private _handled = false;
				switch (true) do
				{
					// if the vehicle is < max ticks and hasn't moved since last tick, increment tick
					case ((_currentTick < _maxTicks) and ((_lastPos distance2D _pos) < 1)):
					{
						if (_debug) then {systemChat format ["INCREMENTING TICK (%2) ON: %1", _veh, _currentTick]};
						_veh setVariable ["CCE_idleChecker", [_pos, (_currentTick + 1)]];
						_handled = true;
					};
					
					// if the vehicle is < max ticks and not near original spawn, add the first tick
					case ((_currentTick < _maxTicks) and ((_spawnPos distance2D _pos) > 20)):
					{
						if (_debug) then {systemChat format ["ADDING FIRST TICK (%2) ON: %1", _veh, _currentTick]};
						_veh setVariable ["CCE_idleChecker", [_pos, (_currentTick + 1)]];
						_handled = true;
					};
					
					// if the vehicle is >= max ticks and hasn't moved since last tick, respawn
					case ((_currentTick >= _maxTicks) and ((_lastPos distance2D _pos) < 1)):
					{
						if (_debug) then {systemChat format ["RESPAWNING: %1", _veh]};
						_handled = true;
						deleteVehicle _veh;
					};
				};
				
				// debug remaining vehicles
				if ((!_handled) and (_debug)) then
				{
					systemChat format ["%1 was totally ignored, idleChecker reads %2", _veh, _idleChecker]
				};
				
			} forEach vehicles;
		};
	};
};