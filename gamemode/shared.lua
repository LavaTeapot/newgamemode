GM.Name = "newgamemode"
GM.Author = "N/A"
GM.Email = "N/A"
GM.Website = "N/A"

function GM:Initialize()
	self.BaseClass.Initialize(self)
end 

team.SetUp(1, 'Team 1', Color(100,0,255))
team.SetUp(2, 'Team 2', Color(0, 100, 200))