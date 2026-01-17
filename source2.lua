-- a script made by @theycallmemiz 

-- if you're a skids, get the fuck out of here nigga

-- For Those who log/decompile this, If you sell or trade this,
-- and I find out who you are, i will take massive action.

-- service 
local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")
local StarterGui = game:GetService("StarterGui")

local lp = Players.LocalPlayer

-- send credit message
pcall(function()
    if TextChatService.TextChannels.RBXGeneral then
        TextChatService.TextChannels.RBXGeneral:SendAsync("FE Neptunian Shedsky | Creator: GAGScripter_Q")
        task.wait(4)
        TextChatService.TextChannels.RBXGeneral:SendAsync("Disclaimer: Don't Expect Anything, This Script Is In-Beta Version You May Expect Tons Of Bugs")
        task.wait(2)
        TextChatService.TextChannels.RBXGeneral:SendAsync("Credit to: CatThatDrinksSprite For functions")
    end
end)

-- helper function: send notification
local function sendNotification(title, text, duration)
    StarterGui:SetCore("SendNotification", {
        Title = title or "Notification";
        Text = text or "";
        Duration = duration or 5;
    })
end

if not isfolder("ScriptBase") then
	sendNotification("Moon Convert", "Creating \"ScriptBase\"", 7)
	makefolder("ScriptBase")
end

if not isfile("ScriptBase/thisisrequiredtorunmoonconvert.jpg") then
	sendNotification("Moon Convert", "Downloading \"ScriptBase/thisisrequiredtorunmoonconvert.jpg\"", 7)
	writefile("ScriptBase/thisisrequiredtorunmoonconvert.jpg", game:HttpGet("https://github.com/CatThatDrinksSprite/Moon-Convert/raw/main/ScriptBase/thisisrequiredtorunmoonconvert.jpg", true))
end
local userinputService = game:GetService("UserInputService")
local textchatService = game:GetService("TextChatService")

if game.CoreGui:FindFirstChild("Moon Convert") then
	sendNotification("Moon Convert", "its already loaded dumbass", 7)
	error("bad")
end

-- "get hats;neptunian shedsky"
local function getHatsNeptunianSky()
    sendNotification("Moon Convert", "Getting Hats!", 7)
    if lp.Character:FindFirstChild("MyWorldDetection") then
        sendNotification("Moon Convert", "Please get hats before reanimating", 7)
        return
    end

    -- shuffle table helper
    local function shuffleTable(t)
        local n = #t
        for i = n, 2, -1 do
            local j = math.random(1, i)
            t[i], t[j] = t[j], t[i]
        end
        return t
    end

    local ids = {"116350947642803"}
    local shuffled = shuffleTable(ids)

    game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-gh " .. table.concat(shuffled, " "))
    print("-gh " .. table.concat(shuffled, " "))
end

-- "reanimate" function
local function reanimate()
    sendNotification("Moon Convert", "Reanimating, Please Wait...", 7)
    loadstring(game:HttpGet("https://github.com/CatThatDrinksSprite/Moon-Convert/raw/main/Scripts/Reanimation/MyWorld.lua", true))()
end

-- execute everything in order
task.wait(8)

getHatsNeptunianSky()
reanimate()
loadstring(game:HttpGet("https://raw.githubusercontent.com/mizu-dump/FE/refs/heads/main/Neptunian%20Shedsky.lua", true))()

print("fish")