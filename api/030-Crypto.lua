--- Use the Crypto commands to encode and decode ASCII text strings to and from Base64, as well as obtain CRC16, HMAC, and MD5 values for specified strings.
Crypto = {}

---Compute the Base64 of a specified string.
---@overload fun(value: string):string
---@param value string The value to encode to Base64
---@param pad boolean If true, output is padded with '=' signs. The default is true.
---@return string The Base64 encoded value
function Crypto.Base64Encode(value, pad)
end

---Convert the Base64 of a specified value to a string.
---@param value string A Base64 encoded string
---@return string The value, decoded from Base64
function Crypto.Base64Decode(value)
end

---Compute the CRC16 of a specified value.
---@param value string The value to compute the CRC16 for
---@return string The CRC16 bytes
function Crypto.CRC16Compute(value)
end

---Compute the message authentication code of specified data using a specified hashing algorithm and key.
---@param algorithm string Allowed values: md5 | sha1 | sha256 | sha512
---@param key string The secret key to use for computing the message authentication code
---@param data string The data for which to compute the message authentication code
---@return string The computed authentication code
function Crypto.HMAC(algorithm, key, data)
end

---Compute the MD5 hash of a specified value.
---@param value string The value for which to compute the MD5 hash.
---@return string The computed MD5 hash
function Crypto.HMAC(value)
end
