--[[

focus.lua

Set application bindings here!

]]--


hs.hotkey.bind(hyper,  "Q", function()
  hs.application.launchOrFocus('Visual Studio Code')
end)

hs.hotkey.bind(hyper,  "E", function()
  hs.application.launchOrFocus('Linear')
end)

hs.hotkey.bind(hyper,  "O", function()
  hs.application.launchOrFocus('zoom.us')
end)

hs.hotkey.bind(hyper,  "P", function()
  hs.application.launchOrFocus('Postman')
end)

hs.hotkey.bind(hyper, "C", function ()
  hs.application.launchOrFocus('Google Chrome')
end)

hs.hotkey.bind(hyper,  "M", function()
  hs.application.launchOrFocus('Spotify')
end)

hs.hotkey.bind(hyper,  "R", function()
  hs.application.launchOrFocus('Calendar')
end)

hs.hotkey.bind(hyper,  "space", function()
  hs.application.launchOrFocus('Warp')
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

-- Only works if you have Microsoft Excel open. If you don't, it will do nothing.
hs.hotkey.bind(hyper, "X", function()
  excel = hs.application.get('Microsoft Excel')
  if excel then
    hs.application.launchOrFocus('Microsoft Excel')
  end
end)

-- Only works if you have Microsoft Word open. If you don't, it will do nothing.
hs.hotkey.bind(hyper, "W", function()
  excel = hs.application.get('Microsoft Word')
  if excel then
    hs.application.launchOrFocus('Microsoft Word')
  end
end)

hs.hotkey.bind(hyper, "N", function()
  local oldActive
  local newActive
  isNotionFrontmost =  hs.application.frontmostApplication() == hs.application.get("Notion")
  if isNotionFrontmost then
    hs.application.launchOrFocus('Obsidian')
    newActive = hs.application.get('Obsidian')
    oldActive = hs.application.get('Notion')
  else
    hs.application.launchOrFocus('Notion')
    oldActive = hs.application.get('Obsidian')
    newActive = hs.application.get('Notion')
  end
  -- If both windows are active, make the new one match the size of old one.
  if oldActive and newActive then 
    local win = oldActive:focusedWindow()
    local id = win:id()
    local screen = win:screen()
    cell = hs.grid.get(win, screen)
    local newWindow = newActive:focusedWindow()
    hs.grid.set(newWindow, cell, screen)
  end
end)