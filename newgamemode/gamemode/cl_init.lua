include( "shared.lua" )


function switchteam()
  local base = vgui.Create( "DFrame" )
  local button = vgui.Create("DColorButton")
  local button1 = vgui.Create("DColorButton")
    base:SetPos( ScrW()/2 - 225, ScrH()/2 - 100)
    base:SetSize( 450, 200 )
    base:SetVisible( true )
    base:SetTitle( "" )
    base:SetDraggable( false )
    base:ShowCloseButton( true )
    base:MakePopup()
    
    button:SetParent( base )
    button:SetText( "Swap to team 1" )
    button:SetColor( Color( 100, 0, 255 ) )
    button:Center()
    button:SetSize( 150, 50 )
    button.DoClick = function()
        chat.AddText( Color(0, 120, 150), "[CONSOLE] ", Color(255, 255, 255), "Your team has been switched." )
      end
    usermessage.Hook( "switchteam1", switchteam )
    button1:SetParent( base )
    button1:SetText( "Swap to team 2" )
    button1:SetColor( Color( 0, 100, 200 ) )
    button1:Center()
    button1:SetSize( 150, 50 )
    button1.DoClick = function()
        chat.AddText( Color(0, 120, 150), "[CONSOLE] ", Color(255, 255, 255), "Your team has been switched." )
      end
    usermessage.Hook( "switchteam2", switchteam )
end

