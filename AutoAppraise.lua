local player = game.Players.LocalPlayer
local autoappraise = true
local statFolder,Filtered,tools
local delay = 0.5

local function getTools()
	for i,v in pairs(player.Character:GetChildren()) do
		if v:isA("Tool") then
			return v
		end
	end
	return nil
end

player.Backpack.ChildAdded:Connect(function(instance)
	if instance:isA("Tool") and not instance:FindFirstChild("link") then
		repeat task.wait() until instance:FindFirstChild("link")
		local oldtools = getTools()
		if oldtools then oldtools.Parent = player.Backpack end
		if autoappraise then
			player.PlayerGui.hud.safezone.backpack.events.equip:FireServer(instance)
		end
	end
end)

local function applyFilter(statFolder)
	if filterData.Weight > 0 then
		if statFolder.Weight.Value < filterData.Weight then
			return false
		end
	end
	if filterData.Sparkling ~= false then
		if not statFolder:FindFirstChild("Sparkling") then
			return false
		end
	end
	if filterData.Shiny ~= false then
		if not statFolder:FindFirstChild("Shiny") then
			return false
		end
	end
	if filterData.Mutation ~= "" then
		local Mutation = statFolder:FindFirstChild("Mutation")
		if not Mutation then return false end
		
		if Mutation.Value ~= filterData.Mutation then
			return false
		end
	end
	return true
end

local function AutoAppraise()
	repeat task.wait()
		tools = getTools()
		if tools ~= nil then
			statFolder = tools.link.Value
			Filtered = applyFilter(statFolder)
			if Filtered then break end
			workspace.world.npcs.Appraiser.appraiser.appraise:InvokeServer()
			task.wait(delay)
		end
	until Filtered
	autoappraise = false
end

AutoAppraise()
