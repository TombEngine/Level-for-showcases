-- Place in this Lua script all the levels of your game
-- Title is mandatory and must be the first level.

-- Intro image is a splash screen which appears before actual loading screen.
-- If you don't want it to appear, just remove this line.

-- Flow.SetIntroImagePath("Screens\\main.jpg")

-- Set overall amount of secrets in game.
-- If set to 0, secrets won't be displayed in statistics.

Flow.SetTotalSecretCount(5)

-- Enable/Disable Point Filter (square, unsmoothed pixels).

Flow.EnablePointFilter(false)

-- Enable/Disable saving and loading of savegames.

Flow.EnableLoadSave(true)

-- Disable/enable flycheat globally

Flow.EnableFlyCheat(true)

-- Disable/enable Lara drawing in title level

Flow.EnableLaraInTitle(false)

-- Disable/enable level selection in title level

Flow.EnableLevelSelect(true)

-- Disable/enable mass pickup (collect all pickups at once)

Flow.EnableMassPickup(true)

-- Title level

title = Level.new()

title.ambientTrack = "108"
title.levelFile = "Data\\title.ten"
title.scriptFile = "Scripts\\Levels\\title.lua"
title.loadScreenFile = "Screens\\main.jpg"

Flow.AddLevel(title)

--------------------------------------------------
-- New_Level level

New_Level = TEN.Flow.Level()

New_Level.nameKey = "New_Level"
New_Level.scriptFile = "Scripts\\Levels\\New_Level.lua"
New_Level.ambientTrack = "110"
New_Level.horizon = true
New_Level.levelFile = "Data\\New_Level.ten"
New_Level.loadScreenFile = "Screens\\rome.jpg"

TEN.Flow.AddLevel(New_Level)

--------------------------------------------------

-- Water_Features level

Water_Features = TEN.Flow.Level()

Water_Features.nameKey = "Water_Features"
Water_Features.scriptFile = "Scripts\\Levels\\Water_Features.lua"
Water_Features.ambientTrack = "110"
Water_Features.horizon = true
Water_Features.levelFile = "Data\\Water_Features.ten"
Water_Features.loadScreenFile = "Screens\\rome.jpg"

Water_Features.objects = {

	InventoryItem("blue_cube",
				ObjID.PUZZLE_ITEM1,
				0,
				1,
				Rotation(0,0,0),
				RotationAxis.Y,
				0,
				ItemAction.USE
				),

	InventoryItem("red_cube",
				ObjID.PUZZLE_ITEM2,
				0,
				1,
				Rotation(0,0,0),
				RotationAxis.Y,
				0,
				ItemAction.USE
				)
	
	}

TEN.Flow.AddLevel(Water_Features)

--------------------------------------------------
