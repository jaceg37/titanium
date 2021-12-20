-- This script is open source for now.

local titanium = Instance.new("ScreenGui")
local mainframe = Instance.new("Frame")
local close = Instance.new("TextButton")
local closeround = Instance.new("UICorner")
local min = Instance.new("TextButton")
local minround = Instance.new("UICorner")
local title = Instance.new("TextLabel")
local mainround = Instance.new("UICorner")
local customscript = Instance.new("TextBox")
local open = Instance.new("TextButton")
local scriptgo = Instance.new("TextButton")
local scripthub = Instance.new("Frame")
local refreshscripthub = Instance.new("TextButton")
local unfinishedla = Instance.new("TextLabel")
local scrhubround = Instance.new("UICorner")
local infoscripthub = Instance.new("TextButton")

titanium.Name = "titanium"
titanium.Parent = game:GetService("CoreGui")

open.Name = "open"
open.Parent = titanium
open.BackgroundColor3 = Color3.new(0.32549, 0.32549, 0.32549)
open.BorderSizePixel = 0
open.Position = UDim2.new(0, 0, 0.729863703, 0)
open.Size = UDim2.new(0, 200, 0, 50)
open.Font = Enum.Font.PermanentMarker
open.Text = "Titanium"
open.TextColor3 = Color3.new(1, 1, 1)
open.TextScaled = true
open.TextSize = 14
open.TextWrapped = true
open.Visible = false
open.Draggable = true
open.MouseButton1Click:Connect(function()
    mainframe.Visible = not mainframe.Visible
    open.Visible = not open.Visible
end)


mainframe.Name = "mainframe"
mainframe.Parent = titanium
mainframe.Active = true
mainframe.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
mainframe.Position = UDim2.new(0.323151112, 0, 0.319702595, 0)
mainframe.Selectable = true
mainframe.Size = UDim2.new(0, 440, 0, 290)
mainframe.Draggable = true

close.Name = "close"
close.Parent = mainframe
close.BackgroundColor3 = Color3.new(0.67451, 0, 0)
close.BorderSizePixel = 0
close.Position = UDim2.new(0.927272737, 0, 0.0137931034, 0)
close.Size = UDim2.new(0, 25, 0, 25)
close.Font = Enum.Font.GothamSemibold
close.Text = "X"
close.TextColor3 = Color3.new(1, 1, 1)
close.TextScaled = true
close.TextSize = 18
close.TextWrapped = true
close.MouseButton1Click:Connect(function()
    titanium:Destroy()
end)

closeround.Name = "closeround"
closeround.Parent = close
closeround.CornerRadius = UDim.new(0, 7)

min.Name = "min"
min.Parent = mainframe
min.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
min.BackgroundTransparency = 0.10000000149012
min.BorderSizePixel = 0
min.Position = UDim2.new(0.856818199, 0, 0.0137931034, 0)
min.Size = UDim2.new(0, 25, 0, 25)
min.Font = Enum.Font.Bangers
min.Text = "_"
min.TextColor3 = Color3.new(1, 1, 1)
min.TextSize = 18
min.MouseButton1Click:Connect(function()
    mainframe.Visible = not mainframe.Visible
    open.Visible = not open.Visible
end)

minround.Name = "minround"
minround.Parent = min
minround.CornerRadius = UDim.new(0, 7)

title.Name = "title"
title.Parent = mainframe
title.BackgroundColor3 = Color3.new(1, 0.666667, 0)
title.BackgroundTransparency = 1
title.Position = UDim2.new(0.350000024, 0, 0.0137931034, 0)
title.Size = UDim2.new(0, 132, 0, 34)
title.Font = Enum.Font.PermanentMarker
title.Text = "titanium"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextScaled = true
title.TextSize = 14
title.TextWrapped = true

mainround.Name = "mainround"
mainround.Parent = mainframe
mainround.CornerRadius = UDim.new(0, 10)

