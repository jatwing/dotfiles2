-- This is used later as the default terminal and editor to run.
local terminal = "gnome-terminal"
local editor = "vim"
local editor_cmd = terminal .. ' -- ' .. editor

return {
  terminal = terminal,
  editor = editor,
  editor_cmd = editor_cmd,
}
