---@see Control Similar to regular Control. Has an extra Name field.
---@class ControlWithName: Control
---@field public Name string
local ControlWithName = {}

---Component objects allow access to Named Components in the design. Create a Named Component by typing a unique, non-default name in any component block
Component = {}

---Create a Named Component reference in your script
---@param component_name string The name of the component in your design
---@return table<string, Control>
function Component.New(component_name) end

---Create a Named Component reference in your script
---@param component_name string The name of the component in your design
---@return ControlWithName[]
function Component.GetControls(component_name) end
