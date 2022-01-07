--[[

airpods.lua

Connects Airpods to Mac Via Shortcut

-- ]]--

function airPods(deviceName)
    local s = [[
        use framework "IOBluetooth"
        use scripting additions
        set AirPodsName to "AirPods"
        on getFirstMatchingDevice(deviceName)
            repeat with device in (current application's IOBluetoothDevice's pairedDevices() as list)
                if (device's nameOrAddress as string) contains deviceName then return device
            end repeat
        end getFirstMatchingDevice
        on connectDevice(device)
            if not (device's isConnected as boolean) then
                device's openConnection()
                return "Connecting " & (device's nameOrAddress as string)
            else
                return "Already connected to Airpods"
                -- device's closeConnection()
                -- return "Disconnecting " & (device's nameOrAddress as string)
            end if
        end connectDevice
    ]]
    ..
        'return connectDevice(getFirstMatchingDevice("' .. deviceName .. '"))\n'
    ..
    [[]]
    return hs.osascript.applescript(s)
  end

hs.hotkey.bind(hyper, "`", function ()
    local ok, output = airPods('AirPods Pro')
    if ok then
        hs.alert.show(output)
    else
        hs.alert.show("Couldn't connect to AirPods!")
    end
end)

