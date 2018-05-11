local composer = require("composer")
local particalDesigner = require("particleDesigner");

-- Hide status bar
display.setStatusBar(display.HiddenStatusBar)

-- Seed the random number generator
math.randomseed(os.time())

composer.setVariable("sceneTransition", { time = 800, effect = "crossFade" })

-- Reserve channel 1 for background music
audio.reserveChannels(1)
-- Reduce overall volume of the channel
audio.setVolume(0.1, { channel = 1 })

local fireEmitter = particalDesigner.newEmitter("fire.json")

composer.setVariable("fireEmitter", fireEmitter)

-- Go to the menu screen
composer.gotoScene("menu")
