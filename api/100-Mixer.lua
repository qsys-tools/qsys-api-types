---Mixer objects allow access to Mixer components that have been named in the design. To create a mixer object, call Mixer.New( mixerName ). The mixer object uses a string specification to determine which inputs and outputs to apply changes to. The syntax supports either space or comma separated numbers, ranges of numbers or all (*). It supports negation of selection with the '!' operator.
---
---Example In/Out Descriptions
---  * `"*"` All channels
---  * `"1 2 3"` channels 1, 2, and 3
---  * `"1-6"` channels 1 through 6
---  * `"1-6 9"` ch 1-6 and ch 9
---  * `"1-3 5-9"` ch 1-3 & 5-9
---  * `"1-8 !3"` ch 1-8, except 3
---  * `"* !3-5"` everything but 3-5
---@class Mixer
Mixer = {}

---Create a new Mixer instance to control a named mixer in the design.
---@param componentName string The named mixer component
---@return Mixer
function Mixer.New(componentName) end

---@overload fun(ins:string, outs:string, gain: number)
---@param ins string
---@param outs string
---@param gain number
---@param ramp number
function Mixer.SetCrossPointGain(ins, outs, gain, ramp) end

---@param ins string
---@param outs string
---@param mute boolean
function Mixer.SetCrossPointMute(ins, outs, mute) end

---@param ins string
---@param outs string
---@param solo boolean
function Mixer.SetCrossPointSolo(ins, outs, solo) end

---@overload fun(ins:string, outs:string, delay: number)
---@param ins string
---@param outs string
---@param delay number
---@param ramp number
function Mixer.SetCrossPointDelay(ins, outs, delay, ramp) end

---@overload fun(ins:string, gain: number)
---@param ins string
---@param gain number
---@param ramp number
function Mixer.SetInputGain(ins, gain, ramp) end

---@param ins string
---@param mute boolean
function Mixer.SetInputMute(ins, mute) end

---@param ins string
---@param solo boolean
function Mixer.SetInputSolo(ins, solo) end

---@overload fun(outs:string, gain: number)
---@param outs string
---@param gain number
---@param ramp number
function Mixer.SetOutputGain(outs, gain, ramp) end

---@param outs string
---@param mute boolean
function Mixer.SetOutputMute(outs, mute) end

---@param ins string
---@param cues string
---@param enable boolean
function Mixer.SetInputCueEnable(ins, cues, enable) end

---@param ins string
---@param afls string
---@param enable boolean
function Mixer.SetInputCueAfl(ins, afls, enable) end

---@overload fun(cues:string, gain: number)
---@param cues string
---@param gain number
---@param ramp number
function Mixer.SetCueGain(cues, gain, ramp) end

---@param cues string
---@param mute boolean
function Mixer.SetCueMute(cues, mute) end

---@class MixerCrossPoint
---@field Input number
---@field Output number
---@field Gain number
---@field Mute boolean
---@field Delay number
---@field Solo boolean
local MixerCrossPoint = {}

---@param ins string
---@param outs string
---@return MixerCrossPoint[]
function Mixer:GetMixerCrossPoints(ins, outs) end
