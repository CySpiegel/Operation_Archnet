while {true} do
{
if (alive mikeTrans_1 && alive mikeTrans_2) then 
	{
		ls_1 say3D "air_raid_sound";
		sleep 0.24;
		ls_2 say3D "air_raid_sound";
		sleep 0.24;
		ls_3 say3D "air_raid_sound";
		sleep 0.24;
		ls_4 say3D "air_raid_sound";
		sleep 0.24;
		ls_5 say3D "air_raid_sound";
		sleep 0.24;
		ls_6 say3D "air_raid_sound";
		sleep 10;
	} 
	else
	{
		Terminate alarm;
	};
};
