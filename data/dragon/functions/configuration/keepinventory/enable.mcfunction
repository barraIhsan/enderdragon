# Enable Keep Inventory & Telling that Keep Inventory has been enabled
scoreboard players set keepinventory setting 1
tellraw @a "Keep Inventory is now enabled"
function dragon:configuration
playsound ui.button.click master @a ~ ~ ~ 0.3
