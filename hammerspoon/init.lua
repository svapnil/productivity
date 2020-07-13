-- Globals
-- Set these values in karabiner
hyper = {"ctrl", "alt", "cmd"}
hypershift = {"ctrl", "alt", "cmd", "shift"}
hypertab = {"ctrl", "alt", "cmd", "tab"}

-- Home directory where lua code is stored
cwd = os.getenv("HOME") .. "/.hammerspoon/"

-- Toggle modules here
require('position')
require('focus')
require('monitor')

--require('watcher') -- Use when developing
--To get names of applications
function getApps()
	hs.fnutils.each(hs.application.runningApplications(), function(app) print(app:title()) end)
end
