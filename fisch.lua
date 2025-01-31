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

local Buttonn = MainTab:CreateButton({
   Name = "Рыбако",
   Callback = function()
       local args1 = { --хуйня для закидывания удочки нахуй
           [1] = 100,
           [2] = 1
        }
        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kings Rod").events.cast:FireServer(unpack(args1))
        game:GetService("Players").LocalPlayer:WaitForChild("reset"):FireServer()
            
        print(game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild(shakeui))

        while game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild(shakeui) do
            local VirtualInputManager = game:GetService("VirtualInputManager") -- Идите нахуй, я это делал 4 блядских часов
            local Mouse = game:GetService("Players").LocalPlayer.PlayerGui.shakeui.safezone.button.AbsolutePosition
            print(Mouse)
            VirtualInputManager:SendMouseButtonEvent(Mouse.X, Mouse.Y, 0, true, game, 1) 
            VirtualInputManager:SendMouseButtonEvent(Mouse.X, Mouse.Y, 0, false, game, 1)
            wait(0.1)
        end

        local args2 = { --хуйня с полоской
            [1] = 100,
            [2] = false
        }

        game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("reelfinished "):FireServer(unpack(args2))
   end,
})
local Buttonnn = MainTab:CreateButton({
   Name = "Тап тап",
   Callback = function()
        local VirtualInputManager = game:GetService("VirtualInputManager") -- Идите нахуй, я это делал 4 блядских часов
        local Mouse = game:GetService("Players").LocalPlayer.PlayerGui.shakeui.safezone.button.AbsolutePosition
        print(Mouse)
        VirtualInputManager:SendMouseButtonEvent(Mouse.X, Mouse.Y, 0, true, game, 1) 
        VirtualInputManager:SendMouseButtonEvent(Mouse.X, Mouse.Y, 0, false, game, 1)
        wait(0.1)
    end,
})