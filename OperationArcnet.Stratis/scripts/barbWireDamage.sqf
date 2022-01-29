// 0 = this execVM "scripts\barbWireDamage.sqf";
private [ "_distance", "_selectedBodyPart"];
private _bodyparts = ["rightleg", "leftleg", "rightarm", "leftarm", "body" ];
while {alive player && alive _this} do {
	sleep 1;    
	_distance = player distance _this;
	if (_distance < 2) then {// adjust for best results
	sleep 0.5;
		_selectedBodyPart = selectRandom _bodyparts;
		[player, 0.8, _selectedBodyPart, "stab"] call ace_medical_fnc_addDamageToUnit;
	};   
};           
