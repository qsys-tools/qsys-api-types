---@alias SerialPortEvent string A value from the SerialPorts.Events table
---@alias SerialPortEOL number 0 | 1 | 2 | 3 | 4 | 5
---@alias SerialPortCB fun(self:SerialPort)
---@alias SerialPortDataCB fun(self:SerialPort, data: string)
---@alias SerialPortErrorCB fun(self:SerialPort, error: string)

---@class SerialPort
---@field public IsOpen boolean `true` if port is connected
---@field public BufferLength number number of bytes of data in buffer
---@field public EventHandler fun(self: SerialPort, event:SerialPortEvent) Called on any serial event
---@field public Connected SerialPortCB Called when the serial port connects
---@field public Reconnect SerialPortCB Called when the serial port attempts to reconnect
---@field public Data SerialPortDataCB Called when there is new data available on the serial port
---@field public Closed SerialPortCB Called when the serial port is closed
---@field public Error SerialPortErrorCB
---@field public Timeout SerialPortErrorCB
local SerialPort = {}

---Attempts to open the serial port with the specified baud rate
---@overload fun(baudRate: number, dataBits: number)
---@overload fun(baudRate:number)
---@param baudRate number The desired baudrate. Up to 230400 bits per second
---@param dataBits number Can be 7 or 8. Default is 8
---@param parity string N(None), E(Even), O(Odd), M(Mark), S(Space)
function SerialPort:Open(baudRate, dataBits, parity) end

---Closes the serial port
function SerialPort:Close() end

---Writes the specified data to the serial port
---@param data string
function SerialPort:Write(data) end

---Attempts to read up the 'length' bytes from serial buffer. Data is removed from serial buffer.
---@param length number
---@return string
function SerialPort:Read(length) end

---Attempts to read up the 'length' bytes from serial buffer. Data is removed from serial buffer.
---@overload fun(EOL:SerialPortEOL)
---@param EOL SerialPortEOL
---@param custom string Custom end of line characters. Only for use with SerialPorts.EOL.Custom
---@return string
function SerialPort:ReadLine(EOL, custom) end

---Searches the serial buffer for string 'str' (starting at 'start_pos') and returns the index of where str is found.
---@overload fun(string: string)
---@param string string The string to search for
---@param start_pos number The index to start searching from. Defaults to 1
---@return number
function SerialPort:Search(string, start_pos) end

---@type SerialPort[]
SerialPorts = {}

---@class SerialPortsEventsTable
---@field public Connected SerialPortEvent Called when the serial port connects
---@field public Reconnect SerialPortEvent Called when the serial port attempts to reconnect
---@field public Data SerialPortEvent Called when there is new data available on the serial port
---@field public Closed SerialPortEvent Called when the serial port is closed
---@field public Error SerialPortEvent Called when socket is closed due to an error
---@field public Timeout SerialPortEvent A read or write timeout was triggered and the port was closed.
SerialPorts.Events = {}

---@class SerialPortsEOLTable
---@field public Any SerialPortEOL
---@field public CrLf SerialPortEOL
---@field public CrLfStrict SerialPortEOL
---@field public Lf SerialPortEOL
---@field public Null SerialPortEOL
---@field public Custom SerialPortEOL
SerialPorts.EOL = {}
