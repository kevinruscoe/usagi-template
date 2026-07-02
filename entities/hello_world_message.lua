local BaseEntity = require("entities.base_entity")

local HelloWorldMessage = BaseEntity:extend("HelloWorldMessage")

function HelloWorldMessage:init()
  self.message = "Hello, Usagi!"
  self.color = gfx.COLOR_WHITE
end

function HelloWorldMessage:update(dt)
  if usagi.elapsed % 2 < 1 then
    self.color = gfx.COLOR_WHITE
  else
    self.color = gfx.COLOR_GREEN
  end
end

function HelloWorldMessage:draw(dt)
  local w, h = usagi.measure_text(self.message)

  gfx.text(
    self.message,
    usagi.GAME_W / 2 - w / 2,
    usagi.GAME_H / 2 - h / 2,
    self.color
  )
end

return HelloWorldMessage
