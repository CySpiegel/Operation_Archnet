_types = ["PowerLines_base_F","Land_LampShabby_F","Land_PowerPoleWooden_L_F"];
_onoff = _this select 0;

for [{_i=0},{_i < (count _types)},{_i=_i+1}] do
{
    // powercoverage is a marker I placed.
	_lamps = getMarkerPos "marker_1" nearObjects [_types select _i, 1000];
	sleep 3;
	{_x setDamage _onoff} forEach _lamps;
};