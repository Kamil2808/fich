-- loadstring(game:HttpGet('https://raw.githubusercontent.com/Kamil2808/fich/refs/heads/main/fisch.lua'))()
 
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
 
local Window = Rayfield:CreateWindow({
   Name = "Zalupa ebanaya",
   Icon = 17279065671, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Рыба",
   LoadingSubtitle = "by kdal",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes
 
   DisableRayfieldPrompts = true,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
 
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "what ta fak u doing here?"
   },
 
   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
 
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})
 
local MainTab = Window:CreateTab("Tab Example", 17279065671)
 
local Button = MainTab:CreateButton({
   Name = "Ёбнись с крыши",
   Callback = function()
       Rayfield:Destroy()
   end,
})

local totemaum = 1

local Slider = MainTab:CreateSlider({
   Name = "Slider Example",
   Range = {1, 1000},
   Increment = 10,
   Suffix = "Bananas",
   CurrentValue = 1,
   Flag = "Slider1",
   Callback = function(Value)
   		totemaum = Value
   end,
})
 
local Buttonn = MainTab:CreateButton({
   Name = "Рыбако",
   Callback = function()
       local args1 = { --хуйня для закидывания удочки нахуй
           [1] = 100,
           [2] = 1
        }
        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kings Rod").events.cast:FireServer(unpack(args1))
 
		wait(2)
        game:GetService("Players").LocalPlayer.PlayerGui.shakeui.safezone.connect:Destroy()
        game:GetService("Players").LocalPlayer.PlayerGui.shakeui.safezone.Position = UDim2.new(0.15, 0, 0.1, 0)
        game:GetService("Players").LocalPlayer.PlayerGui.shakeui.safezone.Size = UDim2.new(0.1, 0, 0.1, 0)
 
        while game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("shakeui") do
            local startTime = tick()
            if tick() - startTime >= 1 then
                break
            else
			    local GuiService = game:GetService("GuiService")
        	    local Inset = GuiService.TopbarInset
                local VirtualInputManager = game:GetService("VirtualInputManager") -- Идите нахуй, я это делал 4 блядских часов
                game:GetService("Players").LocalPlayer.PlayerGui.shakeui.safezone.button.Position = UDim2.new(0.5, 0, 0.5, 0)
                game:GetService("Players").LocalPlayer.PlayerGui.shakeui.safezone.button.Size = UDim2.new(1, 0, 1, 0)
                local Mouse = game:GetService("Players").LocalPlayer.PlayerGui.shakeui.safezone.button.AbsolutePosition
			    local Siz = game:GetService("Players").LocalPlayer.PlayerGui.shakeui.safezone.button.AbsoluteSize
                VirtualInputManager:SendMouseButtonEvent(Mouse.X+Siz.x/2, Mouse.Y+Inset.Height+Siz.Y/2, 0, true, game, 1) 
			    wait(0.01)
                VirtualInputManager:SendMouseButtonEvent(Mouse.X+Siz.x/2, Mouse.Y+Inset.Height+Siz.Y/2, 0, false, game, 1)
        end
		wait(2)
        local args2 = { --хуйня с полоской
            [1] = 100,
            [2] = false
        }
 
        game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("reelfinished "):FireServer(unpack(args2))
   end,
})
 
local Buttonnn = MainTab:CreateButton({
   Name = "Тотем",
   Callback = function()
        local xyz = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1148, 134.49998474121094, -1075)
        workspace.world.interactables:WaitForChild("Sundial Totem")
        while not game:GetService("Players").LocalPlayer.PlayerGui.over:FindFirstChild("prompt") do
            fireproximityprompt(workspace.world.interactables["Sundial Totem"].purchaserompt)
            wait(0.1)
        end
        game:GetService("Players").LocalPlayer.PlayerGui.over.prompt.amount.Text = totemaum
        firesignal(game:GetService("Players").LocalPlayer.PlayerGui.over.prompt.confirm.MouseButton1Click)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = xyz
		wait(0.1)
		while game:GetService("Players").LocalPlayer.PlayerGui.over:FindFirstChild("prompt") do
            firesignal(game:GetService("Players").LocalPlayer.PlayerGui.over.prompt.deny.MouseButton1Click)
            wait(0.1)
        end
    end,
})
local Buttonnnn = MainTab:CreateButton({
    Name = "Ден скип нахуй",
    Callback = function()
        local VirtualInputManager = game:GetService("VirtualInputManager") -- Идите нахуй, я это делал 4 блядских часов
        local Mouse = workspace.Camera.ViewportSize
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Sundial Totem")
        tool.Parent = game.Players.LocalPlayer.Character
        print(Mouse)
        VirtualInputManager:SendMouseButtonEvent(Mouse.X*0.5, Mouse.Y*0.5, 0, true, game, 1) 
        wait(0.1)
        VirtualInputManager:SendMouseButtonEvent(Mouse.X*0.5, Mouse.Y*0.5, 0, false, game, 1)
        wait(0.1)
     end,
 })
