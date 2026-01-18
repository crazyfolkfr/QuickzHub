local crypt = crypt or syn.crypt
local HttpService = game:GetService("HttpService")

local ValidHashes = {
    ["5ee284a128a0666c3d9f9c52818ddb4d04825885f1b9ee9fb54f35d228a1cbc8"] = true,
    ["c8c8b025877b0eb39d0503fd9df0e7aafaeae1cf6bb20d43b1b186d0e12d6407"] = true,
    ["4c17ad244bd859c1a355d7d8d85779354fb09f8e7baf29c8f528d8ef196bb8af"] = true,
    ["3e7800fa3c84b558a6e1916337c8bdbf55425d0e3df54fa6af217e243aa27e33"] = true,
    ["090b4657f0814d1fc01b313f168da0194d46f6f65002d1c7f2414f9df26b8370"] = true,
    ["a78663d26b4492eaf03d695a78681546fceecc06216fc89658c44db5392df02f"] = true,
    ["29fc23a6d82067337b63dd2a722deea2d2e3b4da05dc2e0a42b7cb6b98f12446"] = true,
    ["43ee171868bd805918e1c981f6349808a657293c6833050399dbc2abcacde02b"] = true,
    ["10dee0f81fdc6f89f4c7e477b92ae3aa9655ef1d9b544e8de657a22e346d3acf"] = true,
    ["6c68a301cc19565d271b2205d36e8383771ea00131ee3ee57b65cb21e035d75c"] = true,

    ["cc3aa9748f0054d8bbec85cd1bd76bd053f9db93101568418cb323610b9e0bf1"] = true,
    ["b94eef697f3185115c4f75a43daeed9a920f14935c5ae4580f89e72612a51af3"] = true,
    ["979f3692e01e5e2365304b2f8ef55303b64fa3102d3631fd7001d0da6d8f93a3"] = true,
    ["6e93544a47443df668eb8fa253b776afef39e70206303f8d818ec90216747ad2"] = true,
    ["b3af0e37642a5e49641658cf3c66971dd77a1023fe74f037b6714058d86a7c7c"] = true,
    ["99e98befdff7865c280ec8ae3c94afbeb483dc95f433a867568ee2334710d578"] = true,
    ["a8dbf39e4cd5ba4b054b0c7fbf1f03e64ae3ab38045c99ce9bdfbbb6c09e6868"] = true,
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
    ["8d799748e2b6ed3d30fb39aa8c7a9edb5ea84d1055c54428edd0812d1ad47022"] = true
}

local function CheckKey(input)
    local hashed = crypt.hash(input, "sha256")
    return ValidHashes[hashed]
end

local Key = tostring(game:GetService("Players").LocalPlayer:Kick and "")

Key = tostring(game:PromptInput("Enter your QuickzHub key:"))

if CheckKey(Key) then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/crazyfolkfr/QuickzHub/refs/heads/main/main.lua"))()
else
    game.Players.LocalPlayer:Kick("Invalid Key.")
end