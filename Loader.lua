local scripts = {
    [72001091182267] = "HotPotato.lua",
      -- More coming soon...
}

local file = scripts[game.PlaceId]

if not file then
    warn("Game not supported")
    return
end

local url = "https://raw.githubusercontent.com/ItsJamessYT/Lunix/main/" .. file

local success, source = pcall(function()
    return game:HttpGet(url)
end)

if not success then
    warn("Failed to load:", source)
    return
end

local func, err = loadstring(source)

if not func then
    warn("Failed to compile:", err)
    return
end

func()
