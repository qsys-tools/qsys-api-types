---Use the directory commands to list folders and files, create folders, and delete folders within the media/ or design/ locations on the file system. For security and stability reasons, these are the only locations accessible by the Lua libraries.
---
---The media/ folder is the location for all media files, while the design/ folder is the location where uncompressed design configuration files reside while a design is being emulated or running on a Q-SYS Core processor. (It is not intended for storage of user-created design files, and is not remotely accessible.)
dir = {}

---List directories and files in a media/ or design/ path
---@param path string Must begin with 'media/' or 'design/'
---@return string[] A list of directories and files.
function dir.get(path) end

---Create a new folder within a media/ or design/ path
---@param path string Must begin with 'media/' or 'design/'
function dir.create(path) end

---Remove an empty folder within a media/ or design/ path.
---
---If the folder you intend to delete contains files, you must remove them first using `os.remove()`.
---@param path string Must begin with 'media/' or 'design/'. Must be an empty folder.
function dir.remove(path) end
