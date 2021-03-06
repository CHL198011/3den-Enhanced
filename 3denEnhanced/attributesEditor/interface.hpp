class ENH_Interface
{
  collapsed = 1;
  displayName = $STR_ENH_INTERFACE;
  class Attributes
  {
    class ENH_CollapseAssetBrowser
    {
      displayName = $STR_ENH_COLLAPSEASSETBROWSER;
      property = "ENH_CollapseAssetBrowser";
      control = "Checkbox";
      expression = "";
      defaultValue = "false";
    };
    class ENH_CollapseEntityList
    {
      displayName = $STR_ENH_COLLAPSEENTITYLIST;
      property = "ENH_CollapseEntityList";
      control = "Checkbox";
      expression = "";
      defaultValue = "false";
    };
    class ENH_ShowPanelLeft
    {
      displayName = $STR_ENH_SHOWLEFTPANEL;
      property = "ENH_ShowPanelLeft";
      control = "Checkbox";
      defaultValue = "";
      expression = "false";
    };
    class ENH_ShowPanelRight
    {
      displayName = $STR_ENH_SHOWRIGHTPANEL;
      property = "ENH_ShowPanelRight";
      control = "Checkbox";
      defaultValue = "";
      expression = "false";
    };
    class ENH_Statusbar_EntityCounter
    {
      displayName = $STR_ENH_STATUSBAR_ENTITYCOUNTER_DISPLAYNAME;
      property = "ENH_Statusbar_EntityCounter";
      control = "Checkbox";
      expression = "'init' call ENH_fnc_statusbar_entityCounter";
      defaultValue = "true";
    };
  };
};