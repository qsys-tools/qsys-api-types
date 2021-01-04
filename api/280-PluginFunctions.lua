---@class PluginInfo
---@field public Name string 
---@field public Version string
---@field public Id string
---@field public Description string
---@field public ShowDebug boolean
---@field public Author string
local PluginInfo = {}

---Return the default block colour in Designer
---@param props table Designer properties
---@return table colour {r,g,b}
function GetColor(props) end

---Plugin Pretty Name, shown in the properties panel and on the block
---@param props table Desiner properties
---@return string name -- name to show
function GetPrettyName(props) end

---Set properties available in designer
---@return table props
function GetProperties() end

---Rectify Properties
---@param props table Designer properties
---@return table props modified properties table
function RectifyProperties(props) return props end

--- Return a list of controls for the plugin.
---@param props table Designer properties
---@return table ctls
function GetControls(props) end

-- Returns the pages, comment out if only using a single page.
---@return table pages 
function GetPages() end

---Layout controls and graphics in the plugin
---@param props table Designer properties
---@return table layout layout of all controlls
---@return table graphics layout of all graphics
function GetControlLayout(props) end

---Construct Input and Outpins and their labels
---@param props table Designer properties
---@return table pins Table of pins
function GetPins(props) end

---Construct Internal components
---@param props table Designer properties
---@return table comps Components
function GetComponents(props) end

--0Map I/O pins to Internal component wiring
---@param props table Designer properties
---@return table wiring Internal wiring
function GetWiring(props) end