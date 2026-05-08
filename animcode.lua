-- made by mys @2026
local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
local humanoid = char:WaitForChild("Humanoid")
local animate = char:WaitForChild("Animate")

function StopAnim()
	for _, track in ipairs(humanoid:GetPlayingAnimationTracks()) do
		track:Stop()
	end
end

function LoadAnimationPack(data)
	animate.Disabled = true
	StopAnim()

	if data.Idle1 then
		animate.idle.Animation1.AnimationId = "rbxassetid://" .. data.Idle1
	end

	if data.Idle2 then
		animate.idle.Animation2.AnimationId = "rbxassetid://" .. data.Idle2
	end

	if data.Walk then
		animate.walk.WalkAnim.AnimationId = "rbxassetid://" .. data.Walk
	end

	if data.Run then
		animate.run.RunAnim.AnimationId = "rbxassetid://" .. data.Run
	end

	if data.Jump then
		animate.jump.JumpAnim.AnimationId = "rbxassetid://" .. data.Jump
	end

	if data.Fall then
		animate.fall.FallAnim.AnimationId = "rbxassetid://" .. data.Fall
	end

	if data.Climb then
		animate.climb.ClimbAnim.AnimationId = "rbxassetid://" .. data.Climb
	end

	if data.Swim then
		animate.swim.Swim.AnimationId = "rbxassetid://" .. data.Swim
	end

	if data.SwimIdle then
		animate.swimidle.SwimIdle.AnimationId = "rbxassetid://" .. data.SwimIdle
	end

	humanoid:ChangeState(Enum.HumanoidStateType.Running)

	task.wait()

	animate.Disabled = false
end

