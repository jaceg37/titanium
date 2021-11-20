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
local popupframe = Instance.new("Frame")
local popuptext = Instance.new("TextLabel")

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
customscript.Font = Enum.Font.GothamBold
customscript.PlaceholderText = "Custom script"
customscript.Text = ""
customscript.TextColor3 = Color3.new(1, 1, 1)
customscript.TextSize = 20
customscript.TextWrapped = true
customscript.TextXAlignment = Enum.TextXAlignment.Left

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
    popup("This hub will not connect to services right now.")
end)

scripthub.Name = "scripthub"
scripthub.Parent = mainframe
scripthub.BackgroundColor3 = Color3.new(0.247059, 0.247059, 0.247059)
scripthub.BorderSizePixel = 0
scripthub.Position = UDim2.new(0.0295454543, 0, 0.131034479, 0)
scripthub.Size = UDim2.new(0, 420, 0, 178)

refreshscripthub.Name = "refreshscripthub"
refreshscripthub.Parent = scripthub
refreshscripthub.BackgroundColor3 = Color3.new(0.282353, 0.282353, 0.282353)
refreshscripthub.BorderSizePixel = 0
refreshscripthub.Position = UDim2.new(0.383874476, 0, 0.767415762, 0)
refreshscripthub.Size = UDim2.new(0, 97, 0, 28)
refreshscripthub.Font = Enum.Font.SourceSans
refreshscripthub.Text = "Refresh"
refreshscripthub.TextColor3 = Color3.new(1, 1, 1)
refreshscripthub.TextScaled = true
refreshscripthub.TextSize = 14
refreshscripthub.TextWrapped = true
refreshscripthub.MouseButton1Click:Connect(function()
    popup("Can't find any scripts")
end)

unfinishedla.Name = "unfinishedla"
unfinishedla.Parent = scripthub
unfinishedla.BackgroundColor3 = Color3.new(1, 1, 1)
unfinishedla.BackgroundTransparency = 1
unfinishedla.Position = UDim2.new(0.0238095243, 0, 0.151685387, 0)
unfinishedla.Size = UDim2.new(0, 410, 0, 100)
unfinishedla.Font = Enum.Font.Nunito
unfinishedla.Text = "We are not connecting to the server right now due to this script being in development. Check back for an announcement."
unfinishedla.TextColor3 = Color3.new(1, 1, 1)
unfinishedla.TextScaled = true
unfinishedla.TextSize = 14
unfinishedla.TextWrapped = true

scrhubround.Name = "scrhubround"
scrhubround.Parent = scripthub

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

function popup(string)
    popuptext.Text = string
    popupframe.Visible = true
    wait(2)
    popupframe.Visible = false
end
