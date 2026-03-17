local a = 10
local b = 20

print("Sum: " .. a + b) --sum
print("Subtraction: " .. a - b) --subtraction
print("Multiplication: " .. a * b) --multiplication
print("Division: " .. a / b) --division
print("Modulo: " .. a % b) --modulo
print("Exponentiation: " .. a ^ b) --exponentiation

print("Simple Equations:")
print("4a-3b(8-a*b)/2a+b")
print("Result: " .. (4*a - 3*b*(8-a*b)/(2*a+b)).."\n")

print("Value of pi: " .. math.pi) --prints the value of pi
print("Maximum value: " .. math.max(10, 20, 33, 44, 55)) --prints the maximum value
print("Minimum value: " .. math.min(10, 20, 33, 44, 55)) --prints the minimum value
print("Absolute value: " .. math.abs(-10)) --prints the absolute value
print("Floor value: " .. math.floor(10.5)) --prints the floor value
print("Ceiling value: " .. math.ceil(10.5)) --prints the ceiling value
math.randomseed(os.time()) --sets the seed for the random number generator
print("Random number between 0 and 1: " .. math.random()) --prints a random number between 0 and 1
print("Random number between 1 and 10: " .. math.random(1, 10)) --prints a random number between 1 and 10
print("Current time in seconds: " .. os.time()) --prints the current time in seconds

--[[
    What is randomseed?
    Randomseed is a function that sets the seed for the random number generator.
    The seed is a number that is used to initialize the random number generator.
    If you don't set a seed, the random number generator will use the current time as the seed.
    This means that the random number generator will produce different results each time you run the program.
    If you set a seed, the random number generator will produce the same results each time you run the program.
]]

print("Sine of 0: " .. math.sin(0)) --prints the sine of 0
print("Cosine of 0: " .. math.cos(0)) --prints the cosine of 0
print("Tangent of 0: " .. math.tan(0)) --prints the tangent of 0
print("Square root of 16: " .. math.sqrt(16)) --prints the square root of 16
print("Exponential of 1: " .. math.exp(1)) --prints the exponential of 1
print("Natural logarithm of 2.718281828459: " .. math.log(2.718281828459)) --prints the natural logarithm of 2.718281828459
print("2 to the power of 3: " .. math.pow(2, 3)) --prints 2 to the power of 3
print("Degree of pi: " .. math.deg(math.pi)) --prints the degree of pi
print("Radian of 180: " .. math.rad(180)) --prints the radian of 180
print("Maximum value: " .. math.max(10, 20, 33, 44, 55)) --prints the maximum value
print("Minimum value: " .. math.min(10, 20, 33, 44, 55)) --prints the minimum value
