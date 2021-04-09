# Disable Actionbar & Telling that Actionbar has been disabled
scoreboard players set actionbar drg_global 0
tellraw @a "Actionbar is now disabled"
function dragon:setting
playsound ui.button.click master @a ~ ~ ~ 0.3
