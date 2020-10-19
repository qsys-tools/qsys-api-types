-- ************
--    Ping
-- ************
---**Note:** The Lua Ping library requires that you run Q-SYS Designer as administrator ("Run as administrator" option in Windows) when emulating your design. If you see a non-terminating "Socket failed to open" error message in the debug window, re-launch Designer as administrator.
---@class Ping
Ping = {}

---Create a new ping instance
---@param target_host string
---@return Ping
function Ping.New(target_host) end

---Begin the ping session
---@overload fun()
---@param single_shot boolean If `true` only a single ping attempt will be made.
function Ping:start(single_shot) end

---Stop the ping session
function Ping:stop() end

---Set the timeout for waiting for a ping response.
---@param timeout number The timeout duration, in seconds.
function Ping:setTimeoutInterval(timeout) end

---Set the interval for retrying after a ping request.
---@param interval number The interval, in seconds.
function Ping:setPingInterval(interval) end

---Assign a callback for successful ping events.
---@param response {HostName:string, ElapsedTime: number} The host and elapsed time in microseconds
function Ping.EventHandler(response) end

---Assign a callback for unsuccessful ping events.
---@param response {HostName:string, Error: number} The host and errormessage of the ping
function Ping.ErrorHandler(response) end
