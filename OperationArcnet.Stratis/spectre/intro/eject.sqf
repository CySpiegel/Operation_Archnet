_group = _this select 0;
_vehicle = _this select 1;

if ( (typename _group != "GROUP") or (typename _vehicle != "OBJECT") ) exitwith {
	hintSilent "Invalid Parameters parsed";
};
{_x allowDamage false} foreach units grpAlpha;
//{_x allowDamage false} foreach units grpBravo;
sleep 1;
14 cutText ["","BLACK out", 0.1];
titleText ["T  r  a  n  s  f  e  r  r  i  n  g    T  o    B  o  a  t  ", "PLAIN", 0.35];
sleep 1;
{
	unassignvehicle _x;
	_x action ["EJECT", _vehicle];
	sleep 1.5;
	{_x moveInCargo ab1} foreach units grpAlpha;
//	{_x moveInCargo ab2} foreach units grpBravo;
} foreach units _group;
titleText ["T  r  a  n  s  f  e  r  r  i  n  g    T  o    B  o  a  t  ", "PLAIN", 0.35];
sleep 10;
14 cutFadeout 1;
sleep 10;
{_x allowDamage true} foreach units grpAlpha;
//{_x allowDamage true} foreach units grpBravo;
//Optional Safety height function (copy and paste after the _vehicle declaration in eject.sqf;

