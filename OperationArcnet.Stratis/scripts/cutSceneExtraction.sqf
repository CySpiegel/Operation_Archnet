//Exit sequance created by Cytreen Spiegel.


_Raider_1 = [];
_extractChopper_1 = [];

//if (isServer) then {
	_Raider_1 = createGroup WEST;
	_extractChopper_1 = [getMarkerPos "extractionSpawn_1", 0, "B_Heli_Transport_03_F", _Raider_1] call BIS_fnc_spawnVehicle;

	extractChopperGlobal = _extractChopper_1 select 0;
	publicVariable "extractChopperGlobal";

//Extraction Waypoints

	_wp = _Raider_1 addWaypoint [wp_POS, 0];
	_wp setWaypointType 'MOVE';
	_wp setWaypointSpeed "FULL";

	_wp1 = _Raider_1 addWaypoint [position ab1, 1];
	[_Raider_1, 2] waypointAttachVehicle vehicle ab1;
	_wp1 setWaypointType 'MOVE';
	_wp1 setWaypointSpeed "FULL";


//};


sleep 20;

CutText ["","Black in", 3];
ace_hearing_disableVolumeUpdate = true;
0 fadeSound 0.2;


_car = extractChopperGlobal;
_cameraExit = "camera" camCreate [0,0,1000];
camUseNVG true;
showCinemaBorder true;

//Opening shot from inside the cockpit
_cameraExit AttachTo [_car,[0,6,-0.3]];
_cameraExit cameraEffect ["External", "LEFT TOP"];
ab1 setFuel 0;
_cameraExit CamCommit 45;
waitUntil {camCommitted _cameraExit};
0 fadeSound 1;

//;comment "wide shot of chopper";
detach _cameraExit;
_cameraExit setPos [7527.845,3622.061,70];
_cameraExit camSetTarget _car;
_cameraExit cameraEffect ["External", "LEFT TOP"];
_cameraExit CamCommit 12;
waitUntil {camCommitted _cameraExit};

playMusic "endMusic";
endTimeVar = true;


1 CutText ["","Black OUT", 0.1];
sleep 0.3;
;comment "Credit Roll";
_cameraExit AttachTo [cameraBlank,[0,0,1000]];
_cameraExit CamCommit 0.55;
waitUntil {camCommitted _cameraExit};

titleText ["E  p  i  s  o  d  e    O  n  e \nO  P  E  R  A  T  I  O  N    |    A  R  C  N  E  T", "PLAIN", 0.35];
sleep 3.5;
detach _cameraExit;
//if (isServer) then {
	_car flyInHeight 10;
	_success = [extractChopperGlobal, ab1] remoteExec ["setSlingLoad"];
	_success = extractChopperGlobal setslingload ab1;
	_wp2 = _Raider_1 addWaypoint [position exitMission, 2];
	_wp2 setWaypointType 'MOVE';
	_wp2 setWaypointSpeed "Limited";


//};
//_success = [extractChopperGlobal, ab1] remoteExec ["setSlingLoad"];
_success = extractChopperGlobal setslingload ab1;
titleText ["S.  P.  E.  C.  T.  R.  E.", "PLAIN", 0.35];
sleep 3.5;
titleText ["A       C.    S  p  i  e  g  e  l      P  r  o  d  u  c  t  i  o  n ", "PLAIN", 0.35];
//CutText ["","Black Faded"];
sleep 3.5;
titleText ["A  R  M  A    3", "PLAIN", 0.35];
//CutText ["","Black Faded"];
sleep 3.5;
titleText ["S  P  E  C  I  A  L    |    T  H  A  N  K  S \n A r m a   3    C o m m u n i t y  \nA r m a  3    D i s c o r d \nand all of the mod makers without them this mission would not be possable ", "PLAIN", 0.5];
sleep 5.5;
//CutText ["","Black Faded"];
1 cutFadeout 1;

0 fadeSound 0.2;

0 = execVM "scripts\credits.sqf";
//;comment "wide shot of chopper";
_cameraExit AttachTo [_car,[-30,0,5]];
_cameraExit cameraEffect ["External", "LEFT TOP"];
_cameraExit camPrepareTarget _car;
_cameraExit CamCommit 30;
waitUntil {camCommitted _cameraExit};

;comment "Front Right";
_cameraExit AttachTo [_car,[-1,8,0]];
_cameraExit SetDir 175;
_cameraExit CamCommit 20;
waitUntil {camCommitted _cameraExit};

_cameraExit AttachTo [_car,[-30,-50,5]];
_cameraExit camPrepareTarget _car;
_cameraExit CamCommit 18;
waitUntil {camCommitted _cameraExit};

1 CutText ["","Black OUT", 1];

sleep 5;

_cameraExit CameraEffect ["Terminate","back"];
CamDestroy _cameraExit;
ace_hearing_disableVolumeUpdate = false;
0 fadesound 1;
scriptDone cutSceneExtractSeq;

