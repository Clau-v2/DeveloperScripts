


--[[
    
    Arguments must be in order


    Metatable.Index:
    metatable.index(target1 (string), target2 (string), return (return value for the value) )
    Examples:
    metatable.index('humanoid', 'walkspeed', 16)
    
    What is this useful for?
    well when u use metatble.index most likely ur spoofing something, thats what your using it for. u can set the value to anything.
    so we're getting humanoid and the property walkspeed setting it to 16. Basic metatables but u can spoof stuff in a single line.





    This will get updated further and futher on. not just metatables will be added here

    how to use?

    local metatable = loadstring(game:HttpGet('https://github.com/Clau-v2/DeveloperScripts/edit/main/metatableindex.lua/raw')

    metatable.index('humanoid', 'walkspeed', 16)

]]





--Metatables {Index Metamethod}
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

--Metatables {NameCall Metamethod coming soon}

