local file = io.open("hamurabi.bas")
local testout = io.open("htest.mnd", "w")

for line in file:lines() do
    testout:write(string.format("test(%q)", line) .. ";\n")
end
