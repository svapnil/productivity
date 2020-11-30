--[[

focus.lua

Set application bindings here!

]]--


hs.hotkey.bind(hyper, "C", function ()
  hs.application.launchOrFocus('Google Chrome')
end)

hs.hotkey.bind(hyper,  "Q", function()
  hs.application.launchOrFocus('fb-vscode-insiders')
end)

hs.hotkey.bind(hyper,  "E", function()
  hs.application.launchOrFocus('Microsoft Outlook')
end)

hs.hotkey.bind(hyper,  "W", function()
  hs.application.launchOrFocus('WhatsApp')
end)

hs.hotkey.bind(hyper,  "M", function()
  hs.application.launchOrFocus('Spotify')
end)

hs.hotkey.bind(hyper,  "O", function()
  hs.application.launchOrFocus('zoom.us')
end)

hs.hotkey.bind(hyper,  "X", function()
  hs.application.launchOrFocus('Xcode')
end)

hs.hotkey.bind(hyper,  "R", function()
  hs.application.launchOrFocus('Calendar')
end)

hs.hotkey.bind(hyper,  "space", function()
  hs.application.launchOrFocus('iTerm')
end)

hs.hotkey.bind(hyper, "I", function()
  whatsapp  = hs.application.get("WhatsApp")
  chat = hs.application.get("Workplace Chat")
  local oldActive
  local newActive
  if hs.application.frontmostApplication() == whatsapp then
    hs.application.launchOrFocus('Workplace Chat')
    newActive = chat
    oldActive = whatsapp
  else
    if hs.application.frontmostApplication() == chat then
      hs.application.launchOrFocus('WhatsApp')
      newActive = whatsapp
      oldActive = chat
    else
      hs.application.launchOrFocus('Workplace Chat')
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
  imessage = hs.application.get("Workplace Chat")
  messenger:hide()
  imessage:hide()
  --- if Messenger is behind iMessage hide again
  messenger:hide()
end)

hs.hotkey.bind(hyper, "Z", function()
  hs.application.launchOrFocus('Screenshot')
end)

hs.hotkey.bind(hyper, "1", function()
  hs.execute("open ~/")
end)

hs.hotkey.bind(hyper, "N", function()
  hs.application.launchOrFocus('Notes')
end)
