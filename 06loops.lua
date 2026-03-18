--loops in lua
--[[
for initilization, condition, increment do
   inside operations 
end
]]

for i = 1, 10 do --by default the increment is 1
    print(i)
end
for i = 1, 10, 2 do --increment by 2
    print(i)
end
for i = 10, 1, -1 do --decrement by 1
    print(i)
end
arr={2,3,44,56,67,78}
for i=1, #arr do  --#arr gives the length of the array
    print("Value of the index " .. i .. " is " .. arr[i])  --print the element at index i
    
    if i == 0 then
        print("The value is nil")
    elseif arr[i] % 2 == 0 then
        print("Even number")
    else
        print("Odd number")
    end
end
-- 0 index gives nil cause lua arrays start from 1 indexing

--[[
while condition do
    increment/decrement
    inside operations
    increment/decrement
end
--]]

local run = true
print("Enter the runtime as big as possible to crash the program:")
local runtime = tonumber(io.read())
while run do
    runtime = runtime - 1
    print("Running... " .. runtime)
    if runtime <= 0 then
        run = false
    end
end

--basically while loop is used when we don't know the number of iterations
--[[
repeat
    --inside operations
    --increment/decrement
until condition
]]
repeat
    print("This will run at least once")
    break
until false
local limit = 10
repeat
    print("The square of " .. limit .. " is " .. limit^2)
    limit = limit - 1
until limit <= 0
