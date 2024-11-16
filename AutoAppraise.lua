local SolarisLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/itzOgic/Roblox/main/SolarisLib.lua")()
local FishData = {["Emperor Jellyfish"]=8000, ["Angelfish"]=20, ["Oyster"]=5, ["Sand Dollar"]=2, ["White Perch"]=12, ["Smallmouth Bass"]=17, ["Great Hammerhead Shark"]=5000, ["Seaweed"]=3, ["Napoleonfish"]=350, ["Sea Bass"]=60, ["Midnight Axolotl"]=30, ["Trout"]=50, ["Rabbitfish"]=60, ["Sailfish"]=600, ["Captain's Goldfish"]=25, ["Largemouth Bass"]=45, ["Walleye"]=40, ["Brine Phantom"]=6500, ["Rock"]=210, ["Sturgeon"]=800, ["Arctic Char"]=60, ["Oarfish"]=2500, ["Lobster"]=28, ["Blackfish"]=20, ["Brine Shrimp"]=3, ["Globe Jellyfish"]=240, ["Pollock"]=50, ["Chinfish"]=40, ["Bowfin"]=60, ["Cod"]=100, ["Sea Turtle"]=1500, ["Driftwood"]=6, ["Black Dragon Fish"]=400, ["Pumpkinseed"]=5, ["Cockatoo Squid"]=20, ["Galleon Goliath"]=200, ["Destroyed Fossil"]=45, ["Pyrogrub"]=600, ["Lurkerfish"]=20, ["Stalactite"]=130, ["Bone"]=25, ["Mahi Mahi"]=150, ["Axolotl"]=15, ["Grey Carp"]=70, ["Goldfish"]=7, ["Mushgrove Crab"]=14, ["Zombiefish"]=30, ["Phantom Ray"]=60, ["Voidfin Mahi"]=155, ["Umbral Shark"]=1550, ["Buccaneer Barracuda"]=250, ["Corsair Grouper"]=200, ["Quality Bait Crate"]=120, ["Enchant Relic"]=210, ["Dweller Catfish"]=160, ["Swamp Scallop"]=14, ["Boot"]=12, ["Eel"]=45, ["Spiderfish"]=10, ["Bluefin Tuna"]=2200, ["Eyefestation"]=6500, ["Sunfish"]=10000, ["Longtail Bass"]=40, ["Barreleye Fish"]=150, ["Carbon Crate"]=160, ["Nautilus"]=800, ["Deep-sea Dragonfish"]=40, ["Mackerel"]=40, ["Night Shrimp"]=2, ["Stingray"]=300, ["Isonade"]=13000, ["Ribbon Eel"]=150, ["Nessie"]=40000, ["Scurvy Sailfish"]=700, ["Minnow"]=6, ["Barbed Shark"]=9500, ["Crown Bass"]=60, ["Candy Fish"]=10, ["Bluefish"]=9, ["Skipjack Tuna"]=160, ["Shrimp"]=2, ["Anchovy"]=3, ["Bream"]=27, ["Chinook Salmon"]=400, ["Common Crate"]=80, ["Mutated Shark"]=4000, ["Gudgeon"]=3, ["Shipwreck Barracuda"]=300, ["Frilled Shark"]=90, ["Goblin Shark"]=450, ["Mussel"]=2, ["Golden Smallmouth Bass"]=45, ["Trumpetfish"]=20, ["Whiptail Catfish"]=30, ["Prawn"]=5, ["Fish Barrel"]=150, ["Horseshoe Crab"]=90, ["Scallop"]=5, ["Nurse Shark"]=1500, ["Swamp Bass"]=60, ["Abyssacuda"]=110, ["Luminescent Minnow"]=8, ["Ice"]=60, ["Wiifish"]=400, ["Porgy"]=30, ["Shortfin Mako Shark"]=1000, ["Chub"]=30, ["Barracuda"]=110, ["Haddock"]=40, ["Slate Tuna"]=600, ["Mullet"]=20, ["Pale Tang"]=15, ["Spectral Serpent"]=130000, ["Sardine"]=3, ["Crab"]=14, ["Three-eyed Fish"]=60, ["Ancient Depth Serpent"]=10000, ["Log"]=75, ["White Bass"]=25, ["Banditfish"]=200, ["Golden Seahorse"]=8, ["Twilight Eel"]=200, ["Halibut"]=2000, ["Snook"]=70, ["Sea Urchin"]=9, ["Anglerfish"]=20, ["Pufferfish"]=20, ["Whale Shark"]=100000, ["Red Snapper"]=70, ["Spider Crab"]=250, ["Cutlass Fish"]=250, ["Tire"]=110, ["Fangborn Gar"]=380, ["Obsidian Swordfish"]=2500, ["Arapaima"]=2000, ["Yellow Boxfish"]=20, ["Salmon"]=100, ["Cookiecutter Shark"]=15, ["Ember Perch"]=15, ["Perch"]=12, ["Bull Shark"]=1300, ["Rockstar Hermit Crab"]=12, ["Pike"]=35, ["Pond Emperor"]=2500, ["Gazerfish"]=140, ["Clownfish"]=6, ["Voltfish"]=16, ["Dolphin"]=2000, ["Sawfish"]=6000, ["Sockeye Salmon"]=70, ["Basalt"]=210, ["Magma Tang"]=30, ["Skelefish"]=10, ["Carp"]=50, ["Suckermouth Catfish"]=170, ["Squid"]=25, ["Flounder"]=55, ["Ghoulfish"]=120, ["Glassfish"]=4, ["Deep-sea Hatchetfish"]=35, ["Great White Shark"]=12000, ["Sea Pickle"]=10, ["Redeye Bass"]=15, ["Catfish"]=150, ["Sea Snake"]=800, ["Blue Tang"]=15, ["Sea Mine"]=3250, ["Butterflyfish"]=15, ["Cursed Eel"]=250, ["Fungal Cluster"]=9, ["Herring"]=11, ["Grayling"]=20, ["Olm"]=4, ["Manta Ray"]=10000, ["Bait Crate"]=80, ["Ember Snapper"]=120, ["Dumbo Octopus"]=40, ["Mythic Fish"]=14, ["Coelacanth"]=100, ["Sweetfish"]=5, ["Lapisjack"]=400, ["Obsidian Salmon"]=180, ["Red Tang"]=15, ["Lingcod"]=140, ["Whisker Bill"]=1000, ["Burbot"]=35, ["Small Spine Chimera"]=1500, ["Colossal Squid"]=12000, ["Reefrunner Snapper"]=250, ["Handfish"]=60, ["Flying Fish"]=50, ["Bluegill"]=6, ["Red Drum"]=25, ["Coral Geode"]=180, ["Amberjack"]=400, ["Moonfish"]=5000, ["Swordfish"]=2500, ["Glacierfish"]=600, ["Alligator Gar"]=450, ["Glacier Pike"]=35, ["Yellowfin Tuna"]=1360, ["Ringle"]=4, ["Volcanic Geode"]=200, ["The Depths Key"]=1000, ["Rubber Ducky"]=7, ["Marsh Gar"]=380, ["Ancient Eel"]=2000, ["Keepers Guardian"]=400, ["Scrap Metal"]=50, ["Alligator"]=3000, ["King Oyster"]=10, ["Depth Octopus"]=80}
local player = game.Players.LocalPlayer
local statFolder,Filtered
local WeightVal,DelayVal = 100, 0.8
local fishDone = {}
local MutList = {"Any", "Abyssal", "Albino", "Darkened", "Electric", "Frozen", "Ghastly", "Glossy", "Hexed", "Lunar", "Midas", "Mosaic", "Mythical", "Negative", "Silver", "Sinister", "Translucent"}--
local win = SolarisLib:New({
	Name = "Fisch Auto Appraise by itzOgic",
	FolderToSave = "SolarisLibStuff"
})

