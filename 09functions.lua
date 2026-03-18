--functions in lua
--functions are first class citizens in lua (Without parameters and with parameters)
--functions can be assigned to variables (function expressions)
--functions can be passed as arguments to other functions (callback functions)
--functions can be returned as values from other functions (higher order functions)

local function func() --function without parameters
    print([["This is fucked up man. 
I've been coding for like 1 day straight
THis is like a hell of a way to spend a day
Do you know why this feel like hell?
learning new shit requires new neurons
to form connections that wasn't there before
I hate this pain or love this?
I don't feel anything man!!! FUCKH!!"]])
end


local function func2(x,y,z) --function with parameters
    print("Your first value is " .. x)
    print("Your second value is " .. y)
    print("Your third value is " .. z)
end

local function func3(x,y,z)
    local sum = x + y + z
    return sum
end

func()
io.write("Enter your first value: ")
local firstVal = io.read("*n")
io.write("Enter your second value: ")
local secondVal = io.read("*n")
io.write("Enter your third value: ")
local thirdVal = io.read("*n")
func2(firstVal, secondVal, thirdVal)
local sum = func3(firstVal, secondVal, thirdVal)
print("The sum is " .. sum)

local function factorial(n) --Recursion function
    if n == 0 then
        return 1
    else
        return n * factorial(n - 1)
    end
end
io.write("Enter a value that you want to find the factorial of: ")
local n = io.read("*n")
local fact = factorial(n)
print("The factorial of " .. n .. " is " .. fact)