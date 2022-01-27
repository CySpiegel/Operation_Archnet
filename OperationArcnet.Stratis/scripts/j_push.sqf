// push1 = [[this,["<t color=""#CC0000"">Push</t>","j_push.sqf",[], 9,true, false, "","((vehicle _target) distance  (vehicle _this)) < 8"]],"addAction",true] call BIS_fnc_MP;

_object = _this select 0;
_user = _this select 1;
if (_user != vehicle _user) exitwith {hint "You can't push from inside the vehicle you idiot!"};
_dir = getDir _user;
_dx = sin(_dir)*4;
_dy = cos(_dir)*4;
_object setVelocity [_dx,_dy,0];
