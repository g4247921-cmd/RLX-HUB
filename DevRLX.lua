-- RLX HUB — Loader Utama
local repo = "https://raw.githubusercontent.com/g4247921-cmd/RLX-HUB/main/"

local function import(path)
    local s, r = pcall(function()
        return game:HttpGet(repo .. path)
    end)
    if not s then return warn("RLX: Failed load -> " .. path) end
    return loadstring(r)()
end

-- CORE SYSTEM
local UI      = import("Core/MainUI.lua")
local Utils   = import("Core/Utils.lua")
local Config  = import("Core/Config.lua")
local AutoAdd = import("Core/AutoAdd.lua")

-- TABS
local tabs = {
    "Tab1.lua",
    "Tab2.lua",
    "TabAvatar.lua",
}

for _, file in ipairs(tabs) do
    import("Tabs/" .. file)
end

print("RLX HUB — Loaded")
