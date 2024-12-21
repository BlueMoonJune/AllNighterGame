require "engine"
local vec = require("lib.vec2").new

local transform = require "components.general.transform"
local graphicsState = require "components.graphical.graphicsState"
local polygon = require "components.graphical.polygon"
local trail = require "components.graphical.trail"
local sprite = require "components.graphical.sprite"

createEntity()
  :addComponent(transform, vec(100, 100), nil, nil)
  :addComponent("components.test.spin", -10)
  :addComponent(sprite, love.graphics.newImage("cat.png"), -32, -32)
  :addComponent("components.game.player")
