local c = {name = "sprite"}

function c:ctor(image, offX, offY)
	self.image = image
	self.offX = offX
	self.offY = offY
end

function c:draw()
	love.graphics.draw(self.image, self.offX, self.offY)
end

return component(c)
