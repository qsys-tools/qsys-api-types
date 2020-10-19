---@class TcpSocketServer
---@field EventHandler fun(socket: TcpSocket) Function called on any incoming socket event.
TcpSocketServer = {}

---Creates a new TcpServer instance
---@return TcpSocketServer
function TcpSocketServer:New() end

---Attempts to connect to specified port
---@param port number
function TcpSocketServer:Listen(port) end

---Stops listening
function TcpSocketServer:Close() end