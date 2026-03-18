local twoDTable = {
    {1, 2, 3},
    {4, 5, 6},
    {7, 8, 9}
}

print("2D Table:")
for i = 1, #twoDTable do
    for j = 1, #twoDTable[i] do
        io.write(tostring(twoDTable[i][j]).." ")
    end
    print()
end

local threeDTable = {
    {
        {1, 2, 3}, 
        {4, 5, 6}, 
        {7, 8, 9}
    },
    {
        {10, 11, 12}, 
        {13, 14, 15}, 
        {16, 17, 18}
    },
    {
        {19, 20, 21}, 
        {22, 23, 24}, 
        {25, 26, 27}
    }
}

print("3D Table:")
for i = 1, #threeDTable do
    print("Layer " .. i .. ":")
    for j = 1, #threeDTable[i] do
        for k = 1, #threeDTable[i][j] do
            io.write(tostring(threeDTable[i][j][k]).." ")
        end
        print()
    end
    print()
end