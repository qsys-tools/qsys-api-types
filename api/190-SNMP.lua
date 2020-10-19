---@class SNMPSessionType
local SNMPSessionType = {}

---@class SNMPAuthType
local SNMPAuthType = {}

---@class SNMPAuthProtocol
local SNMPAuthProtocol = {}

---@class SNMPPrivProtocol
local SNMPPrivProtocol = {}

---@class SNMPDataType
local SNMPDataType = {}

---@class OIDResponse
---@field public RequestID number
---@field public OID string
---@field public Value string
---@field public HostName string
local OIDResponse = {}

---@class SNMPError
---@field public Error string
local SNMPError = {}

---Use the SNMP library in Lua to monitor OIDs obtained from an SNMP-enabled device's MIB file.
---    Note: In the SNMP model, Q-SYS acts as the SNMP Manager, while the device you intend to monitor runs an SNMP Agent that allows for monitoring.
---@class SNMP TODO
---@field public SessionType {V2c: SNMPSessionType, V3: SNMPSessionType}
---@field public AuthType {NoAuth: SNMPAuthType, AuthNoPriv: SNMPAuthType, AuthPriv: SNMPAuthType}
---@field public AuthProtocol {NoAuth: SNMPAuthProtocol, MD5: SNMPAuthProtocol, SHA: SNMPAuthProtocol}
---@field public PrivProtocol {NoPriv: SNMPPrivProtocol, AES: SNMPPrivProtocol, DES: SNMPPrivProtocol}
---@field public SNMPDataType {unknown:SNMPDataType, integer32:SNMPDataType, unsigned32:SNMPDataType, unsigned_integer32:SNMPDataType, timeticks:SNMPDataType, ip_address:SNMPDataType, object_id:SNMPDataType, octet_string:SNMPDataType, hex:SNMPDataType, decimal:SNMPDataType, bit_string:SNMPDataType, integer64:SNMPDataType, unsigned64:SNMPDataType, float32:SNMPDataType, double64:SNMPDataType}
---@field public EventHandler fun(OIDResponse)
---@field public ErrorHandler fun(SNMPError)
SNMP= {}

---@class SNMPSession
SNMPSession = {}

---Create a new SNMP session
---@param type SNMPSessionType
---@return SNMPSession
function SNMPSession.New(type) end

---@param hostname string
function SNMPSession:setHostName(hostname) end

---@param type SNMPAuthType
function SNMPSession:setAuthType(type) end

---@param type SNMPAuthProtocol
function SNMPSession:setAuthProt(type) end

---@param type SNMPPrivProtocol
function SNMPSession:setPrivProt(type) end

---@param username string
function SNMPSession:setUserName(username) end

---@param passphrase string
function SNMPSession:setPassPhrase(passphrase) end

---@param passphrase string
function SNMPSession:setPrivPassPhrase(passphrase) end

---@param community string
function SNMPSession:setCommunity(community) end

function SNMPSession:startSession() end

---@param oid string
---@param callback fun(data)
function SNMPSession:getRequest(oid, callback) end

---@param oid string
---@param newValue string
---@param type SNMPDataType
---@param callback fun(data)
function SNMPSession:setRequest(oid, newValue, type, callback) end
