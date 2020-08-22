--[[

focus.lua

Set application bindings here!

]]--

-- Arrow Key Remaps to VIM

hs.hotkey.bind(hyper, "j", function ()
  hs.eventtap.keyStroke({}, "down")
end)

hs.hotkey.bind(hyper, "k", function ()
  hs.eventtap.keyStroke({}, "up")
end)

hs.hotkey.bind(hyper, "l", function ()
  hs.eventtap.keyStroke({}, "right")
end)

hs.hotkey.bind(hyper, "h", function ()
  hs.eventtap.keyStroke({}, "left")
end)

--

hs.hotkey.bind(hyper, "C", function ()
  hs.application.launchOrFocus('Google Chrome')
end)

hs.hotkey.bind(hyper,  "Q", function()
  hs.application.launchOrFocus('Visual Studio Code')
end)

hs.hotkey.bind(hyper,  "S", function()
  hs.application.launchOrFocus('Slack')
end)

hs.hotkey.bind(hyper,  "W", function()
  hs.application.launchOrFocus('Microsoft Word')
end)

hs.hotkey.bind(hyper,  "M", function()
  hs.application.launchOrFocus('Spotify')
end)

hs.hotkey.bind(hyper,  "X", function()
  hs.application.launchOrFocus('Xcode')
end)

hs.hotkey.bind(hyper,  "R", function()
  hs.application.launchOrFocus('RStudio')
end)

hs.hotkey.bind(hyper,  "space", function()
  hs.application.launchOrFocus('iTerm')
end)

hs.hotkey.bind(hyper,  "F", function()
  hs.application.launchOrFocus('Figma')
end)

hs.hotkey.bind(hyper,  "G", function()
  hs.application.launchOrFocus('Simulator')
end)

hs.hotkey.bind(hyper, "I", function()
  messenger = hs.application.get("Messenger")
  imessage = hs.application.get("Messages")
  local oldActive
  local newActive
  if hs.application.isFrontmost(messenger) then
    hs.application.launchOrFocus('Messages')
    newActive = imessage
    oldActive = messenger
  else
    if hs.application.isFrontmost(imessage) then
      hs.application.launchOrFocus('Messenger')
      newActive = messenger
      oldActive = imessage
    else
      hs.application.launchOrFocus('Messages')
    end
  end
  local win = oldActive:focusedWindow()
  local id = win:id()
  local screen = win:screen()
  cell = hs.grid.get(win, screen)
  local newWindow = newActive:focusedWindow()
  hs.grid.set(newWindow, cell, screen)
end)

hs.hotkey.bind(hyper, "U", function()
  messenger = hs.application.get("Messenger")
  imessage = hs.application.get("Messages")
  messenger:hide()
  imessage:hide()
  --- if Messenger is behind iMessage hide again
  messenger:hide()
end)

hs.hotkey.bind(hyper, "Z", function()
  hs.application.launchOrFocus('Screenshot')
end)

hs.hotkey.bind(hyper, "`", function()
  hs.execute("open ~/")
end)

hs.hotkey.bind(hyper, "1", function()
  hs.execute("open ~/code")
end)

hs.hotkey.bind(hyper, "2", function()
  hs.execute("open ~/Documents")
end)

hs.hotkey.bind(hyper, "3", function()
  hs.execute("open ~/Downloads")
end)

hs.hotkey.bind(hyper, "N", function()
  hs.application.launchOrFocus('Notion')
end)

hs.hotkey.bind(hyper, "T", function()
  hs.application.launchOrFocus('Spark AR Studio')
end)

hs.hotkey.bind(hyper, "P", function()
  hs.application.launchOrFocus('Postman')
end)
-- Workaround for Alacritty app
--
-- Searches current space for the app, then saves the window
-- if a window wasn't found, use the saved window, or default
-- to launchOrFocus()
--
--local spaces = require "hs._asm.undocumented.spaces"
--local unit_window = hs.geometry.size(0.0, 0.0)
--cached_win = nil
--
--hs.hotkey.bind(hyper, "space", function ()
--
--  -- Focus cached window
--  if cached_win ~= nil and cached_win:size() ~= unit_window then
--    print("focusing cached window")
--    cached_win:focus()
--    return
--  end
--
--  windows = spaces.allWindowsForSpace(spaces.activeSpace())
--
--  alacritty_win = nil
--  for k,v in pairs(windows) do
--    if v:application():name() == 'Alacritty' then
--      alacritty_win = v
--    end
--  end
--
--  -- Focus the searched window
--  if alacritty_win ~= nil then
--    print("focusing searched window")
--    cached_win = alacritty_win:focus()
--    return
--  end
--
--  -- Attempts failed, launch the app
--  print("launchOrFocus app")
--  hs.application.launchOrFocus('/Applications/Alacritty.app')
--end)
