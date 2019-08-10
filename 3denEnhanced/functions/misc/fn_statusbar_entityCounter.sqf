/*
   Author: Revo

   Description:
   Counts all selected 3DEN entities and updates statusbar accordingly. Called when Eden selection is changed or when editor preferences are set.

   Parameter(s):
   0: STRING - Mode, can be INIT to show/hide controls or RUN to simply update the controls. Default: RUN

   Returns:
   BOOLEAN: true / false
*/

params [["_mode","RUN"]];

disableSerialization;

private _display = findDisplay 313;
private _enabled = profileNamespace getVariable ["Enh_Statusbar_EntityCounter",true];

switch (_mode) do
{
   case "INIT":
   {
      private _fade = [1,0] select _enabled;
      for "_i" from 669 to 680 do 
      {
         (_display displayCtrl _i) ctrlSetFade _fade;
         (_display displayCtrl _i) ctrlCommit 0;
      };
   };
   case "RUN":
   {
      if !(_enabled) exitWith {false};
      {
         _x params ["_idc","_type"];
         (_display displayCtrl _idc) ctrlSetText (str count get3DENSelected _type);
      } forEach [[669,"Marker"],[671,"Logic"],[673,"Waypoint"],[675,"Trigger"],[677,"Group"],[679,"Object"]];
   };
};

true