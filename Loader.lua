local Players = game:GetService("Players")

local scripts = {
    [72001091182267] = "HotPotato.lua",
    -- More Soon!
}

local file = scripts[game.PlaceId]

if not file then
    Players.LocalPlayer:Kick("Unsupported Game")
    return
end

local url = "https://raw.githubusercontent.com/ItsJamessYT/Lunix/main/" .. file

local source = game:HttpGet(url)

if not source or source == "" then
    return
end

local func = loadstring(source)

if not func then
    return
end

func()
