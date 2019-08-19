local log =
    require "https://raw.githubusercontent.com/ccheever/castle-utils/c5a150bf783bfcaf24bbcf8cbe0824fae34a8198/log.lua"

function createArray(dimensions, fill)
    -- log("args", dimensions, fill)
    if #dimensions < 1 then
        -- error
        return nil
    elseif #dimensions == 1 then
        local r = {}
        for i = 1, dimensions[1] do
            table.insert(r, fill)
        end
        return r
    else
        local rd = {}
        for i = 2, #dimensions do
            table.insert(rd, dimensions[i])
        end
        local d = dimensions[1]
        local r = {}
        for i = 1, d do
            local a = createArray(rd, fill)
            table.insert(r, a)
        end
        return r
    end
    local rd = {}
end

return {
    createArray = createArray
}
