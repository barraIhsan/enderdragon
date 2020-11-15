# Enable Actionbar & Telling that Actionbar has been Enabled
scoreboard players set actionbar setting 1
tellraw @a "Actionbar is now enabled"
function dragon:setting
playsound ui.button.click master @a ~ ~ ~ 0.3
