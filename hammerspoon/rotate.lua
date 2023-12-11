require("position")

local GRID = {w = 24, h = 24}

local APPLICATION_WHEEL = {
    "Visual Studio Code",
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

hs.hotkey.bind(nil, "f14", function()
   newindex = (index % #APPLICATION_WHEEL) + 1
   previousRightProgramName = APPLICATION_WHEEL[newindex] 

   newRightProgramName = APPLICATION_WHEEL[newindex % #APPLICATION_WHEEL + 1]

   moveToLeftSide(previousRightProgramName)
   moveToRightSide(newRightProgramName)

    -- focus the program you just moved left
    hs.application.launchOrFocus(previousRightProgramName)

   index = newindex
end)

hs.hotkey.bind(nil, "f15", function()
    previousLeftProgramName = APPLICATION_WHEEL[index]

    -- Go back one in the application wheel
    newindex = ((index - 2) % #APPLICATION_WHEEL) + 1
    newLeftWindowProgramName = APPLICATION_WHEEL[newindex]

    moveToRightSide(previousLeftProgramName)
    moveToLeftSide(newLeftWindowProgramName)

    -- focus the program you just moved right
    hs.application.launchOrFocus(previousLeftProgramName)

    index = newindex
end)