customscript.Name = "customscript"
customscript.Parent = mainframe
customscript.BackgroundColor3 = Color3.new(0.239216, 0.239216, 0.239216)
customscript.BorderSizePixel = 0
customscript.Position = UDim2.new(0.0522727259, 0, 0.868965507, 0)
customscript.Size = UDim2.new(0, 361, 0, 24)
customscript.ClearTextOnFocus = false
customscript.Font = Enum.Font.Nunito
customscript.PlaceholderText = "Custom script"
customscript.Text = ""
customscript.TextColor3 = Color3.new(1, 1, 1)
customscript.TextSize = 20
customscript.TextWrapped = true
customscript.TextXAlignment = Enum.TextXAlignment.Center

scriptgo.Name = "scriptgo"
scriptgo.Parent = mainframe
scriptgo.BackgroundColor3 = Color3.new(0.32549, 0.32549, 0.32549)
scriptgo.BorderSizePixel = 0
scriptgo.Position = UDim2.new(0.886363626, 0, 0.868965507, 0)
scriptgo.Size = UDim2.new(0, 43, 0, 24)
scriptgo.Font = Enum.Font.RobotoMono
scriptgo.Text = "Go"
scriptgo.TextColor3 = Color3.new(1, 1, 1)
scriptgo.TextScaled = true
scriptgo.TextSize = 14
scriptgo.TextWrapped = true
scriptgo.MouseButton1Click:Connect(function()
    local scripttext = customscript.Text
    customscript.Text = ""
    customscript.PlaceholderText = "Connecting"
    local didcon, errorcon = pcall(function()
        loadstring(game:HttpGet("https://jaceg37.github.io/titanium/scripts/"..scripttext..".lua"))()
    end)

    if not didcon then
        popup(string.lower(tostring(errorcon)))
    end
    customscript.PlaceholderText = "Custom script"
end)

scripthub.Name = "scripthub"
scripthub.Parent = mainframe
scripthub.BackgroundColor3 = Color3.new(0.247059, 0.247059, 0.247059)
scripthub.BorderSizePixel = 0
scripthub.Position = UDim2.new(0.03, 0, 0.131, 0)
scripthub.Size = UDim2.new(0, 420, 0, 200)

refreshscripthub.Name = "refreshscripthub"
refreshscripthub.Parent = scripthub
refreshscripthub.BackgroundColor3 = Color3.new(0.282353, 0.282353, 0.282353)
refreshscripthub.BorderSizePixel = 0
refreshscripthub.Position = UDim2.new(0.534, 0, 0.817, 0)
refreshscripthub.Size = UDim2.new(0, 97, 0, 28)
refreshscripthub.Font = Enum.Font.SourceSans
refreshscripthub.Text = "Refresh"
refreshscripthub.TextColor3 = Color3.new(1, 1, 1)
refreshscripthub.TextScaled = true
refreshscripthub.TextSize = 14
refreshscripthub.TextWrapped = true
refreshscripthub.MouseButton1Click:Connect(function()
    popup("Functionality isn't available yet")
end)

infoscripthub.Name = "infoscripthub"
infoscripthub.Parent = scripthub
infoscripthub.BackgroundColor3 = Color3.new(0.282353, 0.282353, 0.282353)
infoscripthub.BorderSizePixel = 0
infoscripthub.Position = UDim2.new(0.269588798, 0, 0.817, 0)
infoscripthub.Size = UDim2.new(0, 97, 0, 28)
infoscripthub.Font = Enum.Font.SourceSans
infoscripthub.Text = "Info"
infoscripthub.TextColor3 = Color3.new(1, 1, 1)
infoscripthub.TextScaled = true
infoscripthub.TextSize = 14
infoscripthub.TextWrapped = true
infoscripthub.MouseButton1Click:Connect(function()
    createBrowser("https://jaceg37.github.io/titanium/scripts/scriptfind.txt")
end)

unfinishedla.Name = "unfinishedla"
unfinishedla.Parent = scripthub
unfinishedla.BackgroundColor3 = Color3.new(1, 1, 1)
unfinishedla.BackgroundTransparency = 1
unfinishedla.Position = UDim2.new(0.0238095243, 0, 0.151685387, 0)
unfinishedla.Size = UDim2.new(0, 410, 0, 100)
unfinishedla.Font = Enum.Font.Nunito
unfinishedla.Text = "This box is intended for automatically loading scripts from our servers. That functionality is still in development. However, you can type in the script name or ID and the script will load here. More information once we actually implement this feature.\nClick Info to find scripts."
unfinishedla.TextColor3 = Color3.new(1, 1, 1)
unfinishedla.TextScaled = true
unfinishedla.TextSize = 14
unfinishedla.TextWrapped = true

