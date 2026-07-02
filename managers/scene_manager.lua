local class = require("libs.30log")

local SceneManager = class("SceneManager")


function SceneManager:init()
  self.scenes = {}
end

function SceneManager:addScene(sceneName, scene)
  table.insert(self.scenes, { name = sceneName, scene = scene })
end

function SceneManager:switchScene(sceneName)
  if not self.scenes then
    self.scenes = {}
  end

  if self.currentScene then
    self.currentScene:exit()
  end

  for _, scene in ipairs(self.scenes) do
    if scene.name == sceneName then
      self.currentScene = scene.scene
      self.currentScene:enter()
      return
    end
  end
end

function SceneManager:update(dt)
  if self.currentScene then
    self.currentScene:update(dt)
  end
end

function SceneManager:draw()
  if self.currentScene then
    self.currentScene:draw()
  end
end

return SceneManager
