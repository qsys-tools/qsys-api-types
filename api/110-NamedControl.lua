---The methods in NamedControl are used to read or set the values of Named Controls.
---
---Create Named Controls by dragging specific controls (knobs, buttons, faders, etc) to
--- the `Named Controls` tab on the left of the design window.
NamedControl = {}

---Get the string value of a named control.
---@param control_name string The custom name given to the control in the design.
---@param string string The string value to set on the control.
function NamedControl.SetString(control_name, string) end

---Set the string value of a named control.
---@param control_name string The custom name given to the control in the design.
---@return string The string value of the control.
function NamedControl.GetString(control_name) end

---Set the position of a named control.
---@overload fun(control_name: string, position: number)
---@param control_name string The custom name given to the control in the design.
---@param position number The position value to set on the control.
---@param ramp_time number Optional time (in seconds) to ramp the change.
function NamedControl.SetPosition(control_name, position, ramp_time) end

---Get the position of a named control
---@param control_name string The custom name given to the control in the design.
---@return number The Position of the named control as a number between 0.0 and 1.0
function NamedControl.GetPosition(control_name) end

---Set the value of a named control.
---@overload fun(control_name: string, position: number)
---@param control_name string The custom name given to the control in the design.
---@param value number The position value to set on the control.
---@param ramp_time number Optional. Time (in seconds) to ramp the change.
function NamedControl.SetValue(control_name, value, ramp_time) end

---Get the value of a named control
---@param control_name string The custom name given to the control in the design.
---@return number The numeric value of the named control as a number.
function NamedControl.GetValue(control_name) end

---Triggers a named control
---@param control_name string The custom name given to the control in the design.
---@return number The numeric value of the named control as a number.
function NamedControl.Trigger(control_name) end
