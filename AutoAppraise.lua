local SolarisLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/itzOgic/Roblox/main/SolarisLib.lua")()
local FishData = {["Emperor Jellyfish"] = 8000, ["Angelfish"] = 20, ["Coelacanth"] = 100, ["Sand Dollar"] = 2, ["White Perch"] = 12, ["Smallmouth Bass"] = 17, ["Great Hammerhead Shark"] = 5000, ["Seaweed"] = 3, ["Napoleonfish"] = 350, ["Sea Bass"] = 60, ["Midnight Axolotl"] = 30, ["Trout"] = 50, ["Rabbitfish"] = 60, ["Sailfish"] = 600, ["Largemouth Bass"] = 45, ["Walleye"] = 40, ["Sawfish"] = 6000, ["Rock"] = 210, ["Sturgeon"] = 800, ["Common Crate"] = 80, ["Oarfish"] = 2500, ["Lobster"] = 28, ["Moonfish"] = 5000, ["Brine Shrimp"] = 3, ["Globe Jellyfish"] = 240, ["Pollock"] = 50, ["Chinfish"] = 40, ["Bowfin"] = 60, ["Cod"] = 100, ["Sea Turtle"] = 1500, ["Driftwood"] = 6, ["Pumpkinseed"] = 5, ["Cockatoo Squid"] = 20, ["Arapaima"] = 2000, ["Nessie"] = 40000, ["Pyrogrub"] = 600, ["Lurkerfish"] = 20, ["Stalactite"] = 130, ["Bone"] = 25, ["Mahi Mahi"] = 150, ["Axolotl"] = 15, ["Grey Carp"] = 70, ["Goldfish"] = 7, ["Mushgrove Crab"] = 14, ["Zombiefish"] = 30, ["Phantom Ray"] = 60, ["Voidfin Mahi"] = 155, ["Umbral Shark"] = 1550, ["Boot"] = 12, ["Eel"] = 45, ["Spiderfish"] = 10, ["Bluefin Tuna"] = 2200, ["Eyefestation"] = 6500, ["Carbon Crate"] = 160, ["Spectral Serpent"] = 130000, ["Mackerel"] = 40, ["Night Shrimp"] = 2, ["Stingray"] = 300, ["Isonade"] = 13000, ["Ribbon Eel"] = 150, ["Minnow"] = 6, ["Crown Bass"] = 60, ["Alligator"] = 3000, ["Olm"] = 4, ["Banditfish"] = 200, ["Rockstar Hermit Crab"] = 12, ["Swamp Scallop"] = 14, ["Horseshoe Crab"] = 90, ["Scallop"] = 5, ["Nurse Shark"] = 1500, ["Abyssacuda"] = 110, ["Enchant Relic"] = 210, ["Wiifish"] = 400, ["Barbed Shark"] = 9500, ["Bluefish"] = 9, ["Red Snapper"] = 70, ["Pale Tang"] = 15, ["Crab"] = 14, ["Slate Tuna"] = 600, ["Bream"] = 27, ["Prawn"] = 5, ["Dolphin"] = 2000, ["Handfish"] = 60, ["Quality Bait Crate"] = 120, ["Ember Snapper"] = 120, ["Anchovy"] = 3, ["Log"] = 75, ["White Bass"] = 25, ["Porgy"] = 30, ["Ringle"] = 4, ["Twilight Eel"] = 200, ["Shrimp"] = 2, ["Snook"] = 70, ["Glacier Pike"] = 35, ["Sea Mine"] = 3250, ["Halibut"] = 2000, ["Sea Urchin"] = 9, ["Bait Crate"] = 80, ["Whale Shark"] = 100000, ["Trumpetfish"] = 20, ["Tire"] = 110, ["Fangborn Gar"] = 380, ["Obsidian Swordfish"] = 2500, ["Blackfish"] = 20, ["Swamp Bass"] = 60, ["Salmon"] = 100, ["Pufferfish"] = 20, ["Ember Perch"] = 15, ["Perch"] = 12, ["Lingcod"] = 140, ["Anglerfish"] = 20, ["Pike"] = 35, ["Pond Emperor"] = 2500, ["Whiptail Catfish"] = 30, ["Arctic Char"] = 60, ["Voltfish"] = 16, ["Swordfish"] = 2500, ["Yellow Boxfish"] = 20, ["Sockeye Salmon"] = 70, ["Catfish"] = 150, ["Magma Tang"] = 30, ["Skelefish"] = 10, ["Carp"] = 50, ["Suckermouth Catfish"] = 170, ["Squid"] = 25, ["Bluegill"] = 6, ["Ghoulfish"] = 120, ["Glassfish"] = 4, ["Great White Shark"] = 12000, ["Mullet"] = 20, ["Flounder"] = 55, ["Sea Pickle"] = 10, ["Barracuda"] = 110, ["Dweller Catfish"] = 160, ["Sardine"] = 3, ["Bull Shark"] = 1300, ["Manta Ray"] = 10000, ["Cookiecutter Shark"] = 15, ["Fungal Cluster"] = 9, ["Herring"] = 11, ["Grayling"] = 20, ["Chub"] = 30, ["Clownfish"] = 6, ["Blue Tang"] = 15, ["Butterflyfish"] = 15, ["Dumbo Octopus"] = 40, ["Mythic Fish"] = 14, ["Basalt"] = 210, ["Sweetfish"] = 5, ["Lapisjack"] = 400, ["Obsidian Salmon"] = 180, ["Red Tang"] = 15, ["Ice"] = 60, ["Whisker Bill"] = 1000, ["Burbot"] = 35, ["Gudgeon"] = 3, ["Colossal Squid"] = 12000, ["Oyster"] = 5, ["Fish Barrel"] = 150, ["Flying Fish"] = 50, ["Redeye Bass"] = 15, ["Red Drum"] = 25, ["Coral Geode"] = 180, ["Amberjack"] = 400, ["Mussel"] = 2, ["Skipjack Tuna"] = 160, ["Glacierfish"] = 600, ["Alligator Gar"] = 450, ["Gazerfish"] = 140, ["Yellowfin Tuna"] = 1360, ["Candy Fish"] = 10, ["Volcanic Geode"] = 200, ["Sunfish"] = 10000, ["Rubber Ducky"] = 7, ["Marsh Gar"] = 380, ["Chinook Salmon"] = 400, ["Keepers Guardian"] = 400, ["King Oyster"] = 10, ["Golden Smallmouth Bass"] = 45, ["Longtail Bass"] = 40, ["Haddock"] = 40}
local player = game.Players.LocalPlayer
local statFolder,Filtered
local WeightVal,DelayVal = 100, 0.8
local fishDone = {}
local MutList = {"Any", "Albino", "Darkened", "Electric", "Frozen", "Ghastly", "Glossy", "Midas", "Mosaic", "Mythical", "Negative", "Silver", "Sinister", "Translucent"}
local win = SolarisLib:New({
  	Name = "Fisch Auto Appraise by itzOgic",
  	FolderToSave = "SolarisLibStuff"
})

