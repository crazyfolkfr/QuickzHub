local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- VALID QUICKZHUB KEYS
local ValidKeys = {
    ["QH-482739105"] = true,
    ["QH-907351284"] = true,
    ["QH-163094827"] = true,
    ["QH-550921673"] = true,
    ["QH-294875031"] = true,
    ["QH-781406259"] = true,
    ["QH-639502174"] = true,
    ["QH-058394721"] = true,
    ["QH-916274038"] = true,
    ["QH-347610952"] = true,

    ["QH-804192375"] = true,
    ["QH-295610483"] = true,
    ["QH-713849620"] = true,
    ["QH-064981573"] = true,
    ["QH-589032471"] = true,
    ["QH-926450817"] = true,
    ["QH-430972158"] = true,
    ["QH-175863249"] = true,
    ["QH-760429531"] = true,
    ["QH-218795604"] = true,

    ["QH-945607321"] = true,
    ["QH-581239470"] = true,
    ["QH-036958742"] = true,
    ["QH-874520196"] = true,
    ["QH-109684257"] = true,
    ["QH-692174835"] = true,
    ["QH-457306918"] = true,
    ["QH-203598741"] = true,
    ["QH-918274506"] = true,
    ["QH-364095172"] = true,

    ["QH-750419268"] = true,
    ["QH-826507941"] = true,
    ["QH-490631758"] = true,
    ["QH-675942103"] = true,
    ["QH-052861497"] = true,
    ["QH-398507624"] = true,
    ["QH-184960235"] = true,
    ["QH-731695408"] = true,
    ["QH-906273154"] = true,
    ["QH-247830691"] = true,

    ["QH-815397026"] = true,
    ["QH-694520173"] = true,
    ["QH-309175648"] = true,
    ["QH-528049761"] = true,
    ["QH-047216935"] = true,
    ["QH-972608154"] = true,
    ["QH-450837269"] = true,
    ["QH-168934507"] = true,
    ["QH-793520418"] = true,
    ["QH-625194703"] = true,

    ["QH-240867519"] = true,
    ["QH-985413762"] = true,
    ["QH-376250918"] = true,
    ["QH-507139486"] = true,
    ["QH-614908352"] = true,
    ["QH-089536241"] = true,
    ["QH-852160749"] = true,
    ["QH-931427605"] = true,
    ["QH-460725913"] = true,
    ["QH-708319564"] = true,

    ["QH-193486720"] = true,
    ["QH-540867129"] = true,
    ["QH-864025371"] = true,
    ["QH-072391654"] = true,
    ["QH-918564230"] = true,
    ["QH-357029846"] = true,
    ["QH-621904785"] = true,
    ["QH-405761938"] = true,
    ["QH-296837014"] = true,
    ["QH-739105862"] = true,

    ["QH-684297051"] = true,
    ["QH-105768429"] = true,
    ["QH-938261740"] = true,
    ["QH-417630295"] = true,
    ["QH-520948673"] = true,
    ["QH-863150274"] = true,
    ["QH-079462581"] = true,
    ["QH-294705816"] = true,
    ["QH-651827390"] = true,
    ["QH-940376152"] = true,
}

-- Simple Key Prompt (no GUI)
local key = tostring(game:PromptInput("Enter your QuickzHub Key:")):gsub("%s+", "")

if ValidKeys[key] then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/crazyfolkfr/QuickzHub/main/main.lua"))()
else
    player:Kick("Invalid QuickzHub Key")
end
