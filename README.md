# The engine

## Singleton

./managers/scene_manager.lua

## Scenes

./base_scene.lua

Use State.scene_manager:addScene(name, BaseScene) to add a scene
use State.scene_manager:switchScene(name) to switch to it

## Entities

./base_entity.lua

Bundle common methods into this, and extend from the class

## Utils

./utils

## Vendor

- ./libs/30log.lua
