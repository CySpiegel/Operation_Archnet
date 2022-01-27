/*
Boat push script - v0.1
Pushes the boat in the direction the player is looking
Created by BearBison
*/
if (isServer) exitwith {};
private ["_Object","_Soldier","_isWater"];
_Object = _this select 0;
_Soldier = _this select 1;
_isWater = surfaceIsWater position _Soldier; 
if (_isWater) exitwith {titleText ["You can't push from in the water","PLAIN DOWN",1];};
if (_Soldier in _Object) exitwith {titleText ["You can't push from inside the vehicle","PLAIN DOWN",1];};
_Object setOwner (owner _Soldier);
_Soldier playMove "AmovPercMstpSnonWnonDnon_AinvPercMstpSnonWnonDnon_Putdown";
if (currentWeapon _Soldier == "") then {sleep 1;} else {sleep 2;};
_Object setVelocity [(sin(direction _Soldier))*3, (cos(direction _Soldier))*3, 0];  