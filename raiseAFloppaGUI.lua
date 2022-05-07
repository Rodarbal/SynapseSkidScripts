game.StarterGui:SetCore("SendNotification", {
	Title = "Script Injected"; 
	Text = "Script has been successfully injected. Made by Atrazine#9517.";
	Duration = 10;
})

getgenv().tpf = false;
getgenv().af = false;

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
            pp.CFrame = new.CFrame(fh.CFrame.X, fh.CFrame.Y, fh.CFrame.Z)
            wait(0.5)
        end
    end) 
end

while getgenv().af do
    h = game:GetService("Workspace").Floppa.Display.Frame.Hunger.text;
    ch = tonumber(string.match(h, "%d%d"));
    print(ch)
    wait(0.1)
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

local firstToggle = SecondPage.AddToggle("Auto Collect Flopper", false, function (bool)
    tpf = bool;
    collectFloppa();
end)
