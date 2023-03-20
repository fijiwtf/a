        local SelfDotCircle = Drawing.new("Circle")
    SelfDotCircle.Visible = true
    SelfDotCircle.Filled = true
    SelfDotCircle.Thickness = 3
    SelfDotCircle.Transparency = 1
    SelfDotCircle.Radius = 13
getgenv().Enabled = true
    game.RunService.Heartbeat:Connect(function()
        local Pos, OnScreen = 
            workspace.CurrentCamera:WorldToViewportPoint(game.Players.LocalPlayer.Character.HumanoidRootPart.Position + (game.Players.LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity * .135))

        if Enabled and OnScreen then
            SelfDotCircle.Visible = true
            SelfDotCircle.Position = Vector2.new(Pos.X, Pos.Y)
        else
            SelfDotCircle.Visible = false
        end
    end)
