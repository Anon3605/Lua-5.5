-- Flow Control in Lua

--[[
if condition then
    further code or execution
end
]]

print("Enter a Number: ")
local age = tonumber(io.read())
if age >= 18 and age <= 65 then
    print("You are an adult")
end

if not (age > 18) then --so after not operator, use brackets to group the condition
    print("You are not an adult")
end

print("Let's build a calculator...")
print("Enter first number: ")
local num1 = tonumber(io.read())
print("Enter second number: ")
local num2 = tonumber(io.read())
print("Enter operator: ")
local operator = io.read()
--[[
Using if, elseif and else
]]
if operator == "+" then
    print(num1 + num2)
elseif operator == "-" then
    print(num1 - num2)
elseif operator == "*" then
    print(num1 * num2)
elseif operator == "/" then
    print(num1 / num2)
else
    print("Invalid operator")
end
