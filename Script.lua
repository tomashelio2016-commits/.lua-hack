local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

-- CONFIG
local aimEnabled = false
local FOV = 120 -- raio em pixels
local strength = 0.08 -- força do magnetismo
local friction = 0.6 -- desaceleração quando mira passa no alvo

-- UI (botão extra)
local ScreenGui = Instance.new("ScreenGui", LocalPlayer:WaitForChild("PlayerGui"))

local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0, 260, 0, 220)
Frame.Position = UDim2.new(0.5, -130, 0.5, -110)
Frame.BackgroundColor3 = Color3.fromRGB(25,25,25)

local AimBtn = Instance.new("TextButton", Frame)
AimBtn.Size = UDim2.new(0.8,0,0,40)
AimBtn.Position = UDim2.new(0.1,0,0.2,0)
AimBtn.Text = "Aim Assist OFF"

-- círculo FOV visual
local FOVCircle = Instance.new("Frame", ScreenGui)
FOV
