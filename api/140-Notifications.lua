--- Message pub/sub that works across the design
Notifications = {}

---Subscribe to a channel with a given name.
---@param name string The name of the channel to subscribe to.
---@param listener fun(name: string, data: any)
---@return number The noteId that identifies that particular subscription.
function Notifications.Subscribe(name, listener) end

---Publish a notification to all listeners.
---@param name string The name of the channel to notify.
---@param data any The data to publish.
function Notifications.Publish(name, data) end

---Unsubscribe a particular listener
---@param noteId number The noteId provided as a return value from `.Subscribe(...)`
function Notifications.Unsubscribe(noteId) end
