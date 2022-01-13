--[[

focus.lua

Set application bindings here!

]]--


hs.hotkey.bind(hyper, "C", function ()
  hs.application.launchOrFocus('Google Chrome')
end)

hs.hotkey.bind(hyper,  "Q", function()
  hs.application.launchOrFocus('Visual Studio Code')
end)

hs.hotkey.bind(hyper,  "P", function()
  hs.application.launchOrFocus('Postman')
end)

hs.hotkey.bind(hyper,  "M", function()
  hs.application.launchOrFocus('Spotify')
end)

hs.hotkey.bind(hyper,  "O", function()
  hs.application.launchOrFocus('zoom.us')
end)

hs.hotkey.bind(hyper,  "R", function()
  hs.application.launchOrFocus('Calendar')
end)

hs.hotkey.bind(hyper,  "space", function()
  hs.application.launchOrFocus('iTerm')
end)

hs.hotkey.bind(hyper, "I", function()
  hs.application.launchOrFocus('Slack')
end)

hs.hotkey.bind(hyper, "Z", function()
  hs.application.launchOrFocus('Screenshot')
end)

hs.hotkey.bind(hyper, "1", function()
  hs.execute("open ~/")
end)

hs.hotkey.bind(hyper, "N", function()
  hs.application.launchOrFocus('Notion')
end)
