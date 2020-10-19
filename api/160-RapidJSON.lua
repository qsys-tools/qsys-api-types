---Use the RapidJSON module to encode and decode large documents quickly. It is similar to the standard JSON module, but can handle large amounts of data without risk of raising execution count errors.
---To use the RapidJSON module, add the following line to your script:
---```lua
---   rapidjson = require("rapidjson")
---```
---Note that you can assign any local variable name to the `require("rapidjson")` object
---@class RapidJSON
---@module rapidjson
rapidjson = {}

---@class RapidJsonEncodeOptions
---@field public pretty boolean Set `true` to make output string to be pretty formatted. Default is `false`.
---@field public sort_keys boolean Set `true` to make JSON object keys be sorted. Default is `false`.
---@field public empty_table_as_array boolean Set `true` to make empty table encode as JSON array. Default is `false`.
local RapidJsonEncodeOptions = {}

---When passed as a table:
---
---    1. It is encoded as JSON array if:
---         * meta field `__jsontype` set to `"array"`.
---         * table contains length > 0.
---    2. otherwise the table is encoded as JSON object and non string keys and its values are ignored.
---
---When passed a string, `true`, `false`, `number` and `rapidjson.null` it encodes as a simple JSON value.
---@overload fun(value: any): string
---@param value any
---@param options RapidJsonEncodeOptions
---@return string JSON encoded string
function rapidjson.encode(value, options) end

---Decode JSON to a Lua table
---@param json_string string A JSON encoded string
---@return any The decoded object. If `null` is declared anywhere in the JSON, it will be encoded as `rapidjson.null`
function rapidjson.decode(json_string) end

---Load JSON file into Lua table
---@param filename string The JSON file to be loaded
---@return any, string The decoded object, and an error object
function rapidjson.load(filename) end

---Dump a Lua value to a JSON file
---@overload fun(value: any, filename: string): any, string
---@param value any
---@param filename string Where to save the JSON output (must be subfolder of `media/` or `design/`).
---@param options RapidJsonEncodeOptions
---@return any, string Success value, and an error object
function rapidjson.dump(value, filename, options) end

---The placeholder value for `null` in rapidjson
---@return fun()
function rapidjson.null() end

---Create a new empty table that has the metatable field `__jsontype` set as `'object'`, which forces it to encode as a JSON object
---@overload fun():table<string, any>
---@param object table<string, any>
---@return table<string, any>
function rapidjson.object(object) end

---Create a new empty table that has the metatable field `__jsontype` set as `'array'`, which forces it to encode as a JSON array.
---@overload fun():any[]
---@param array any[]
---@return any[]
function rapidjson.array(array) end

return rapidjson;
