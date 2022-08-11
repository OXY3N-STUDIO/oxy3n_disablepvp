Config = {
    DrawText3D = false,
    CustomUI = true,
    DisableKeys = true,
    Command = "disablepvp",
    EnableNoPvPKey = "",
}

DisableKeys = {24, 25, 257, 263} -- 
--[[
    24 = "Attack"
    25 = "Aim"
    257 = "Attack 2"
    263 = "Melee Attack 1"
]]

Lang = {
    pvp_disabled = "🔴 Disable PvP", -- Only if Config.DrawText3D is true
    key_mapping = "Avoid miss-clicks",
}

RegisterCommand(Config.Command, function()
    TogglePvP()
end)

function DrawPVP(text)
    SetTextColour(255, 255, 255, 255)   -- Color
    SetTextFont(4)                      -- Font
    SetTextScale(0.4, 0.4)              -- Scale
    SetTextWrap(0.0, 1.0)               -- Wrap the text
    SetTextCentre(false)                -- Align to center(?)
    SetTextDropshadow(0, 0, 0, 0, 255)  -- Shadow. Distance, R, G, B, Alpha.
    SetTextEdge(50, 0, 0, 0, 255)       -- Edge. Width, R, G, B, Alpha.
    SetTextOutline()                    -- Necessary to give it an outline.
    SetTextEntry("STRING")              -- Text type
    AddTextComponentString(text)        -- Text
    DrawText(0.90, 0.0)                 -- Position
end

--[[
    ["ESC"], ["F1"], ["F2"], ["F3"], ["F5"], ["F6"], ["F7"], ["F8"], ["F9"], ["F10"], 
    ["~"], ["1"], ["2"], ["3"], ["4"], ["5"], ["6"], ["7"], ["8"], ["9"], ["-"], ["="], ["BACKSPACE"],
    ["TAB"],   ["Q"], ["W"], ["E"], ["R"], ["T"], ["Y"], ["U"], ["P"], ["["], ["]"], ["ENTER"], 
    ["CAPS"], ["A"], ["S"], [ "D"], ["F"], ["G"], ["H"], ["K"], ["L"], 
    ["LEFTSHIFT"], ["Z"], ["X"], ["C"], ["V"], ["B"], ["N"], ["M"], [","], ["."], 
    ["LEFTCTRL"], ["LEFTALT"], ["SPACE"], ["RIGHTCTRL"], 

    ["HOME"], ["PAGEUP"], ["PAGEDOWN"], ["DELETE"],
    ["LEFT"], ["RIGHT"], ["TOP"], ["DOWN"],
    ["NENTER"], ["N4"], ["N5"], ["N6"], ["N+"], ["N-"], ["N7"], ["N8"], ["N9"],
]]