while {true} do
{
if (alive mikeTrans_1 && alive mikeTrans_2) then 
	{
		if(alive ls_1) then {
			ls_1 say3D "air_raid_sound";
			sleep 0.24;
		};
		if(alive ls_2) then {
			ls_2 say3D "air_raid_sound";
			sleep 0.24;
		};
		if(alive ls_3) then {
			ls_3 say3D "air_raid_sound";
			sleep 0.24;
		};
		if(alive ls_4) then {
			ls_4 say3D "air_raid_sound";
			sleep 0.24;
		};
		if(alive ls_5) then {
			ls_5 say3D "air_raid_sound";
			sleep 0.24;
		};
		if(alive ls_6) then {
			ls_6 say3D "air_raid_sound";
			sleep 0.24;
		};
		sleep 10;
	} 
	else
	{
		Terminate alarm;
	};
};
