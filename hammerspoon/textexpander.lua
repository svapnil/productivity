

function tempPaste(content)
    -- save current clipboard data
    tempClipboard = hs.pasteboard.uniquePasteboard()
    hs.pasteboard.writeAllData(tempClipboard, hs.pasteboard.readAllData(nil))
  
    -- load content into clipboard and paste
    hs.pasteboard.writeObjects(content)
    hs.eventtap.keyStroke({'cmd'}, 'v')
  
    -- recall clipboard data
    hs.pasteboard.writeAllData(nil, hs.pasteboard.readAllData(tempClipboard))
    hs.pasteboard.deletePasteboard(tempClipboard)
end

hs.hotkey.bind(hyper,  "1", function()
    tempPaste("Hello, World!")
end)