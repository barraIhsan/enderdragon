# Disable Glass Bottle & Telling that Glass Bottle has been disabled
scoreboard players set glassbottle setting 0
tellraw @a "Glass Bottle is now disabled"
function dragon:setting
playsound ui.button.click master @a ~ ~ ~ 0.3
