local crypt = crypt or syn.crypt
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local ValidHashes = {
    ["cc3aa9748f0054d8bbec85cd1bd76bd053f9db93101568418cb323610b9e0bf1"] = true,
    ["b94eef697f3185115c4f75a43daeed9a920f14935c5ae4580f89e72612a51af3"] = true,
    ["979f3692e01e5e2365304b2f8ef55303b64fa3102d3631fd7001d0da6d8f93a3"] = true,
    ["6e93544a47443df668eb8fa253b776afef39e70206303f8d818ec90216747ad2"] = true,
    ["b3af0e37642a5e49641658cf3c66971dd77a1023fe74f037b6714058d86a7c7c"] = true,
    ["99e98befdff7865c280ec8ae3c94afbeb483dc95f433a867568ee2334710d578"] = true,
    ["fe86d23e17283d6297e52bfd8ede80ead41f5673efe763dab3c857675483a2b9"] = true,
    ["720de947a083342f711f753a7d7ac3187b264196629261397a7a38d941271601"] = true,
    ["2b2a8366225075c7fe58a0a65011dd38ab422df0d38b467a26940a830f4b60be"] = true,
    ["4aea8f598832ac3453d362337e621d079c7576423d5d17cbba206058576e092f"] = true,
    ["9b066f07affdab71f36b1d9cb1ad7102922dee33e3fcbb780042723078334827"] = true,
    ["7cde118617a5e9cb5920165ca8fa3e3b5bdc97c6edaba1c12afbe4adfc14865a"] = true,
    ["dc55a8a8be8bc0f3e0b7828aae0578acb00b2867da4ada1137c32888c8c7358b"] = true,
    ["033a1f388dfa8d8faed7238f5c80120ef0f77424eb930c6bf8577890bb473a41"] = true,
    ["e9606816f733e52d2ff64bcf117070f7a410562914d9d28f1daa89571ef6bf3f"] = true,
    ["0d8055537d5fb3869aa0499f3c861eb4561d86042967bf49871cb1de7c24d8f6"] = true,
    ["9fed1ecd1df6d1f5d9795e27fdc5cc1b073a733c60d1c5aafe341fadc5c42715"] = true,
    ["510011a7e5f6516241131b0bce4226066a49af3049a51f970f03175b38e74283"] = true,
    ["e8121d8fe31e48d425e0087aaa1d112287d6f543a77257b5ca73082f98acb7ff"] = true,
    ["b591de25532fa0821188de195577d1bc1bc8781a3c947f68fa505982574442ba"] = true,
    ["d91d11dbf9e8b8b0cb1f8ccd2f8a454c7e5465a9857ac9c2072e954c6e0e023e"] = true,
    ["5c0763eda6b6b8e60bea03d80e332663246d7c963b492e1543884282213d753a"] = true,
    ["d0e68327ee67bf07f54526da1d278541f4969e36a783329a6cd34ee5c8805095"] = true,
    ["e95aec6924913303de64747701fc7d54f2202a520ebf868debb93c9caf06215e"] = true,
    ["c7575b1417ddb162084a620411382811f14ecb958ca9d163f9f8b8b0455cd841"] = true,
    ["48cf3ccddfb0b8b981bcebf5babfc7696f2da1ed6752783af2cc449ae4bb8c7e"] = true,
    ["0e55a2d13c367f9a2047cc2740408d592e891a01cd533b2bbd997d6fe82cf631"] = true,
    ["0aa1d7069afabfc6cdde0532fc034da2a8b54d135bfc80dfc249d2e3f6b03b5b"] = true,
    ["21d709e303201e24cf0e43aed8113d085218e07ad1c3e18b0cde3d8db8a07990"] = true,
    ["1eabb4133fb9513c0b41a4b4fe0fe0ce5dce2d9e6de8223564fff986a6abe4e6"] = true,
    ["8d799748e2b6ed3d30fb39aa8c7a9edb5ea84d1055c54428edd0812d1ad47022"] = true,
}

local function CheckKey(key)
    return ValidHashes[crypt.hash(key, "sha256")] == true
end

local GUI = Instance.new("ScreenGui", player.PlayerGui)
GUI.Name = "QuickzHubKey"

local Frame = Instance.new("Frame", GUI)
Frame.Size = UDim2.fromScale(0.3,0.25)
Frame.Position = UDim2.fromScale(0.35,0.375)
Frame.BackgroundColor3 = Color3.fromRGB(20,20,20)

local Box = Instance.new("TextBox", Frame)
Key = tostring(game:PromptInput("Enter your QuickzHub key:")):gsub("%s+", "")
Box.Size = UDim2.fromScale(0.9,0.3)
Box.Position = UDim2.fromScale(0.05,0.25)

local Button = Instance.new("TextButton", Frame)
Button.Text = "Verify"
Button.Size = UDim2.fromScale(0.6,0.25)
Button.Position = UDim2.fromScale(0.2,0.65)

Button.MouseButton1Click:Connect(function()
    if CheckKey(Box.Text) then
        GUI:Destroy()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/crazyfolkfr/QuickzHub/main/main.lua"))()
    else
        player:Kick("Invalid QuickzHub Key")
    end
end)

