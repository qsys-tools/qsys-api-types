-- ************
-- ChannelGroup
-- ************

---Used when a Control Script is located inside a Channel Group.  The .Index property is used to determine which Channel Group is currently selected
---@field public Index number value, 1-n, indicates which channel of the Channel Group, 0 indicated not in Channel Group.  If multiple groups are selected, the index of the first group is returned.
ChannelGroup = {}
