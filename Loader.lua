local Players = game:GetService("Players")

local scripts = {
    [72001091182267] = "HotPotato.lua",
    -- More Coming soon!
}

local file = scripts[game.PlaceId]

if not file then
    Players.LocalPlayer:Kick("Unsupported Game\n.gg/2BWHEGZjQq")
    return
end

local url = "https://raw.githubusercontent.com/ItsJamessYT/Lunix/main/" .. file

local success, source = pcall(function()
    return game:HttpGet(url)
end)

if not success or not source or #source == 0 then
    return
end

local func = loadstring(source)

if not func then
    return
end

func()
