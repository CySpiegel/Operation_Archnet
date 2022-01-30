alarm = []  execvm "scripts\air_raid.sqf";
sleep 5;

// Original turn lights on
//guardLight setDamage 0; guardLight_1 setDamage 0; guardLight_2 setDamage 0;

// List of light object by variable names in map
private _mikeAirLights = [guardLight, 
						guardLight_1, 
						guardLight_2, 
						guardLight_3, 
						guardLight_4, 
						guardLight_5, 
						guardLight_6, 
						guardLight_7, 
						guardLight_8, 
						guardLight_9];
// Hitpoint location for light being used						
private _lighBulbs = ["#light_1_hitpoint","#light_2_hitpoint","#light_3_hitpoint","#light_4_hitpoint"];

// Loop through each guardLight in list and check to see what the damage value 
// of each bulb in light. if the light is below 0.96 then it has not been shot
// at by a player and can be turned back on by the script
{
	// Current result is saved in variable _x
	private _GuardLight = _x;
	{
		// Current result is saved in variable _x
		if (_GuardLight getHitPointDamage _x < 0.96) then {
			_GuardLight setHitPointDamage [_x, 0];
		}
	} forEach _lighBulbs;
} forEach _mikeAirLights;
