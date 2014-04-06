AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )

include( "shared.lua" )


function GM:PlayerInitialSpawn(ply)
	ply:Give('weapon_empty')
	ply:SetWalkSpeed(50)
	ply:SetGravity(1)
	ply:SetRunSpeed(500)
	ply:SetTeam(1)
end

function GM:PlayerSpawn(ply)
	if ply:Team() == 1 Then
	ply:Give('weapon_pistol')
	elseif ply:Team() == 2 Then
	ply:Give('weapon_AR2')
end

