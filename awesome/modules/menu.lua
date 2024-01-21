-- Standard awesome library
local awful = require("awful")
-- Theme handling library
local beautiful = require("beautiful")
-- Notification library
local menubar = require("menubar")
local hotkeys_popup = require("awful.hotkeys_popup")

local terminal = require("modules.terminal").terminal
local editor_cmd = require("modules.terminal").editor_cmd

-- Create a launcher widget and a main menu
myawesomemenu = { { "hotkeys", function()
  hotkeys_popup.show_help(nil, awful.screen.focused())
end }, {
  "manual",
  "gnome-terminal -- sh -c 'man awesome'",
}, {
  "edit config",
  editor_cmd .. " " .. awesome.conffile,
}, { "restart", awesome.restart }, { "quit", function()
  awesome.quit()
end } }

mymainmenu = awful.menu({
  items = {
    { "awesome", myawesomemenu, beautiful.awesome_icon },
    { "open terminal", terminal },
  },
})

mylauncher = awful.widget.launcher({
  image = beautiful.awesome_icon,
  menu = mymainmenu,
})

-- Menubar configuration
menubar.utils.terminal = terminal -- Set the terminal for applications that require it
