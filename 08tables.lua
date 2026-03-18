--Tables in lua
--Ever head of arrays? In lua it is called tables. 
--Tables are mutable, meaning they can be changed after creation
--
local table01 = {26, "september", true, 3.14, nil, "end", "another", 911}
print(type(table01))

print(table01[3])
for i = 1, #table01 do
    io.write("Index: " .. i.." : ")
    print("Value: " .. tostring(table01[i]))
end

table01[1] = 27
print("After changing first element:")
for i = 1, #table01 do
    io.write("Index: " .. i.." : ")
    print("Value: " .. tostring(table01[i]))
end
print("This is Mutability in action...")

local table02 = {1,3,2,6,5,4,9,11,7,8,12,10,14,24,16,22,28,20}
print("Table02:"..tostring(table02)) --gives you the memory address
for i = 1, #table02 do
    io.write(tostring(table02[i]).." ")
end
print() --new line

table.sort(table02)
print("After sorting:")
for i = 1, #table02 do
    io.write(tostring(table02[i]).." ")
end
print() --new line

print("To insert 250 at the end of the table:")
table.insert(table02, 250)
print(table02[#table02])
print("To insert 100 at the beginning of the table:")
table.insert(table02, 1, 100)
print(table02[1])
print("To remove element at index 1 and #table:")
table.remove(table02, 1)
table.remove(table02, #table02)
print("Value of elements in 1 and #table: " .. table02[1] .. ", " .. table02[#table02])

print("Adding commas between elements: " .. table.concat(table02, ", "))
print("Using table.concat(\"tableName\", \"addingValue after every element\")")
