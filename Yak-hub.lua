-- Carregar biblioteca
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()



-- Criar janela principal
local Window = Fluent:CreateWindow({
    Title = "Yak hub " .. Fluent.Version,
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Theme = "Dark"
})

-- Criar abas
local Tabs = {
    Main = Window:AddTab({ Title = "créditos 🪪" }),
    Settings = Window:AddTab({ Title = "Configurações", Icon = "settings" }),
    Troll = Window:AddTab({ Title = "Troll Players", Icon = "alert-triangle" }),
    Audio = Window:AddTab({ Title = "Áudio All", Icon = "music" }),
    Casas = Window:AddTab({ Title = "Casas", Icon = "home" }),
    Carros = Window:AddTab({ Title = "Carros", Icon = "car" })
}

Tabs.Troll:AddButton({
    Title = "Tp tool",
    Callback = function()
        local mouse = game.Players.LocalPlayer:GetMouse()
        local tool = Instance.new("Tool")
        tool.RequiresHandle = false
        tool.Name = "Tp tool (Equip to Click TP)"
        tool.Activated:Connect(function()
            local pos = mouse.Hit + Vector3.new(0, 2.5, 0)
            pos = CFrame.new(pos.X, pos.Y, pos.Z)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
        end)
        tool.Parent = game.Players.LocalPlayer.Backpack
    end
})

-- Adicionar botão na aba "Troll Players"
Tabs.Troll:AddButton({
    Title = "Ativar Trolling",
    Callback = function()
        end
})
