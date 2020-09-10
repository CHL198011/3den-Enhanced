params ["_ctrlCombo","_selectedIndex"];

private _display = uiNamespace getVariable "Enh_Display_InventoryManager";
private _ctrlSearch = _display displayCtrl 3400;
private _ctrlButtonSearch = _display displayCtrl 3500;

//Update edit box and button
_ctrlSearch ctrlSetText "mod " + (_ctrlCombo lbData _selectedIndex);
_ctrlButtonSearch ctrlSetText "\a3\3DEN\Data\Displays\Display3DEN\search_end_ca.paa";

call ENH_fnc_IM_search;