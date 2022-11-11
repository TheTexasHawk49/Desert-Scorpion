/*
    Killah Potatoes Cratefiller v1.1.0

    Author: Dubjunk - https://github.com/KillahPotatoes
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    Adds actions to the cratefiller objects.

    Parameter(s):
    0 : OBJECT - defines the object to apply the action

    Returns:
    NONE
*/

params [
    ["_cfBase", objNull, [objNull]]
];

_condition = 
{
    typeOf player isEqualTo "potato_i_eng" || 
    typeOf player isEqualTo "potato_i_engl" || 
    typeOf player isEqualTo "potato_w_engl" ||
    typeOf player isEqualTo "potato_w_eng"
};

private _action = ["KPCF", localize "STR_KPCF_TITLE", "KPCF\img\kplogo_ca.paa", {[_this] call KPCF_fnc_openDialog;}, _condition] call ace_interact_menu_fnc_createAction;
[_cfBase, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;
