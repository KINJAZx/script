-- Loader dengan sistem key
local HttpService = game:GetService("HttpService")

-- Ambil daftar key dari GitHub
local keysUrl = "https://raw.githubusercontent.com/KINJAZx/script/main/keys.txt"
local keyListRaw = game:HttpGet(keysUrl)
local keyTable = {}

-- Split isi file jadi table
for key in string.gmatch(keyListRaw, "[^\r\n]+") do
    keyTable[key] = true
end

-- USER INPUT (ganti key sesuai yang kamu punya)
local myKey = "ABC123"

-- Cek validasi key
if keyTable[myKey] then
    print("✅ Key valid, script dijalankan!")

    -- Ambil script asli
    local scriptUrl = "https://raw.githubusercontent.com/KINJAZx/script/main/yareuu.lua"
    loadstring(game:HttpGet(scriptUrl))()
else
    warn("❌ Key salah atau tidak terdaftar.")
end
