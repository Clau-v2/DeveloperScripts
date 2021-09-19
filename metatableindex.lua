

local metatable = {}

function metatable.index(targ1, targ2, rval)

local m
    m = hookmetamethod(game, '__index', function(i,k)
        if tostring(i):lower() == targ1:lower() and tostring(k):lower() == targ2:lower() then
        return rval
        end

        return m(i,k)
    end)
end