local tab = win:Tab("Auto Appraise")
local sec = tab:Section("Menu")

local function getallOwnedFish()
	local OwnedList = {}
	for i, fish in next, player.Backpack:GetChildren() do
		if not table.find(OwnedList,fish.Name) and fish:FindFirstChild("fishscript") then
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
local WeightTarget = sec:MultiDropdown("Weight Target", {"Big","Giant"}, {"Big","Giant"},"WeightTarget", function() fishDone = {} end)
local MutationToggle = sec:Toggle("Mutation Toggle", false, "MutationToggle", function() end)
local MutationList = sec:MultiDropdown("Mutation Target", MutList, {"Abyssal", "Hexed"},"MutationList", function() fishDone = {} end)
local SparklingToggle = sec:Toggle("Require Sparkling", false, "SparklingToggle", function() fishDone = {} end)
local ShinyToggle = sec:Toggle("Require Shiny", false, "ShinyToggle", function() fishDone = {} end)
AppraiseDelay:Set("0.8")

local function switchFish()
	for i,fish in next, player.Backpack:GetChildren() do
		if table.find(FishSelection.Value,fish.Name) and not table.find(fishDone,fish) then
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
		if AutoToggle.Value then
			player.PlayerGui.hud.safezone.backpack.events.equip:FireServer(instance)
		end
	end
end)

local function applyFilter(fish)
	statFolder = fish.link.Value
	if WeightToggle.Value and next(WeightTarget.Value) ~= nil then
		if not table.find(WeightTarget.Value,getWeightCategory(fish)) then
			return false
		end
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
		if not table.find(MutationList.Value, Mutation.Value) then
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
			if AppraiseAll.Value and not table.find(fishDone,fish) then
				table.insert(fishDone,fish)
				switchFish()
			end
			return
		end
		local success, errorMsg = pcall(function()
			workspace.world.npcs.Appraiser.appraiser.appraise:InvokeServer()
		end)
		if not success then
			warn("Appraise Failed! Waiting for 60 Seconds before Continue", errorMsg)
			task.wait(60)
		end
		task.wait(tonumber(DelayVal))
	elseif not fish and AppraiseAll.Value then
		switchFish()
	end
end

while task.wait() do
	AutoAppraise()
end
