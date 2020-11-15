# Disable Friendly Fire & Telling that Friendly Fire has been disabled
scoreboard players set friendlyfire setting 0
team join all @a
tellraw @a "Friendly Fire is now disabled"
function dragon:setting
playsound ui.button.click master @a ~ ~ ~ 0.3
