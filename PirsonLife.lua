local UILibrary = loadstring(game:HttpGet("https://pastebin.com/raw/V1ca2q9s"))()
local MainUI = UILibrary.Load("Prison Life GUI")
local FirstPage = MainUI.AddPage('Discord')
local SecondPage = MainUI.AddPage('Items')
local ThirdPage = MainUI.AddPage('Custom Guns')

function giveItem(value)
   if value == 'Key Card' then
    local args = {[1] = workspace.Prison_ITEMS.single:FindFirstChild("Key card").ITEMPICKUP};
    workspace.Remote.ItemHandler:InvokeServer(unpack(args));
   elseif value == 'Shotgun' then
    local args = {[1] = workspace.Prison_ITEMS.giver:FindFirstChild("Remington 870").ITEMPICKUP};
    workspace.Remote.ItemHandler:InvokeServer(unpack(args));
   elseif value == "Pistol" then
    local args = {[1] = workspace.Prison_ITEMS.giver.M9.ITEMPICKUP};
    workspace.Remote.ItemHandler:InvokeServer(unpack(args));
   elseif value == "AK" then
       print("pass")
    end
end

local firstDropdown = SecondPage.AddDropdown('Item', {'Key Card', 'Shotgun', 'Pistol', 'AK'}, function(value)
    selectedItem = value
    giveItem(selectedItem)
end)