        local SelfDotCircle = Drawing.new("Circle")
    SelfDotCircle.Visible = false
    SelfDotCircle.Filled = false
    SelfDotCircle.Thickness = 1
    SelfDotCircle.Transparency = 1
    SelfDotCircle.Radius = 7
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
