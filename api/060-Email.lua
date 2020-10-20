---@alias EmailSendHandler fun(table: EmailSendParameters, error: string)

---@class EmailSendParameters A table containing the details of the email to be sent.
---@field public From string
---@field public Subject string
---@field public Body string
---@field public To string[]
---@field public CC string[]
---@field public Server string
---@field public Password string
---@field public UseSsl string
---@field public EventHandler fun(table: EmailSendParameters, error: string)
local EmailParameters = {}

---@param params EmailSendParameters
function Email.Send(params) end
