-- QuickzHub Key Loader
-- Put your key in script_key

script_key = script_key or ""

-- VALID KEYS
local ValidKeys = {
    ["QH-395252796"] = true,
    ["QH-564776506"] = true,
    ["QH-418480576"] = true,
    ["QH-984488925"] = true,
    ["QH-078327364"] = true,
    ["QH-619179081"] = true,
    ["QH-448030116"] = true,
    ["QH-785804561"] = true,
    ["QH-580888829"] = true,
    ["QH-794299630"] = true,

    ["QH-106896446"] = true,
    ["QH-627752076"] = true,
    ["QH-421486711"] = true,
    ["QH-206956798"] = true,
    ["QH-661258948"] = true,
    ["QH-933570377"] = true,
    ["QH-618463165"] = true,
    ["QH-429460341"] = true,
    ["QH-404963226"] = true,
    ["QH-462316507"] = true,

    ["QH-822698381"] = true,
    ["QH-053651550"] = true,
    ["QH-022178714"] = true,
    ["QH-972782853"] = true,
    ["QH-647612514"] = true,
    ["QH-980081150"] = true,
    ["QH-774068946"] = true,
    ["QH-561821268"] = true,
    ["QH-739791475"] = true,
    ["QH-104414258"] = true,

    ["QH-360181636"] = true,
    ["QH-443085318"] = true,
    ["QH-594978750"] = true,
    ["QH-579986176"] = true,
    ["QH-336758297"] = true,
    ["QH-155241566"] = true,
    ["QH-291191185"] = true,
    ["QH-456077104"] = true,
    ["QH-882279243"] = true,
    ["QH-892503390"] = true,

    ["QH-009579315"] = true,
    ["QH-467029648"] = true,
    ["QH-696264404"] = true,
    ["QH-351800554"] = true,
    ["QH-462130853"] = true,
    ["QH-679686614"] = true,
    ["QH-703375815"] = true,
    ["QH-422270539"] = true,
    ["QH-504421347"] = true,
    ["QH-869908681"] = true,
}

-- CHECK KEY
if ValidKeys[script_key] then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/crazyfolkfr/QuickzHub/main/main.lua"))()
else
    game.Players.LocalPlayer:Kick("Invalid QuickzHub key.")
end