local Packs = {
	Astronaut = {
		Run = 891636393,
		Walk = 891636393,
		Jump = 891627522,
		Idle1 = 891621366,
		Idle2 = 891633237,
		Fall = 891617961,
		Swim = 891639666,
		SwimIdle = 891663592,
		Climb = 891609353
	},

	Bubbly = {
		Run = 910025107,
		Walk = 910034870,
		Jump = 910016857,
		Idle1 = 910004836,
		Idle2 = 910009958,
		Fall = 910001910,
		Swim = 910028158,
		SwimIdle = 910030921,
		Climb = 909997997
	},

	Cartoony = {
		Run = 742638842,
		Walk = 742640026,
		Jump = 742637942,
		Idle1 = 742637544,
		Idle2 = 742638445,
		Fall = 742637151,
		Swim = 742639220,
		SwimIdle = 742639812,
		Climb = 742636889
	},

	Elder = {
		Run = 845386501,
		Walk = 845403856,
		Jump = 845398858,
		Idle1 = 845397899,
		Idle2 = 845400520,
		Fall = 845396048,
		Swim = 845401742,
		SwimIdle = 845403127,
		Climb = 845392038
	},

	Knight = {
		Run = 657564596,
		Walk = 657552124,
		Jump = 658409194,
		Idle1 = 657595757,
		Idle2 = 657568135,
		Fall = 657600338,
		Swim = 657560551,
		SwimIdle = 657557095,
		Climb = 658360781
	},

	Levitation = {
		Run = 616010382,
		Walk = 616013216,
		Jump = 616008936,
		Idle1 = 616006778,
		Idle2 = 616008087,
		Fall = 616005863,
		Swim = 616011509,
		SwimIdle = 616012453,
		Climb = 616003713
	},

	Mage = {
		Run = 707861613,
		Walk = 707897309,
		Jump = 707853694,
		Idle1 = 707742142,
		Idle2 = 707855907,
		Fall = 707829716,
		Swim = 707876443,
		SwimIdle = 707894699,
		Climb = 707826056
	},

	Ninja = {
		Run = 656118852,
		Walk = 656121766,
		Jump = 656117878,
		Idle1 = 656117400,
		Idle2 = 656118341,
		Fall = 656115606,
		Swim = 656119721,
		SwimIdle = 656121397,
		Climb = 656114359
	},

	Pirate = {
		Run = 750783738,
		Walk = 750785693,
		Jump = 750782230,
		Idle1 = 750781874,
		Idle2 = 750782770,
		Fall = 750780242,
		Swim = 750784579,
		SwimIdle = 750785176,
		Climb = 750779899
	},

	Robot = {
		Run = 616091570,
		Walk = 616095330,
		Jump = 616090535,
		Idle1 = 616088211,
		Idle2 = 616089559,
		Fall = 616087089,
		Swim = 616092998,
		SwimIdle = 616094091,
		Climb = 616086039
	},

	Rthro = {
		Run = 2510198475,
		Walk = 2510202577,
		Jump = 2510197830,
		Idle1 = 2510197257,
		Idle2 = 2510196951,
		Fall = 2510195892,
		Swim = 2510199791,
		SwimIdle = 2510201162,
		Climb = 2510192778
	},

	Stylish = {
		Run = 616140816,
		Walk = 616146177,
		Jump = 616139451,
		Idle1 = 616136790,
		Idle2 = 616138447,
		Fall = 616134815,
		Swim = 616143378,
		SwimIdle = 616144772,
		Climb = 616133594
	},

	Superhero = {
		Run = 616117076,
		Walk = 616122287,
		Jump = 616115533,
		Idle1 = 616111295,
		Idle2 = 616113536,
		Fall = 616108001,
		Swim = 616119360,
		SwimIdle = 616120861,
		Climb = 616104706
	},

	Toy = {
		Run = 782842708,
		Walk = 782843345,
		Jump = 782847020,
		Idle1 = 782841498,
		Idle2 = 782845736,
		Fall = 782846423,
		Swim = 782844582,
		SwimIdle = 782845186,
		Climb = 782843869
	},

	Vampire = {
		Run = 1083462077,
		Walk = 1083473930,
		Jump = 1083455352,
		Idle1 = 1083445855,
		Idle2 = 1083450166,
		Fall = 1083443587,
		Swim = 1083464683,
		SwimIdle = 1083467779,
		Climb = 1083439238
	},

	Werewolf = {
		Run = 1083216690,
		Walk = 1083178339,
		Jump = 1083218792,
		Idle1 = 1083195517,
		Idle2 = 1083214717,
		Fall = 1083189019,
		Swim = 1083222527,
		SwimIdle = 1083225406,
		Climb = 1083182000
	},

	Zombie = {
		Run = 616163682,
		Walk = 616168032,
		Jump = 616161997,
		Idle1 = 616158929,
		Idle2 = 616160636,
		Fall = 616157476,
		Swim = 616165109,
		SwimIdle = 616166655,
		Climb = 616156119
	},

	Sneaky = {
		Run = 1132494274,
		Walk = 1132510133,
		Jump = 1132489853,
		Idle1 = 1132473842,
		Idle2 = 1132477671,
		Fall = 1132469004,
		Climb = 1132461372
	},

	Confident = {
		Run = 1070001516,
		Walk = 1070017263,
		Jump = 1069984524,
		Idle1 = 1069977950,
		Idle2 = 1069987858,
		Fall = 1069973677,
		Climb = 1069946257
	},

	Popstar = {
		Run = 1212980348,
		Walk = 1212980338,
		Jump = 1212954642,
		Idle1 = 1212900985,
		Idle2 = 1212900985,
		Fall = 1212900995,
		Climb = 1213044953
	},

	Princess = {
		Run = 941015281,
		Walk = 941028902,
		Jump = 941008832,
		Idle1 = 941003647,
		Idle2 = 941013098,
		Fall = 941000007,
		Climb = 940996062
	},

	Cowboy = {
		Run = 1014401683,
		Walk = 1014421541,
		Jump = 1014394726,
		Idle1 = 1014390418,
		Idle2 = 1014398616,
		Fall = 1014384571,
		Climb = 1014380606
	},

	Patrol = {
		Run = 1150967949,
		Walk = 1151231493,
		Jump = 1150944216,
		Idle1 = 1149612882,
		Idle2 = 1150842221,
		Fall = 1148863382,
		Climb = 1148811837
	},

	ZombieFE = {
		Run = 3489173414,
		Walk = 3489174223,
		Jump = 616161997,
		Idle1 = 3489171152,
		Idle2 = 3489171152,
		Fall = 616157476,
		Climb = 616156119
	}
}

getgenv().AnimationModule = {
	LoadAnimationPack = LoadAnimationPack,
	Packs = Packs
}

return getgenv().AnimationModule
