# Disable Kill Arrow & Telling that Kill Arrow has been disabled
scoreboard players set killarrow drg_global 0
tellraw @a "Kill Arrow is now disabled"
function dragon:setting
playsound ui.button.click master @a ~ ~ ~ 0.3
