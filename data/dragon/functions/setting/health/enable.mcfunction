# Enable Health & Telling that Health has been Enabled
scoreboard players set health drg_global 1
tellraw @a "Health is now enabled"
function dragon:setting
playsound ui.button.click master @a ~ ~ ~ 0.3
