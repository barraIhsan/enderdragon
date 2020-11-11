# Disable Health & Telling that Health has been disabled
scoreboard players set health setting 0
tellraw @a "Health is now disabled"
function dragon:configuration
playsound ui.button.click master @a ~ ~ ~ 0.3