scrhubround.Name = "scrhubround"
scrhubround.Parent = scripthub

-- Functions

function popup(string)
    local popupframe = Instance.new("Frame")
    local popuptext = Instance.new("TextLabel")

    popupframe.Name = "popupframe"
    popupframe.Active = true
    popupframe.Parent = mainframe
    popupframe.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
    popupframe.BorderSizePixel = 0
    popupframe.Position = UDim2.new(0.172727272, 0, 0.248275861, 0)
    popupframe.Size = UDim2.new(0, 303, 0, 109)
    popupframe.Visible = false
    popupframe.ZIndex = 2

    popuptext.Name = "popuptext"
    popuptext.Parent = popupframe
    popuptext.BackgroundColor3 = Color3.new(1, 1, 1)
    popuptext.BackgroundTransparency = 1
    popuptext.Size = UDim2.new(0, 303, 0, 109)
    popuptext.Font = Enum.Font.SourceSans
    popuptext.Text = "popup"
    popuptext.TextColor3 = Color3.new(1, 1, 1)
    popuptext.TextScaled = true
    popuptext.TextSize = 14
    popuptext.TextWrapped = true
    popuptext.ZIndex = 2

    popuptext.Text = string
    popupframe.Visible = true
    wait(2)
    popupframe.Visible = false
end

function createBrowser(geturl)
    local webbrowser = Instance.new("Frame")
    local contentsweb = Instance.new("TextBox")
    local webstatus = Instance.new("TextBox")
    local closebrowser = Instance.new("TextButton")

    webbrowser.Name = "webbrowser"
    webbrowser.Parent = titanium
    webbrowser.BackgroundColor3 = Color3.new(0.258824, 0.258824, 0.258824)
    webbrowser.BorderSizePixel = 0
    webbrowser.Position = mainframe.Position
    webbrowser.Size = UDim2.new(0, 338, 0, 322)
    webbrowser.Active = true
    webbrowser.Draggable = true

    contentsweb.Name = "contentsweb"
    contentsweb.Parent = webbrowser
    contentsweb.BackgroundColor3 = Color3.new(1, 1, 1)
    contentsweb.BackgroundTransparency = 1
    contentsweb.Position = UDim2.new(0, 0, 0.127329201, 0)
    contentsweb.Size = UDim2.new(0, 338, 0, 281)
    contentsweb.Font = Enum.Font.Code
    contentsweb.TextColor3 = Color3.new(1, 1, 1)
    contentsweb.TextSize = 14
    contentsweb.TextXAlignment = Enum.TextXAlignment.Left
    contentsweb.TextYAlignment = Enum.TextYAlignment.Top
    contentsweb.TextWrapped = true
    contentsweb.TextEditable = false
    contentsweb.ClearTextOnFocus = false

    webstatus.Name = "webstatus"
    webstatus.Parent = webbrowser
    webstatus.BackgroundColor3 = Color3.new(0.294118, 0.294118, 0.294118)
    webstatus.BorderSizePixel = 0
    webstatus.Position = UDim2.new(0, 0, 0.0807453394, 0)
    webstatus.Size = UDim2.new(0, 338, 0, 15)
    webstatus.ClearTextOnFocus = false
    webstatus.Font = Enum.Font.Code
    webstatus.Text = "Connecting"
    webstatus.TextColor3 = Color3.new(1, 1, 1)
    webstatus.TextSize = 14
    webstatus.TextXAlignment = Enum.TextXAlignment.Left
    webstatus.TextWrapped = true
    webstatus.TextEditable = false

    closebrowser.Name = "closebrowser"
    closebrowser.Parent = webbrowser
    closebrowser.BackgroundColor3 = Color3.new(0.258824, 0.258824, 0.258824)
    closebrowser.BorderSizePixel = 0
    closebrowser.Position = UDim2.new(0.908284009, 0, 0, 0)
    closebrowser.Size = UDim2.new(0, 31, 0, 26)
    closebrowser.Font = Enum.Font.Ubuntu
    closebrowser.Text = "X"
    closebrowser.TextColor3 = Color3.new(1, 1, 1)
    closebrowser.TextScaled = true
    closebrowser.TextSize = 14
    closebrowser.TextWrapped = true
    closebrowser.MouseButton1Click:Connect(function()
        webbrowser:Destroy()
    end)
    
    if syn then
        local content = syn.request({
            Url = geturl,
            Method = "GET"
        })
        webstatus.Text = content.StatusCode.." (scrolling isn't done)"
        if not content.StatusCode == 200 then
            contentsweb.Text = "Failed"
        end
        contentsweb.Text = content.Body
    end
