--[[

jump.lua

Use alt + vim row to jump left / rights works and to end and beginning of line.

]]--

hs.hotkey.bind("alt", "H", function()
  hs.eventtap.keyStroke("alt", "left", 50000) -- 50 ms
end)

hs.hotkey.bind("alt", "L", function()
  hs.eventtap.keyStroke("alt", "right", 50000) -- 50 ms
end)

hs.hotkey.bind("alt", "K", function()
  hs.eventtap.keyStroke("nil", "home", 50000) -- 50 ms
end)

hs.hotkey.bind("alt", "J", function()
  hs.eventtap.keyStroke("nil", "end", 50000) -- 50 ms
end)
