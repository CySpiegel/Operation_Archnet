/*
Script Author: Cytreen Spiegel
params: [ ON/OFF, MArker Name , radiius, array of light classnames]

Trigger:
activation: 0 = ["OFF", "orbit1", 150, ["Land_PortableLight_single_F", "Land_PortableLight_Double_F", "Land_LampHalogen_F"]] execVM "gensys\lightsOut.sqf";

*/

//_types = ["Land_PortableLight_single_F", "Land_PortableLight_Double_F", "Land_LampHalogen_F"];
_onoff = _this select 0;
_location = _this select 1;
_radius = _this select 2;
_types = _this select 3;

for [{_i=0},{_i < (count _types)},{_i=_i+1}] do
{
    // powercoverage is a marker I placed.
	_lamps = getMarkerPos _location nearObjects [_types select _i, _radius];
	sleep 1;
	{_x switchLight _onoff} forEach _lamps;
};