end

if not syn then
    popup("Since you are not using Synapse X, more bugs will appear. If you spot any, make sure to report it on the Discord server.")
end

function createContents(title, string)
    local contentviewer = Instance.new("Frame")
    local contents = Instance.new("TextLabel")
    local titlecontents = Instance.new("TextBox")
    local closecontents = Instance.new("TextButton")

    contentviewer.Name = "contentviewer"
    contentviewer.Parent = titanium
    contentviewer.BackgroundColor3 = Color3.new(0.258824, 0.258824, 0.258824)
    contentviewer.BorderSizePixel = 0
    contentviewer.Position = UDim2.new(0.0699356943, 0, 0.0210656747, 0)
    contentviewer.Size = UDim2.new(0, 338, 0, 322)
    contentviewer.Active = true
    contentviewer.Draggable = true

    contents.Name = "contents"
    contents.Parent = contentviewer
    contents.BackgroundColor3 = Color3.new(1, 1, 1)
    contents.BackgroundTransparency = 1
    contents.Position = UDim2.new(0, 0, 0.127329201, 0)
    contents.Size = UDim2.new(0, 338, 0, 281)
    contents.Font = Enum.Font.Code
    contents.Text = "contents"
    contents.TextColor3 = Color3.new(1, 1, 1)
    contents.TextSize = 14
    contents.TextXAlignment = Enum.TextXAlignment.Left
    contents.TextYAlignment = Enum.TextYAlignment.Top
    contents.TextWrapped = true

    titlecontents.Name = "titlecontents"
    titlecontents.Parent = contentviewer
    titlecontents.BackgroundColor3 = Color3.new(0.294118, 0.294118, 0.294118)
    titlecontents.BorderSizePixel = 0
    titlecontents.Position = UDim2.new(0, 0, 0.0807453394, 0)
    titlecontents.Size = UDim2.new(0, 338, 0, 15)
    titlecontents.ClearTextOnFocus = false
    titlecontents.Font = Enum.Font.Code
    titlecontents.Text = tostring(title)
    titlecontents.TextColor3 = Color3.new(1, 1, 1)
    titlecontents.TextSize = 14
    titlecontents.TextXAlignment = Enum.TextXAlignment.Left
    titlecontents.TextWrapped = true
    titlecontents.TextEditable = false

    closecontents.Name = "closebrowser"
    closecontents.Parent = webbrowser
    closecontents.BackgroundColor3 = Color3.new(0.258824, 0.258824, 0.258824)
    closecontents.BorderSizePixel = 0
    closecontents.Position = UDim2.new(0.908284009, 0, 0, 0)
    closecontents.Size = UDim2.new(0, 31, 0, 26)
    closecontents.Font = Enum.Font.Ubuntu
    closecontents.Text = "X"
    closecontents.TextColor3 = Color3.new(1, 1, 1)
    closecontents.TextScaled = true
    closecontents.TextSize = 14
    closecontents.TextWrapped = true
    closecontents.MouseButton1Click:Connect(function()
        webbrowser:Destroy()
    end)

    contents.Text = game:HttpGet(webstatus.Text)
end

if not syn then
    popup("Since you are not using Synapse X, more bugs will appear. If you spot any, make sure to report it on the Discord server.")
end
