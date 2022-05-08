game.StarterGui:SetCore("SendNotification", {
	Title = "Script Injected"; 
	Text = "Script has been successfully injected. Made by Atrazine#9517.";
	Duration = 10;
})

getgenv().tpf = false;
getgenv().af = false;
player = tostring(game:GetService("Players").LocalPlayer);

fh = game:GetService("Workspace").Floppa.Head; 

-- not thinking about dick it's the  player position
pp = game.Players.LocalPlayer.Character.HumanoidRootPart;

function teleportTo(placeCFrame)
    if game.Players.LocalPlayer then
       pp.CFrame = placeCFrame;
    end
end
function collectFloppa()
    spawn(function()
        while tpf do
            pp.CFrame = CFrame.new(fh.CFrame.X, fh.CFrame.Y, fh.CFrame.Z)
            wait(0.5)
        end
    end) 
end

function doFeed()
    spawn(function ()
        while getgenv().af do
            h = game:GetService("Workspace").Floppa.Display.Frame.Hunger.text;
            ch = tonumber(string.match(h, "%d%d"));
            print(ch)
            if ch > 90 then
                
            end
            wait(0.5)
        end
    end)
end

local UILibrary = loadstring(game:HttpGet("https://pastebin.com/raw/V1ca2q9s"))()
local MainUI = UILibrary.Load("Raise A Flopper GUI")
local FirstPage = MainUI.AddPage('Discord')
local SecondPage = MainUI.AddPage('Floppa')
local ThirdPage = MainUI.AddPage('Teleports')

local firstButton = FirstPage.AddButton('Copy Discord Invite', function()
    setclipboard("https://discord.gg/k269aB9xhF")
    game.StarterGui:SetCore("SendNotification", {
	Title = "Discord"; 
	Text = "Discord invite has been copied";
	Duration = 5; 
})
end) 

local thirdButton = ThirdPage.AddButton('Main House', function ()
    teleportTo(game:GetService("Workspace").SpawnLocation.CFrame)
end)

local secondButton = ThirdPage.AddButton('Dark Webs', function ()
    pp.CFrame = CFrame.new (-12600,57,-16115);
end)

local fourthButton = ThirdPage.AddButton('UFO', function ()
    pp.CFrame = CFrame.new(33.0250015, -84.5, 400.75);
end)


local fifthButton = ThirdPage.AddButton('Garden', function()
    pp.CFrame = CFrame.new(-125.699181, 1.45374218, -39.549430)
end)

local firstToggle = SecondPage.AddToggle("Auto Collect Flopper", false, function (bool)
    tpf = bool;
    collectFloppa();
end)
