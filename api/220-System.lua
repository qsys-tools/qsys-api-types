---@class System
---@field BuildVersion number The least significant number of the version triplet. (The `1` in `8.3.1`)
---@field MinorVersion number The middle significant number of the version triplet. (The `3` in `8.3.1`)
---@field MajorVersion number The most significant number of the version triplet. (The `8` in `8.3.`)
---@field LockingId string The Q-SYS Core's Locking ID, which is used for Q-SYS feature license activation.
---@field System.IsEmulating boolean Indicates whether the design is running in an emulator or on a Core.
---@field System.Version string The entire version triplet string (i.e. All of `8.3.1`)
System={}
