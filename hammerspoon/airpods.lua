--[[

airpods.lua

Keeps track of airpod battery in the menu bar

]]--

local BLUETOOTH_DEVICE_STRING = "com.apple.bluetooth"

local menu = hs.menubar.new()
menu:removeFromMenuBar()

local airpod_battery = 0
local case_battery = 0

local function isAirpods(device_table)
    for k, v in pairs(device_table) do
        if string.find(v['NAME'], "AirPods") then
            return true
        end
    end

    return false
end

local function listenBluetoothMessage(name, object, userInfo)
    if userInfo == nil then
        do return end
    end

    -- For debugging
    -- print(string.format("name: %s\nobject: %s\nuserInfo: %s\n", name, object, hs.inspect(userInfo)))

    if name == BLUETOOTH_DEVICE_STRING..".status" then
        num_connected_devices = userInfo['CONNECTED_DEVICES_COUNT']
        if num_connected_devices == 0 then
            menu:removeFromMenuBar()
        elseif isAirpods(userInfo['CONNECTED_DEVICES']) and not menu:isInMenuBar() then
            menu:returnToMenuBar()
            menu:setTitle("🎧")
        end
    elseif name == BLUETOOTH_DEVICE_STRING..".deviceUpdated" then
        battery_left = userInfo['BatteryPercentLeft']
        battery_right = userInfo['BatteryPercentRight']
        case = userInfo['BatteryPercentCase']

        if battery_left ~= nil and battery_right ~= nil then
            airpod_battery = (battery_left + battery_right) / 2
        end

        if case ~= nil and case ~= 0 then
          case_battery = case
        end

        menu:setTitle(airpod_battery.."% 🎧 ⚡"..case_battery.."%")
    end
end

local listener = hs.distributednotifications.new(
    listenBluetoothMessage,
    nil,
    nil
)

listener:start()
