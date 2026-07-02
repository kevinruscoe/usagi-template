local BaseScene = require("scenes.base_scene")

local HelloWorldScene = BaseScene:extend("HelloWorldScene")

function HelloWorldScene:init()
  self.hello_world_message = require("entities.hello_world_message"):new()
end

function HelloWorldScene:update(dt)
  self.hello_world_message:update(dt)
end

function HelloWorldScene:draw(dt)
  self.hello_world_message:draw(dt)
end

return HelloWorldScene
