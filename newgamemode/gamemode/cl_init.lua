include( "shared.lua" )


function DermaTest()
  local base = vgui.Create( "DFrame" )
  local button = vgui.Create("DButton")
    base:SetPos( ScrW()/2 - 225, ScrH()/2 - 100)
    base:SetSize( 450, 200 )
    base:SetVisible( true )
    base:SetTitle( "I love you" )
    base:SetDraggable( false )
    base:ShowCloseButton( true )
    base:MakePopup()
    
    button:SetParent( base )
    button:SetText( "Kittens" )
    butt:Center()
    butt:SetSize( 150, 50 )
    butt.DoClick = function()
        chat.AddText( Color(0, 120, 150), "Hi", Color(255, 255, 255), "My name is kitten" )
      end
end
usermessage.Hook( "Openpls", DermaTest )
