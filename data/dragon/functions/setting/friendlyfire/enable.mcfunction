# Enable Friendly Fire & Telling that Friendly Fire has been enabled
scoreboard players set friendlyfire drg_global 1
team join all @a
tellraw @a "Friendly Fire is now enabled"
function dragon:setting
playsound ui.button.click master @a ~ ~ ~ 0.3
