package = "lirc"
version = "scm-1"
source = {
    url = "git://github.com/adam000/lirc.git",
}
description = {
    summary = "An IRC framework written entirely in Lua",
    detailed = [[lirc provides an event driven system for connecting to IRC servers and responding to actions such as messages, joins/parts, and channel mode changes, among other things. DCC SEND is also fully implemented, both for sending and receiving files.]],
    license = "MIT/X11",
    homepage = "http://github.com/adam000/lirc",
}
dependencies = {
    "lua >= 5.1",
    "luasocket",
}

build = {
    type = "builtin",
    modules = {
        ["irc"]            = "src/irc.lua",
        ["irc.channel"]    = "src/irc/channel.lua",
        ["irc.constants"]  = "src/irc/constants.lua",
        ["irc.ctcp"]       = "src/irc/ctcp.lua",
        ["irc.dcc"]        = "src/irc/dcc.lua",
        ["irc.debug"]      = "src/irc/debug.lua",
        ["irc.message"]    = "src/irc/message.lua",
        ["irc.misc"]       = "src/irc/misc.lua",
    },
}

