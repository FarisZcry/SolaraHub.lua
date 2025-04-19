-- SolaraHub by blurdo
local library = loadstring(game:HttpGet("https://pastebin.com/raw/Zz5yqM6t"))() -- Simple UI lib

local window = library:CreateWindow("Solara Hub")

window:CreateButton("Auto Collect Orbs", function()
    while task.wait() do
        for _, orb in pairs(game:GetService("Workspace"):GetChildren()) do
            if orb.Name:lower():find("orb") then
                orb.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            end
        end
    end
end)

window:CreateButton("Teleport to Spawn", function()
    local plr = game.Players.LocalPlayer
    plr.Character.HumanoidRootPart.CFrame = CFrame.new(0, 10, 0)
end)

window:CreateToggle("Auto Jump", false, function(state)
    while state do
        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Jump = true
        task.wait(0.5)
    end
end)
