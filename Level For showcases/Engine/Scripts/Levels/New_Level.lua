local progress = 0.0

LevelFuncs.OnLoop = function() 

progress = progress + 0.3
if (progress > 100) then progress = 0 end

local pos = GetFlyByPosition(0, progress)
local rot = GetFlyByRotation(0, progress)

local animating = GetMoveableByName("snowmobile_12")

animating:SetPosition(pos)
animating:SetRotation(rot)

end