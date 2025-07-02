-- Globals
-- Set these values in karabiner
hyper = {"ctrl", "alt", "cmd"}
hypershift = {"ctrl", "alt", "cmd", "shift"}
hypertab = {"ctrl", "alt", "cmd", "tab"}

-- Home directory where lua code is stored
cwd = os.getenv("HOME") .. "/.hammerspoon/"

-- Toggle modules here
require('hs.ipc')
require('position')
require('focus')
require('jump')
require('monitor')
require('airpods')
require('rotate')

-- Run this in HAMMERSPOON CONSOLE to install the CLI
-- hs.ipc.cliInstall("/opt/homebrew")

--require('watcher') -- Use when developing
--To get names of applications
function getApps()
	hs.fnutils.each(hs.application.runningApplications(), function(app) print(app:title()) end)
end
