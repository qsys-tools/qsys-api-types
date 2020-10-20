---Use the Network commands to return the full host name and IP address of a specified host, or obtain a table of network interface names and their IP addresses.
Network = {}

---Find the name and addresses of a specified host.
---@param host string
---@return {name: string, addresses: string[]}
function Network.GetHostByName(host) end

---@class InterfaceInfo
---@field public Interface string The interface name (i.e. 'LAN A')
---@field public Address string The IPv4 network address of the interface
---@field public MAC string The MAC address of the interface
---@field public Gateway string The default gateway set on the interface
---@field public Netmask string The network mask set on the interface
local InterfaceInfo = {}

---Inspect the network interfaces available on the running design.
---@return InterfaceInfo[]
function Network.Interfaces() end
