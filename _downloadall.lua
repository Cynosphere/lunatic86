local shell = require("shell")

local cmd = "wget" -- "nget"
local baseURL = "https://raw.githubusercontent.com/Cynosphere/lunatic86/master/"

local files = {
    "comms",
    "config_disks",
    "disks",
    "emu_core",
    "kbdmaps",
    "keyboard",
    "lunatic86",
    "pic",
    "pit",
    "platform_oc",
    "sysconf",
    "table_cp437",
    "table_ocpalette",
    "timer",
    "video"
}

for _, f in ipairs(files) do
    shell.execute(string.format("%s %s%s.lua", cmd, baseURL, f))
end