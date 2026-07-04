local SceneManager = require("singletons.scene_manager")

function _config()
  ---@type Usagi.Config
  return { name = "Game", game_id = "com.usagiengine.YOURGAMENAME" }
end

function _init()
  -- Live reload preserves globals across saved edits but resets locals.
  -- Stash mutable game state in a capitalized global like `State` so it
  -- survives reloads; F5 calls _init again to reset.
  State = {}

  --- Create a singleton instance of the SceneManager
  State.scene_manager = SceneManager:getInstance()
end

function _update(dt)
  State.scene_manager:update(dt)
end

function _draw(dt)
  gfx.clear(gfx.COLOR_BLACK)

  State.scene_manager:draw()
end
