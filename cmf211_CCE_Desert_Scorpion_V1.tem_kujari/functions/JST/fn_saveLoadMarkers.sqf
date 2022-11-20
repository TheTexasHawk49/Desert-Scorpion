// save all user-created map markers to profile
JST_fnc_saveMarkers =
{
	private _array = [];
	{
		if (_x find "_USER_DEFINED #" != -1) then
		{
			_array pushBack [_x, markerPos _x, markerSize _x, markerDir _x, markerType _x, markerColor _x, markerText _x, markerPolyline _x];
		};
	} forEach allMapMarkers;
	profileNamespace setVariable ["JST_savedMarkers", _array];
	saveProfileNamespace;
	copyToClipboard str _array;
	systemChat "User-created markers saved to your Arma profile and copied to your clipboard";
};

// paste map markers from profile
JST_fnc_loadMarkers =
{
	private _array = profileNamespace getVariable ["JST_savedMarkers", -1];
	if !(_array isEqualTo -1) then
	{
		// if side channel enabled, use it, else use group
		private _channel = if (channelEnabled 1 select 0) then {1} else {3};
		{
			_x params ["_name", "_pos", "_size", "_dir", "_type", "_color", "_text", "_poly"];
			private _marker = createMarkerLocal [_name, _pos, _channel];
			_marker setMarkerSizeLocal _size;
			_marker setMarkerDirLocal _dir;
			_marker setMarkerTypeLocal _type;
			_marker setMarkerColorLocal _color;
			if ((count _poly) > 0) then
			{
				_marker setMarkerPolylineLocal _poly;
			};
			_marker setMarkerText _text;
		} forEach _array;
		systemChat format ["Markers loaded from your Arma profile into %1 channel.", (if (_channel isEqualTo 1) then {"side"} else {"group"})];
	};
};

// game would hard CTD unless I included a wait - no idea why
UIsleep 5;

// add above marker save/load functions to ACE self-interact menu on players
// save action parent
JST_markerSaveActionParent =
[
	"JST_markerSaveActionParent",				// action name
	"Save map markers",							// name shown in menu
	"",											// icon
	{
	},											// code statement
	{
		true
	}											// condition
] call ace_interact_menu_fnc_createAction;
// save action actual
JST_markerSaveAction =
[
	"JST_markerSaveAction",						// action name
	"Confirm SAVE map markers",					// name shown in menu
	"",											// icon
	{
		[] spawn JST_fnc_saveMarkers
	},											// code statement
	{
		true
	}											// condition
] call ace_interact_menu_fnc_createAction;
// load action parent
JST_markerLoadActionParent =
[
	"JST_markerLoadActionParent",				// action name
	"Load map markers",							// name shown in menu
	"",											// icon
	{
	},											// code statement
	{
		true
	}											// condition
] call ace_interact_menu_fnc_createAction;
// load action actual
JST_markerLoadAction =
[
	"JST_markerLoadAction",						// action name
	"Confirm LOAD map markers",					// name shown in menu
	"",											// icon
	{
		[] spawn JST_fnc_loadMarkers
	},											// code statement
	{
		true
	}											// condition
] call ace_interact_menu_fnc_createAction;
// add all above to self-interact menu
[
	player,										// object assigned to
	1,											// type of action; 0 for actions, 1 for self-actions
	["ACE_SelfActions","ACE_Equipment"],		// parent path of new action
	JST_markerSaveActionParent					// action
] call ace_interact_menu_fnc_addActionToObject;
[
	player,										// object assigned to
	1,											// type of action; 0 for actions, 1 for self-actions
	["ACE_SelfActions","ACE_Equipment","JST_markerSaveActionParent"],		// parent path of new action
	JST_markerSaveAction						// action
] call ace_interact_menu_fnc_addActionToObject;
[
	player,										// object assigned to
	1,											// type of action; 0 for actions, 1 for self-actions
	["ACE_SelfActions","ACE_Equipment"],		// parent path of new action
	JST_markerLoadActionParent					// action
] call ace_interact_menu_fnc_addActionToObject;
[
	player,										// object assigned to
	1,											// type of action; 0 for actions, 1 for self-actions
	["ACE_SelfActions","ACE_Equipment","JST_markerLoadActionParent"],		// parent path of new action
	JST_markerLoadAction						// action
] call ace_interact_menu_fnc_addActionToObject;