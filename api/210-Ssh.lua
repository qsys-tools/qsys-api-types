---@alias SshEvent SerialPortEvent
---@alias SshEOL SerialPortEOL
---@alias SshCB fun(self:Ssh)
---@alias SshDataCB fun(self:Ssh, data: string)
---@alias SshErrorCB fun(self:Ssh, error: string)

---@class Ssh
---@field public LoginFailed SshCB Called upon a failed login
---@field public Connected SshCB Called when the Ssh socket connects
---@field public Reconnect SshCB Called when the Ssh socket attempts to reconnect
---@field public Data SshDataCB Called when there is new data available on the socket
---@field public Closed SshCB Called when the Ssh is closed
---@field public Error SshErrorCB
---@field public Timeout SshErrorCB
---@field public ReadTimeout number Time, in seconds, to wait for data to be available on socket before raising an Error through the EventHandler. Default is 0 (disabled)
---@field public WriteTimeout number Time, in seconds, to wait for data write to complete before raising an Error through the EventHandler. Default is 0 (disabled)
---@field public ReconnectTimeout number Time in seconds to wait before attempting to reconnect. 5 seconds is default. 0 disables automatic reconnect.
---@field public IsConnected boolean Read-Only. `true` if socket is connected.
---@field public BufferLength boolean Read-Only. Amount of data in buffer, in bytes
Ssh = {}

---Creates a new Ssh instance.
---@return Ssh
function Ssh:New() end

---Attempts to connect to the specified ip/host name and port, with the specified credentials
---@param host string ip/host
---@param port number
---@param user string
---@param password string
function Ssh:Connect(host, port, user, password) end

---Disconnects.
function Ssh:Disconnect() end

---Writes specified data to the socket. Raises error if socket is not connected.
---@param data string
function Ssh:Write(data) end

---Attempts to read up to 'length' bytes from socket. These bytes are removed from the buffer, leaving any remaining bytes beyond the 'length' specified. 'length' is positive integer.
---@param length number
function Ssh:Read(length) end

---Attempts to read a 'line' from the socket buffer. 'EOL' is defined in the table below. '<custom>' is an optional string only used by EOL.Custom.
---@param EOL SshEOL
---@param custom string
function Ssh:ReadLine(EOL, custom) end

---@class SshEventsTable
---@field public Connected SshEvent Called when the serial port connects
---@field public Reconnect SshEvent Called when the serial port attempts to reconnect
---@field public Data SshEvent Called when there is new data available on the serial port
---@field public Closed SshEvent Called when the serial port is closed
---@field public Error SshEvent Called when socket is closed due to an error
---@field public Timeout SshEvent A read or write timeout was triggered and the port was closed.
Ssh.Events = {}

---@class SshEOLTable
---@field public Any SshEOL
---@field public CrLf SshEOL
---@field public CrLfStrict SshEOL
---@field public Lf SshEOL
---@field public Null SshEOL
---@field public Custom SshEOL
Ssh.EOL = {}
