---@class UciDialogParams
---@field Title string
---@field Message string
---@field Buttons string[] A list of Legends for the available response buttons.
---@field Handler fun(choiceIndex: number) A **zero** based index of the chosen response button (Not the normal 1 based of Lua tables).
Uci = {}

---Display a dialog in a UCI that contains a title, message, and button selection list.
---@param UCI_Name string The name of the target UCI for which to display the dialog
---@param params UciDialogParams
function Uci.ShowDialog(UCI_Name, params) end

---Set the screen status of a TSC touchscreen controller or UCI Viewer.
---@param TSC_Name string The name of the TSC touchscreen controller or UCI Viewer
---@param State string "On" | "Off" | "Dim"
function Uci.SetScreen(TSC_Name, State ) end

---Set which UCI to display on a TSC touchscreen controller or UCI Viewer.
---@param TSC_Name string The name of the TSC touchscreen controller or UCI Viewer
---@param UCI_Name string The name of the UCI to display
function Uci.SetUCI(TSC_Name, UCI_Name ) end

---Set which UCI page to display on a TSC touchscreen controller or UCI Viewer.
---@param TSC_Name string The name of the TSC touchscreen controller or UCI Viewer.
---@param Page_in_UCI string The UCI page to show.
function Uci.SetPage( TSC_Name, Page_in_UCI ) end

---Set the Channel Group to display on a TSC touchscreen controller or UCI Viewer.
---@param TSC_Name string The name of the TSC touchscreen controller or UCI Viewer.
---@param ChannelGroupId number The channel group number
function Uci.SetChannelGroup( TSC_Name , ChannelGroupId ) end

---Set whether and how a layer is made visible within a specified UCI name and page.
---@param uciName string The name of the UCI.
---@param pageName string The name of the UCI page.
---@param layerName string The name of the UCI layer.
---@param visibility boolean
---@param transition string "none" | "fade" | "left" | "right" | "bottom" | "top"
function  Uci.SetLayerVisibility(uciName, pageName, layerName, visibility, transition) end

---Set whether and how a layer is made visible within a specified UCI name and page.
---
---**Note:** Uci.SetSharedLayerVisibility is similar to UciSetLayerVisibility, but because Shared Layers can exist on multiple UCI pages, there is no argument for pageName.
---@param uciName string The name of the UCI.
---@param layerName string The name of the UCI layer.
---@param visibility boolean
---@param transition string "none" | "fade" | "left" | "right" | "bottom" | "top"
function  Uci.SetSharedLayerVisibility(uciName, layerName, visibility, transition) end

---Log off from a specified TSC touchscreen controller or UCI Viewer.
---@param tscName string The name of the TSC touchscreen controller or UCI Viewer.
function Uci.LogOff(tscName) end
