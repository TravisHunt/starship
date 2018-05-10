local composer = require("composer")

-- Hide status bar
display.setStatusBar(display.HiddenStatusBar)

-- Seed the random number generator
math.randomseed(os.time())

composer.setVariable("sceneTransition", { time = 800, effect = "crossFade" })

-- Reserve channel 1 for background music
audio.reserveChannels(1)
-- Reduce overall volume of the channel
audio.setVolume(0.1, { channel = 1 })

-- Go to the menu screen
composer.gotoScene("menu")
