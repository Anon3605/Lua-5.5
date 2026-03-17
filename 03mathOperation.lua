local a = 10
local b = 20

print("Sum: " .. a + b) --sum
print("Subtraction: " .. a - b) --subtraction
print("Multiplication: " .. a * b) --multiplication
print("Division: " .. a / b) --division
print("Modulo: " .. a % b) --modulo
print("Exponentiation: " .. a ^ b) --exponentiation

print("Simple Equations:".."\n")
print("4a-3b(8-a*b)/2a+b".."\n")
print("Result: " .. (4*a - 3*b*(8-a*b)/(2*a+b)))

print(math.pi) --prints the value of pi
print(math.max(10, 20, 33, 44, 55)) --prints the maximum value
print(math.min(10, 20, 33, 44, 55)) --prints the minimum value
print(math.abs(-10)) --prints the absolute value
print(math.floor(10.5)) --prints the floor value
print(math.ceil(10.5)) --prints the ceiling value
math.randomseed(os.time()) --sets the seed for the random number generator
print(math.random()) --prints a random number between 0 and 1
print(math.random(1, 10)) --prints a random number between 1 and 10
print(os.time()) --prints the current time in seconds

--[[
    What is randomseed?
    Randomseed is a function that sets the seed for the random number generator.
    The seed is a number that is used to initialize the random number generator.
    If you don't set a seed, the random number generator will use the current time as the seed.
    This means that the random number generator will produce different results each time you run the program.
    If you set a seed, the random number generator will produce the same results each time you run the program.
]]