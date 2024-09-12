--[[

focus.lua

Set application bindings here!

]]--


-- hs.hotkey.bind(hyper,  "Q", function()
--   hs.application.launchOrFocus('Visual Studio Code')
-- end)

hs.hotkey.bind(hyper,  "Q", function()
  hs.application.launchOrFocus('Cursor')
end)

-- CHATGPT APP - SET SHORTCUT IN APP
-- hs.hotkey.bind(hyper,  "O", function()
-- end)

hs.hotkey.bind(hyper,  "P", function()
  hs.application.launchOrFocus('Postman')
end)

hs.hotkey.bind(hyper, "C", function ()
  hs.application.launchOrFocus('Google Chrome')
end)

hs.hotkey.bind(hyper,  "M", function()
  hs.application.launchOrFocus('Spotify')
end)

hs.hotkey.bind(hyper,  "N", function()
  hs.application.launchOrFocus('Notion')
end)

hs.hotkey.bind(hyper,  "R", function()
  hs.application.launchOrFocus('Calendar')
end)

hs.hotkey.bind(hyper,  "space", function()
  hs.application.launchOrFocus('Warp')
end)

hs.hotkey.bind(hyper, "I", function()
  hs.application.launchOrFocus('Messages')
end)

hs.hotkey.bind(hyper, "Z", function()
  hs.application.launchOrFocus('Screenshot')
end)

hs.hotkey.bind(hyper, "1", function()
  hs.execute("open ~/Downloads")
end)

-- hs.hotkey.bind(hyper, "N", function()
--   hs.application.launchOrFocus('Obsidian')
-- end)

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
