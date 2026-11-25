local Players = game:GetService("Players")

local scripts = {
    [133787291114459] = "DrawaFlag.lua",
    [73621314943835] = "GuessCharacterColor.lua"
   
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
