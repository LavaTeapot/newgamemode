AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )

include( "shared.lua" )

function GM:PlayerIntialSpawn( ply )
  ply:SetGravity( 1 )
  ply:SetWalkSpeed( 225 )
  ply:SetRunSpeed( 350 )
  ply:SetTeam( 1 )
end

function GM:PlayerSpawn(ply)
	if ply:Team() == 1 Then
	ply:Give('weapon_pistol')
	elseif ply:Team() == 2 Then
	ply:Give('weapon_AR2')
	end
end
//
local RDM = math.random( 1, 2 )
	if RDM == 1 then
	ply:SetTeam( 1 )
	elseif RDM == 2 then
	ply:SetTeam( 2 )
end
TEAM1 = team.NumPlayers( 1 )
TEAM2 = team.NumPlayers( 2 )
	if TEAM1 > TEAM2 then
		ply:SetTeam( 2 )
	elseif TEAM2 > TEAM1 then
		ply:SetTeam( 1 )
	end
end

function SetTeam1( ply )
	ply:SetTeam( 1 )
	umsg.Start( "switchteam1", ply )
	umsg.End()
end

function SetTeam2( ply )
	ply:SetTeam( 2 )
	umsg.Start( "switchteam2", ply )
	umsg.End()
end
