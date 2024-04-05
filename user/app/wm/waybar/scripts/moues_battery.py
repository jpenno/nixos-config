#!/bin/env python
from openrazer.client import DeviceManager
import json

device_manager = DeviceManager()

mouse_name = "Razer Basilisk Ultimate (Receiver)"
battery_level = None
battery_state = "none"

# look for the mouse
for device in device_manager.devices:
    if mouse_name == device.name:
        battery_level = device.battery_level

# chech if the mouse is there
if None == battery_level:
    battery_state = "na"
    battery_level = 0
    output = {
        "class": battery_state,
        "alt": battery_state,
        "text": battery_level,
    }
    output = json.dumps(output)
    print(output)
else:
# set battery state
    if battery_level == 0:
        battery_state = "na"
    elif battery_level < 10:
        battery_state = "flat"
    elif battery_level <= 25 and battery_level >= 10:
        battery_state = "very-low"
    elif battery_level < 50 and battery_level > 25:
        battery_state = "low"
    elif battery_level >= 50 and battery_level < 75:
        battery_state = "ok"
    elif battery_level >= 75:
        battery_state = "good"
    # make json object
    output = {
        "class": battery_state,
        "alt": battery_state,
        "text": battery_level,
    }
    output = json.dumps(output)
    print(output)
