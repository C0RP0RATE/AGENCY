local whitelisted = "TheForLeafs"
local player = game:GetService("Players")

if player:FindFirstChild(whitelisted) then 
    if player[whitelisted].Character then
        if player[whitelisted].Character:FindFirstChild("Humanoid") then
        player[whitelisted].Character:FindFirstChild("Humanoid").DisplayName = "?"
        end
    end
end

if game.Players:FindFirstChild(whitelisted) then
player:WaitForChild(whitelisted).CharacterAdded:Connect(function(character)
    if character.Name == whitelisted then
        repeat wait() 
        if character:FindFirstChild("Humanoid") then
            character:FindFirstChild("Humanoid").DisplayName = "?"
        end
        until character:FindFirstChild("Humanoid")
    end
end)
end
