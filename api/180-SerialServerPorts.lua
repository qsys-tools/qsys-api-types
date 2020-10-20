---@class SerialServerPort: SerialPort
---@field OnOpen fun(baudRate: number, dataBits: number, parity: string) Called when the wrapped serial port calls it's :Open method. parity: N(None), E(Even), O(Odd), M(Mark), S(Space)
---@field OnClose fun() Called when a :Close request from the attached serial client script is received.
---@field Data fun() Assign a function which is called when there is new data in the virtual serial port buffer.
local SerialServerPort = {}

---Trigger an EventHandler in the associated serial “client script’s” serial EventHandler logic
---@overload fun(SerialEvent:SerialPortEvent)
---@param SerialEvent SerialPortEvent One of the events referenced in the SerialPorts.Events table
---@param error string When using the Error event type, an optional explanation of the error condition
function SerialServerPort:Event(SerialEvent, error) end

---Writes specified data to the client's serial port buffer. Raises an error if the port is not open
---@param Data SerialPortEvent One of the events referenced in the SerialPorts.Events table
function SerialServerPort:Write(Data) end

---Attempts to read up the 'length' bytes from the serial buffer. Data is removed from the buffer. This buffer
---contains data bytes written by the serial client script.
---@param length number The number of bytes to read from the serial buffer.
---@return string The data read from the socket. Nil if the buffer is empty.
function SerialServerPort:Read(length) end

---Attempts to read a 'line' from the serial buffer. 'EOL' is defined in the table below. '<custom>' is an optional
---string used by EOL.Custom.
---
---    **NOTE:** Note: This method is typically never used to get data bytes from the virtual
---    serial buffer to be completely transparent between the serial client script and the remote serial port. Normally,
---    every byte received from the vitual serial port is read from the buffer by the :Read method using the .BufferLength
---    property and immediately sent to the TcpSocket connection using the :Write command. Likewise, on the TcpSocket's
---    DATA EventHandler, the :Read method would also immediate remove all bytes from the TcpSocket buffer and :Write them,
---    as a whole, to the virtual serial port.
---@param EOL SerialPortEOL
---@param custom string
---@return string The data rad from the socket. Nil if the read failed.
function SerialServerPort:ReadLine(EOL, custom) end

---Searches the serial buffer for string 'str' (starting at 'start_pos') and returns the index of where str is found.
---
---    Note: This method should rarely be used for the intended purpose of the SerialServerPorts library.
---    It is documented here for completeness.
---@overload fun(string: string)
---@param string string The string to search for
---@param start_pos number The index to start searching from. Defaults to 1. Nil if not found
---@return number
function SerialServerPort:Search(string, start_pos) end

---@type SerialServerPort[]
SerialServerPorts = {}
