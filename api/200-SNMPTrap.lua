---@class SNMPTrap
---@field public EventHandler fun(OIDResponse)
---@field public ErrorHandler fun(SNMPError)
SNMPTrap = {}

---@param trapName string
function SNMPTrap.New(trapName) end

function SNMPTrap:startSession() end