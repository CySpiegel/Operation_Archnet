sleep 3;
ch1 forcespeed 5;
sleep 0.5;
ch1 forcespeed 3;
sleep 0.5;
ch1 forcespeed 1;
ch1 flyinHeight 9;
sleep 7.5;
if (isServer) then
{
//detach boat from chopper
[ch1, objNull] remoteExec ["setSlingLoad"]
sleep 0.35;
};

sleep 0.3;
ch1 flyinHeight 15;
