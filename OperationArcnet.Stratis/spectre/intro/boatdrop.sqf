sleep 3;
ch1 forcespeed 5;
sleep 0.5;
ch1 forcespeed 3;
sleep 0.5;
ch1 forcespeed 1;
ch1 flyinHeight 9;
sleep 9.5;
if (isServer) then
{
//detach boat from chopper
_sling_1 = ch1 setSlingLoad objNull;
sleep 0.35;
};

sleep 0.3;
ch1 flyinHeight 15;
