# Enable Health & Telling that Health has been Enabled
scoreboard players set health setting 1
tellraw @a "Health is now enabled"
function dragon:configuration
playsound ui.button.click master @a ~ ~ ~ 0.3