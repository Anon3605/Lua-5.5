--user input in lua
--io.read() vs io.read("*l") vs io.read("*n") vs io.read("*a")
--io.read() reads the input as a string
--io.read("*l") reads the input as a line
--io.read("*n") reads the input as a number
--io.read("*a") reads the input as a string

--io.write() vs print()
--io.write() writes the input without a newline
--print() writes the input with a newline

--Conversions
--tonumber() converts a string to a number
--tostring() converts a number to a string
--type() returns the type of a variable
--tostring(type(variable)) returns the type of a variable as a string
local score = 0
for i=1 , 10 do 
    local x, y = math.random(50,100), math.random(100,200)
    io.write(x.." + "..y.." : ")
    local ans = tonumber(io.read())
    if x + y == ans then
        score = score + 10
    end
end
io.write("Enter your name: ")
name = io.read()
io.write("Enter your age: ")
age = io.read()
io.write("Hi "..name.." for your age is "..age.." we respect your effor\n")
io.write("Your actual score is "..score..". As you are older so, ")
print("Your score is " .. score*age)