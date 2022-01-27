enableSaving [ false, false ];
if (isServer) then { sling_1 = ch1 setSlingLoad ab1; };
//waituntil {(player getvariable ["alive_sys_player_playerloaded",false])};
//[{{Driver _x setvariable ["NOAI",true];} foreach (vehicles select {_x isKindOf 'air'});}, 1, []] call CBA_fnc_addPerFrameHandler;
// Grou Alpha
vehicleAlpha = "ch1" createvehicle [0,0,0];
vehicleAlpha2 = "ab1" createvehicle [0,0,0];
// Group Bravo
//vehicleBravo = "ch2" createvehicle [0,0,0];
//vehicleBravo2 = "ab2" createvehicle [0,0,0];
// set side colors
private ["_colorWest", "_colorEast"];
_colorWest = WEST call BIS_fnc_sideColor;
_colorEast = EAST call BIS_fnc_sideColor;
// set transparency for colors
{_x set [3, 0.73]} forEach [_colorWest, _colorEast];
[
    markerPos "orbit1", // Target position (replace MARKERNAME)
    "Unit S.P.E.C.T.R.E. is tasked with infiltrating Mike-Air Station 26 and downloading vital Intel from their computer system.", // SITREP text
    400,                    // 400m altitude
    200,                    // 200m radius
    0,                      // 0 degrees viewing angle
    1,                      // Clockwise movement
    [   // add Icon at player's position
        ["\a3\ui_f\data\map\markers\nato\b_inf.paa", _colorWest, getPos player, 1, 1, 0, "Alpha Squad", 0],
        // add Icon at enemy/target position
        ["\a3\ui_f\data\map\markers\nato\o_inf.paa", _colorEast, markerPos "MARKERNAME", 1, 1, 0, "Enemy Camp", 0]
    ]
] spawn BIS_fnc_establishingShot;

{_x moveInCargo ch1} foreach units grpAlpha;
//{_x moveInCargo ch2} foreach units grpBravo;


//_nul = [] execVM "spectre\intro\camera.sqf";

call compile preprocessFile "scripts\downloadData.sqf";
waitUntil { !isNil "T8L_var_INITDONE" };

// TFAR Options
TF_give_personal_radio_to_regular_soldier = true;
tf_no_auto_long_range_radio = true;
TF_give_microdagr_to_soldier = false;

//Headless Client
//execVM "headless\HCInit.sqf"; HCDebug = 0;

//if ( !isServer ) exitWith {};

[ [ laptop01, laptop02, laptop03 ], "T8L_fnc_addActionLaptop", true, false] spawn BIS_fnc_MP;