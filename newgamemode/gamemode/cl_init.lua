include( "shared.lua" )

function switchteam()
  local base = vgui.Create('DFrame')
  local butt = vgui.Create('DButton')
      base:SetPos(ScrW()/2 - 255, ScrH()/2 - 100)
      base:SetSize(450, 200)
      base:SetVisible(true)
      base:SetTitle('Switch Team Interface')
      base:SetDraggable(false)
      base:ShowCloseButton(true)
      base:MakePopup()
      
      butt:SetParent(base)
      butt:SetText('Switch team')
      butt:Center()
      butt:SetSize(150, 50)
      
      butt.DoClick = function()
          chat.AddText( Color(0, 120, 150), "[CONSOLE] ", Color(255, 255, 255), "Your team has been switched." )
      end
end

usermessage.Hook("SwitchTeam", switchteam)
