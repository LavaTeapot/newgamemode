AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )

include( "shared.lua" )

function GM:PlayerIntialSpawn( ply )
  ply:SetGravity( 1 )
  ply:SetWalkSpeed( 225 )
  ply:SetRunSpeed( 350 )
end
