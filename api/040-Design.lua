---@class DesignStatus A status table containing design information
---@field public DesignName string The name of the design file.
---@field public Platform string "Emulator" or The model of the running core.
---@field public IsRedundant boolean
---@field public DesignCode string A unique code assigned to the design.
local DesignStatus = {}

---@class InventoryItemStatus A status table for a specific inventory item
---@field public Message string The text status of the inventory item.
---@field public Code string The numeric status of the inventory item.
local InventoryItemStatus = {}

---@class DesignInventoryItem
---@field public Type string The category of the inventory item.
---@field public Name string The name of the inventory item.
---@field public Location string The location of the inventory item, as specified in the design file.
---@field public Model string The model of the inventory item.
---@field public Status InventoryItemStatus The status of the inventory item.
local DesignInventoryItem = {}

---Use the Design functions to return design status and inventory information.
Design = {}

---@return DesignStatus
function Design.GetStatus() end

---@return DesignInventoryItem[]
function Design.GetInventory() end
