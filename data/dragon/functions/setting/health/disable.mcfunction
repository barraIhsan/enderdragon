# Disable Health & Telling that Health has been disabled
scoreboard players set health drg_global 0
tellraw @a "Health is now disabled"
function dragon:setting
playsound ui.button.click master @a ~ ~ ~ 0.3
