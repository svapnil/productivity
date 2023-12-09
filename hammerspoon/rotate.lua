require("position")

local GRID = {w = 24, h = 24}

local APPLICATION_WHEEL = {
    "Warp",
    "Visual Studio Code",
    "Google Chrome"
}

local index = 1

local moveToRightSide = function(program_name)
    hs.application.launchOrFocus(program_name)
    if hs.window.focusedWindow() then
        local axis = 'x'
        local oppDim = 'h'
        local oppAxis = 'y'
        local win = hs.window.frontmostWindow()
        local id = win:id()
        local screen = win:screen()

        cell = hs.grid.get(win, screen)
        cell.x = GRID.w - GRID.w / 2
        cell.w = GRID.w / 2

        hs.grid.set(win, cell, screen)
    end
end

local moveToLeftSide = function(program_name)
    hs.application.launchOrFocus(program_name)
    if hs.window.focusedWindow() then
        local axis = 'x'
        local oppDim = 'h'
        local oppAxis = 'y'
        local win = hs.window.frontmostWindow()
        local id = win:id()
        local screen = win:screen()

        cell = hs.grid.get(win, screen)
        cell.x = 0
        cell.w = GRID.w / 2

        hs.grid.set(win, cell, screen)
    end
end

hs.hotkey.bind(hyper, "pageup", function()
    print(APPLICATION_WHEEL[index])
    moveToLeftSide(APPLICATION_WHEEL[index]) 
    moveToRightSide(APPLICATION_WHEEL[index % #APPLICATION_WHEEL + 1]) 
    index = index % #APPLICATION_WHEEL + 1 
end)