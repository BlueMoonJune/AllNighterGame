local vec = require("lib.vec2").new
local c = {name = "player", deps = {"transform"}}

function c:ctor()

end

function c:update()
	local moveVec = vec(
		(love.keyboard.isDown("d") and 1 or 0) - (love.keyboard.isDown("a") and 1 or 0),
		(love.keyboard.isDown("s") and 1 or 0) - (love.keyboard.isDown("w") and 1 or 0)
	)

	local trans = self.entity:getComponent "transform"

	trans.pos = trans.pos + moveVec
end

return component(c)
