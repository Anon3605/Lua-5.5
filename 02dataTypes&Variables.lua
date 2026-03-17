--[[
    Data Types in Lua
    - String
    - Number
    - Boolean
    - Table
    - Function
    - Userdata
    - Thread
    - Nil
    Variables in Lua
    local a = 10
    local b = "Hello"
    local c = true
    local d = {1, 2, 3}
    local e = function() return "Hello" end
    local f = nil
]]

local num = 1234
print(type(num))

local str = "Arafat"
print(type(str))

local bool = true
print(type(bool))

function test()
    print("Hello")
end

print(type(test))

local empty = nil 
print(type(empty))

--[[
    Why using local? 
    There are two types of variables in Lua: global and local.
    Global variables are accessible from anywhere in the program, 
    while local variables are only accessible within the scope they were declared.
    For instance, global variables can be accessed from outside of the lua file,
    where local can only be accessed inside the lua file it declared.
]]

MyName = "Arafat"
--This can be accessible from other files.