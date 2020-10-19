---@class UdpPacket
---@field public Address string
---@field public Port number
---@field public Data string
local UdpPacket = {}

---@class UdpSocket
---@field public EventHandler fun(data: UdpPacket)
UdpSocket = {}

---Creates a UDP Socket instance.
---@return UdpSocket
function UdpSocket.New() end

---Opens the UDP listener. Optionally bind to local IP and Port.
---@overload fun()
---@overload fun(IP: string)
---@param ip string
---@param port number
function UdpSocket:Open(ip, port) end

---Closes the UDP socket
function UdpSocket:Close() end

---Sends data to ip_address:port.
---@param ip string
---@param port number
---@param data string
function UdpSocket:Send(ip, port, data) end

---Joins a specific multicast 'address', optionally binding to a local 'ip'.
---@overload func(address)
---@param address string
---@param ip string
function UdpSocket:JoinMulticast(address, ip) end