local tab = win:Tab("Auto Appraise")
local sec = tab:Section("Menu")

local function hasValue(tab, val)
	for index, value in next, tab do		
		if val == value then return true end
	end
	return false
end

local function getallOwnedFish()
	local OwnedList = {}
	for i, fish in next, player.Backpack:GetChildren() do
		if not hasValue(OwnedList,fish.Name) and fish:FindFirstChild("Fish") then
			table.insert(OwnedList, fish.Name)
		end
	end
	return OwnedList
end

local allOwnedFish = getallOwnedFish()
local AutoToggle = sec:Toggle("Auto Appraise Toggle", false, "AutoToggle", function() end)
local AppraiseAll = sec:Toggle("Appraise all Selected Fish", false, "AppraiseAll", function() end)
local FishSelection = sec:MultiDropdown("Selected Fish", allOwnedFish, {},"FishSelection", function() end)
local AppraiseDelay = sec:Textbox("Appraise Delay", false, function(t) DelayVal = t end)
local WeightToggle = sec:Toggle("Weight Filter Toggle", false, "WeightToggle", function() end)
local WeightTarget = sec:Dropdown("Weight Target", {"Big","Giant"},"Big","WeightTarget", function() end)
local SparklingToggle = sec:Toggle("Require Sparkling", false, "SparklingToggle", function() fishDone = {} end)
local ShinyToggle = sec:Toggle("Require Shiny", false, "ShinyToggle", function() fishDone = {} end)
local MutationToggle = sec:Toggle("Mutation Toggle", false, "MutationToggle", function() end)
local MutationList = sec:MultiDropdown("Mutation Target", MutList, {"Any"},"MutationList", function() fishDone = {} end)
AppraiseDelay:Set("0.8")

local function switchFish()
	for i,fish in next, player.Backpack:GetChildren() do
		if hasValue(FishSelection.Value,fish.Name) and not hasValue(fishDone,fish) then
			player.PlayerGui.hud.safezone.backpack.events.equip:FireServer(fish)
			return
		end
	end
end

local function getWeightCategory(fish)
	local fishName = fish.Name
	local statFolder = fish.link.Value
	local weight = statFolder.Weight.Value
	local Big = FishData[fishName] / 10
	local Giant = (FishData[fishName] / 10) * 1.99
	if weight > Giant then
		return "Giant"
	elseif weight > Big then
		return "Big"
	else
		return "Regular"
	end
end

local function getHeldFish()
	for i,v in next, player.Character:GetChildren() do
		if v:isA("Tool") then 
			return v 
		end
	end
	return nil
end

player.Backpack.ChildAdded:Connect(function(instance)
	if instance:isA("Tool") and not instance:FindFirstChild("link") then
		repeat task.wait() until instance:FindFirstChild("link")
		local oldtools = getHeldFish()
		if oldtools then oldtools.Parent = player.Backpack end
		if AutoToggle then
			player.PlayerGui.hud.safezone.backpack.events.equip:FireServer(instance)
		end
	end
end)

local function applyFilter(fish)
	statFolder = fish.link.Value
	if WeightToggle.Value and getWeightCategory(fish) ~= WeightTarget.Value then
		return false
	end
	if SparklingToggle.Value and not statFolder:FindFirstChild("Sparkling") then
		return false
	end
	if ShinyToggle.Value and not statFolder:FindFirstChild("Shiny") then
		return false
	end
	if MutationToggle.Value and next(MutationList.Value) ~= nil then
		local Mutation = statFolder:FindFirstChild("Mutation")
		local Any = table.find(MutationList.Value, "Any")
		
		if not Mutation then return false end
		if Any then return true end
		if not hasValue(MutationList.Value, Mutation.Value) then
			return false
		end
	end
	return true
end

local function AutoAppraise()
	if not AutoToggle.Value then return end
	local fish = getHeldFish()
	if fish then
		Filtered = applyFilter(fish)
		if Filtered then 
			if AppraiseAll.Value and not hasValue(fishDone,fish) then
				table.insert(fishDone,fish)
				switchFish()
			end
			return
		end
		workspace.world.npcs.Appraiser.appraiser.appraise:InvokeServer()
		task.wait(tonumber(DelayVal))
	elseif not fish and AppraiseAll.Value then
		switchFish()
	end
end

while task.wait() do
	AutoAppraise()
end
