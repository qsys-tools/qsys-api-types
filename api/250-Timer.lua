---@class Timer
---@field EventHandler fun(self: Timer)
Timer = {}

---Creates a new Timer instance
---@return Timer
function Timer.New() end

---Starts the timer
---@param period number in seconds
function Timer:Start(period) end

---Stops the timer
function Timer:Stop() end

---Calls the function `fun` once after `delay` seconds.
---@param fun fun() The callback to be called.
---@param delay number The delay in seconds.
function Timer.CallAfter(fun, delay) end

