---@class HttpDownloadParams
---@field public Url string The URL to download from
---@field public Headers table<string, string> A table of headers
---@field public User string Username for authenticated sites
---@field public Password string Password for authenticated sites
---@field public Timeout number The timeout, in seconds, for the HttpClient call
---@field public EventHandler fun(params: HttpDownloadParams, code: number, data: string, error: string, headers: table<string, string>)
local HttpDownloadParams = {}

---@class HttpUploadParams: HttpDownloadParams
---@field Data string data to upload
---@field Method string 'POST' | 'PUT'
---@field public EventHandler fun(params: HttpUploadParams, code: number, data: string, error: string, headers: table<string, string>)
local HttpUploadParams = {}

---@class HttpCreateUrlParams
---@field public Host string
---@field public Port number
---@field public Path string
---@field public Query string
local UrlParams = {}

--- Http related utilities
HttpClient = {}

---@param params HttpDownloadParams
function HttpClient.Download(params) end

---@param params HttpUploadParams
function HttpClient.Upload(params) end

---@param params HttpCreateUrlParams
function HttpClient.CreateUrl(params) end

---@param params table<string, string>
---@return string
function HttpClient.EncodeParams(params) end

---@param str string
---@return string
function HttpClient.EncodeString(str) end

---@param str string
---@return string
function HttpClient.DecodeString(str) end
