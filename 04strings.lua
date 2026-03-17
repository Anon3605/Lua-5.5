--Strings in Lua
--Chapter: 4
--4.1 String Basics
--4.2 Multiline, concatenation and transformation
--4.3 Escape Sequences
--4.4 String Functions

--4.1 String Basics
local str= "Hello World"
print(str) --It has default line break at the end

--4.2 Multiline, concatenation and transformation
local str2 = [[
This is Arafat.
I am a Cybersecurity Enthusiast.
This Repo was journey of learning Lua.
It was meant to move 
Blue Teaming to intermediate level.
]]
print(str2) --This is a multi-line string
str3 = "So why blue teaming?".." ".."Because it is fun!"
str4 = "It is easy to break things".." ".."But it hard to protect them!"
str5 = "You need to protect which will make you master in breaking"
str5 = "INSIDE".." ".."OUT"
--print(str3) --.. is used to concatenate strings
--print(str4)
--print(str5)
print(str3.." "..str4.." "..str5) --using .. we can concatenate multiple strings

-- to make any type as string we can use tostring() function
local num = 123
print(num .. " is a number where" .. " ".."type is " .. type(num))
num=tostring(num)
print(num .. " is a number where" .. " ".."type is " .. type(num).." ".."using tostring() function")

--4.3 Escape Sequences
--\ in string is used to escape the character
local str6 = "This is a \"quote\""
print(str6)
--\n is used to break the line
local str7 = "This is a \n new line"
print(str7)
--\t is used to add a tab
local str8 = "This is a \t tab"
print(str8)
--\\ is used to add a backslash
local str9 = "This is a \\ backslash"
print(str9)
--\' is used to add a single quote
local str10 = "This is a \'single quote\'"
print(str10)
--\" is used to add a double quote
local str11 = "This is a \"double quote\""
print(str11)
--\a is used to add a bell
local str12 = "This is a \a bell/alert"
print(str12)
--\b is used to add a backspace
local str13 = "This is a\bbackspace where a is removed by b in backspace"
print(str13)
--\f is used to add a form feed
local str14 = "This is a \f form feed"
print(str14)
--\r is used to add a carriage return
local str15 = "This is a \r carriage return"
print(str15)
--\v is used to add a vertical tab
local str16 = "This is a \v vertical tab"
print(str16)
--\0 is used to add a null character
local str17 = "This is a \0 null character"
print(str17)

--4.4 String Functions
print(string.gsub("hello world", "world", "Lua")) -- replaces all occurrences of "world" with "Lua"
print(string.upper("hello world")) -- converts string to uppercase
print(string.lower("HELLO WORLD")) -- converts string to lowercase
print(string.reverse("hello world")) -- reverses string
print(string.sub("hello world", 1, 5)) -- extracts substring from position 1 to 5
print(string.len("hello world")) -- returns length of string
print(string.byte("hello world", 1)) -- returns ASCII value of character at position 1
print(string.char(104)) -- returns character with ASCII value 104
print(string.format("Hello %s", "world")) -- formats string
print(string.match("hello world", "world")) -- returns first occurrence of "world"
print(string.gmatch("hello world", "%w+")) -- returns iterator for all words
print(string.find("hello world", "world")) -- returns start and end positions of "world"
print(string.rep("hello ", 3)) -- repeats string 3 times