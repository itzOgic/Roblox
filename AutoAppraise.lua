local SolarisLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/itzOgic/Roblox/main/SolarisLib.lua")()
local player = game.Players.LocalPlayer
local statFolder,Filtered,tools
local WeightVal = 100
local MutList = {"Aurora", "Mythical", "Midas", "Ghastly", "Sinister", "Mosaic", "Electric", "Glossy", "Silver", "Darkened", "Translucent", "Frozen", "Albino", "Negative"}
local win = SolarisLib:New({
  Name = "Fisch Auto Appraise by itzOgic",
  FolderToSave = "SolarisLibStuff"
})

local tab = win:Tab("Auto Appraise")
local sec = tab:Section("Menu")

local AutoToggle = sec:Toggle("Auto Appraise Toggle", false, "AutoToggle", function(t) end)
local DelaySlider = sec:Slider("Appraise Delay", 0.5, 1, 0.1, 0.1, "DelaySlider", function(t) end)
local WeightToggle = sec:Toggle("Weight Filter Toggle", false, "WeightToggle", function(t) end)
local WeightBox = sec:Textbox("Input Weight Target", false, function(t)
	WeightVal = t
end)
-- local WeightSlider = sec:Slider("Target Weight", 100,10000,0,10, "WeightSlider", function(t) end)
local SparklingToggle = sec:Toggle("Sparkling", false, "SparklingToggle", function(t) end)
local ShinyToggle = sec:Toggle("Shiny", false, "ShinyToggle", function(t) end)
local MutationToggle = sec:Toggle("Mutation Toggle", false, "MutationToggle", function(t) end)
local MutationList = sec:MultiDropdown("Mutation Target", MutList, {"Glossy" ,"Ghastly"},"MutationList", function(t) end)
WeightBox:Set("100")
DelaySlider:Set(0.8)

local function has_value(tab, val)
	for index, value in ipairs(tab) do		
		if type(value) ~= "table" and string.find(tostring(value), tostring(val)) then
			return true
		elseif type(value) == "table" and value.Name and string.find(value.Name, val) then
			return true
		end
	end
	return false
end

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
		if AutoToggle then
			player.PlayerGui.hud.safezone.backpack.events.equip:FireServer(instance)
		end
	end
end)

local function applyFilter(statFolder)
	if WeightToggle.Value then
		if statFolder.Weight.Value < tonumber(WeightVal) then
			return false
		end
	end
	if SparklingToggle.Value then
		if not statFolder:FindFirstChild("Sparkling") then
			return false
		end
	end
	if ShinyToggle.Value then
		if not statFolder:FindFirstChild("Shiny") then
			return false
		end
	end
	if MutationToggle.Value then
		local Mutation = statFolder:FindFirstChild("Mutation")
		
		if not Mutation then
			return false 
		end
		
		if not has_value(MutationList.Value, Mutation.Value) then
			return false
		end
	end
	return true
end

local function AutoAppraise()
	if not AutoToggle.Value then return end
	tools = getTools()
	if tools ~= nil and AutoToggle.Value then
		statFolder = tools.link.Value
		Filtered = applyFilter(statFolder)
		if Filtered then return end
		workspace.world.npcs.Appraiser.appraiser.appraise:InvokeServer()
		task.wait(DelaySlider.Value)
	end
end

while wait() do
	AutoAppraise()
end
