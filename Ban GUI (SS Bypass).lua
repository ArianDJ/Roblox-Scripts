--[[
		Tritem Hub GTL
		Version 2.1.4
    ~This is nostalgica...
    ~I'll bring Tritem Hub back.
]]


-- Instances and stuff

local BAN_GUI = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local BAN = Instance.new("TextButton")
local sus = Instance.new("TextBox")

-- Properties and stuff

BAN_GUI.Name = "BAN_GUI"
BAN_GUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Main.Name = "Main"
Main.Parent = BAN_GUI
Main.BackgroundColor3 = Color3.new(1, 1, 1)
Main.BorderColor3 = Color3.new(0, 0, 0)
Main.Position = UDim2.new(0.415645659, 0, 0.172904253, 0)
Main.Size = UDim2.new(0, 226, 0, 123)

Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.new(0.666667, 0, 0)
Title.Position = UDim2.new(0, 0, -0.00021908147, 0)
Title.Size = UDim2.new(0, 225, 0, 53)
Title.Font = Enum.Font.LuckiestGuy
Title.Text = "Client-to-server ban test (open source)"
Title.TextColor3 = Color3.new(0.333333, 0, 0)
Title.TextScaled = true
Title.TextSize = 14
Title.TextWrapped = true

BAN.Name = "BAN"
BAN.Parent = Main
BAN.BackgroundColor3 = Color3.new(0.666667, 0, 0)
BAN.Position = UDim2.new(-0.000854897313, 0, 0.663660467, 0)
BAN.Size = UDim2.new(0, 225, 0, 41)
BAN.Font = Enum.Font.Unknown
BAN.Text = "BAN!"
BAN.TextColor3 = Color3.new(0.333333, 0, 0)
BAN.TextScaled = true
BAN.TextSize = 14
BAN.TextWrapped = true

sus.Name = "sus"
sus.Parent = Main
sus.BackgroundColor3 = Color3.new(0.666667, 0, 0)
sus.Position = UDim2.new(-0.00010005985, 0, 0.427881986, 0)
sus.Size = UDim2.new(0, 226, 0, 30)
sus.Font = Enum.Font.Unknown
sus.PlaceholderText = "Insert name here"
sus.Text = ""
sus.TextColor3 = Color3.new(0.333333, 0, 0)
sus.TextSize = 14
sus.TextWrapped = true

-- Scripts and stuff

local function QIDPQTB_fake_script() -- Main.Script 
	local script = Instance.new('Script', Main)

	local DaGui = script.Parent.Parent;
	local MainGui = DaGui.Main;
	local insertName = MainGui.sus;
	local BAN_BUTTON = MainGui.BAN;
	MainGui.Draggable = true;
	local function BanRight()
		game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
		local insertedName = insertName.Text;
		game.Players[insertedName]:Destroy();
		game.Workspace[insertedName]:Destroy();
		print(insertedName + 'succesfully banned');
	end;
	local function SayNO()
		print('BRO THAT GUY AINT IN GAME IDIOT')
	end
	BAN_BUTTON.MouseButton1Click:Connect(function()
		pcall(
			BanRight()
		)
	end)
end
coroutine.wrap(QIDPQTB_fake_script)()
--well enjoy yo client script
--sure
--no.
