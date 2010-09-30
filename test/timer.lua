local irc = require "irc"
local socket = require "socket"

irc.DEBUG = true

local function on_connect()
    print("Joining channel #bottest")
    irc.join("#bottest")
end
irc.register_callback("connect", on_connect)

local timer_count = 3
local function on_timer()
    irc.say("#bottest", "Timer triggered: " .. tostring(timer_count) .. " at " .. tostring(socket.gettime()))
    timer_count = timer_count - 1
    if timer_count <= 0 then
        irc.quit("Done with timer test")
    end
end
irc.register_callback("timer", on_timer)

irc.connect{
    network = "irc.freenode.net",
    nick = "jnw_timertest",
    timer_length = 5,
}
