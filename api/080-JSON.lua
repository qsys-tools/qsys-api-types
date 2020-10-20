json = {}

---Encodes the Lua object into a JSON string
---@param lua_obj any
---@return string
function json.encode(lua_obj) end

---Decodes the JSON string, and returns a Lua object.
---@param json_string string
---@return any
function json.decode(json_string) end

---A unique value that will be encoded as a `null` in the JSON encoding.
---@return fun()
function json.null() end
