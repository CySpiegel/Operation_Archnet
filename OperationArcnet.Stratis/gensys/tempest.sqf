_types = ["Land_PortableLight_single_F", "Land_PortableLight_Double_F", "Land_LampHalogen_F"];
_onoff = _this select 0;

for [{_i=0},{_i < (count _types)},{_i=_i+1}] do
{
    // powercoverage is a marker I placed.
	_lamps = getMarkerPos "orbit1" nearObjects [_types select _i, 150];
	sleep 1;
	{_x setDamage _onoff} forEach _lamps;
};