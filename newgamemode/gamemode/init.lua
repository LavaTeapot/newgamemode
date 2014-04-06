AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )

include( "shared.lua" )

function GM:PlayerIntialSpawn( ply )
  ply:SetGravity( 1 )
  ply:SetWalkSpeed( 225 )
  ply:SetRunSpeed( 350 )
end

function GM:PlayerSpawn(ply)
	if ply:Team() == 1 Then
	ply:Give('weapon_pistol')
	elseif ply:Team() == 2 Then
	ply:Give('weapon_AR2')
end
