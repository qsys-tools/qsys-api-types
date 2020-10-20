---@class Control
---@field public Value number Floating point value of control.
---@field public Values number[] Table of floating point values of controls. Only used when connected to controls that create tables of values such as the 2D panner, RTA - Band-Pass or Responsalyzer, Meters.
---@field public Position number floating point position which goes from 0.0 -> 1.0
---@field public String string string representation of control value
---@field public Boolean boolean returns true if the position of the control is >0.5
---@field public RampTime number defaults to 0 seconds
---@field public Index number index of control.
---@field public Type string 'Boolean' | 'Float' | 'Virtual'
---@field public Direction string 'Read Only' | 'Read/Write' | 'Other'
---@field public MinValue number
---@field public MaxValue number
---@field public MinString string
---@field public MaxString string
---@field public Legend string string representing the Legend of a button or a fader.
---@field public IsInvisible boolean false = visible, true = hidden
---@field public IsDisabled boolean false = enabled, true = disabled
---@field public IsIndeterminate boolean false = value is valid, true = value is not valid
---@field public Color string String which can be translated to a color. ("#RGB", "#RRGGBB", "!HHSSVV" or any valid CSS Color Name)
---@field public Choices string[] List of choices for a control
local Control = {}

---Triggers the output
---@return void
function Control:Trigger() end

---callback for when input value changes
---@vararg any
---@return void
function Control:EventHandler(...) end

---@type table<string, Control>
Controls = {}

---@type Control[]
Controls.Inputs = {}

---@type Control[]
Controls.Outputs = {}
