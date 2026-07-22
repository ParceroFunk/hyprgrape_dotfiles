-- ~/.config/hypr/hyprland.lua
-- Main entry point. Keep this file thin — it just wires up the modules below.
-- Reload live changes with: hyprctl reload

require("lua.monitors")
require("lua.programs")
require("lua.environment")
require("lua.autostart")
require("lua.appearance")
require("lua.animations")
require("lua.layouts")
require("lua.input")
require("lua.binds")
require("lua.rules")
