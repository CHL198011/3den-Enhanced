/*
  Author: R3vo

  Date: 2019-06-05

  Description:
  Is called by Eden event handler onMissionNew.

  Parameter(s):
  -

  Returns:
  -
*/

//Enable 3den Radio
'ONLOAD' call ENH_fnc_3DENRadio_toggleRadio;

//Enable session timer
[] spawn ENH_fnc_sessionTimer;

//Enable dynamic view distance
call ENH_fnc_dynamicViewDistance;