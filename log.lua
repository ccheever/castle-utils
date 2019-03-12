--[[
`log` takes any number of arguments and prints them 
out as a comma separated list. Anything other than 
strings will be pretty-printed using serpent.
]]

local serpent =
    require(
    "https://raw.githubusercontent.com/pkulchenko/serpent/522a6239f25997b101c585c0daf6a15b7e37fad9/src/serpent.lua"
)

local function log(...)
    local out = {}
    for i, obj in ipairs({...}) do
        if type(obj) == "string" then
            table.insert(out, obj)
        else
            table.insert(out, serpent.line(obj))
        end
    end
    print(table.concat(out, ", "))
end

return log
