---@alias SocketEvent SerialPortEvent
---@alias SocketEOL SerialPortEOL
---@alias SocketCB fun(self:TcpSocket)
---@alias SocketDataCB fun(self:TcpSocket, data: string)
---@alias SocketErrorCB fun(self:TcpSocket, error: string)

---@class TcpSocket
---@field public EventHandler fun(socket: TcpSocket, event: SocketEvent, err: string | nil)
---@field public Connected SocketCB Called when the TcpSocket connects
---@field public Reconnect SocketCB Called when the TcpSocket attempts to reconnect
---@field public Data SocketDataCB Called when there is new data available on the TcpSocket
---@field public Closed SocketCB Called when the TcpSocket is closed
---@field public Error SocketErrorCB
---@field public Timeout SocketErrorCB
---@field public ReadTimeout number Time, in seconds, to wait for data to be available on socket before raising an Error through the EventHandler. Default is 0 (disabled)
---@field public WriteTimeout number Time, in seconds, to wait for data write to complete before raising an Error through the EventHandler. Default is 0 (disabled)
---@field public ReconnectTimeout number Time in seconds to wait before attempting to reconnect. 5 seconds is default. 0 disables automatic reconnect.
---@field public IsConnected boolean Read-Only. `true` if socket is connected.
---@field public BufferLength boolean Read-Only. Amount of data in buffer, in bytes
TcpSocket = {}

---Creates a new TcpSocket instance.
---@return TcpSocket
function TcpSocket:New() end

---Attempts to connect to the specified ip/host name and port
---@param host string ip/host
---@param port number
function TcpSocket:Connect(host, port) end

---Disconnects the socket.
function TcpSocket:Disconnect() end

---Writes specified data to the socket. Raises error if socket is not connected.
---@param data string
function TcpSocket:Write(data) end

---Attempts to read up to 'length' bytes from socket. These bytes are removed from the buffer, leaving any remaining bytes beyond the 'length' specified. 'length' is positive integer.
---@param length number
function TcpSocket:Read(length) end

---Attempts to read a 'line' from the socket buffer. 'EOL' is defined in the table below. '<custom>' is an optional string only used by EOL.Custom.
---@param EOL SocketEOL
---@param custom string
function TcpSocket:ReadLine(EOL, custom) end

---@class SocketEventsTable
---@field public Connected SocketEvent Called when the serial port connects
---@field public Reconnect SocketEvent Called when the serial port attempts to reconnect
---@field public Data SocketEvent Called when there is new data available on the serial port
---@field public Closed SocketEvent Called when the serial port is closed
---@field public Error SocketEvent Called when socket is closed due to an error
---@field public Timeout SocketEvent A read or write timeout was triggered and the port was closed.
TcpSocket.Events = {}

---@class SocketEOLTable
---@field public Any SocketEOL
---@field public CrLf SocketEOL
---@field public CrLfStrict SocketEOL
---@field public Lf SocketEOL
---@field public Null SocketEOL
---@field public Custom SocketEOL
TcpSocket.EOL = {}