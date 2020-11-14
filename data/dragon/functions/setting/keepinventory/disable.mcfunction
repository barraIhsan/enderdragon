# Disable Keep Inventory & Telling that Keep Inventory has been disabled
scoreboard players set keepinventory setting 0
tellraw @a "Keep Inventory is now disabled"
function dragon:setting
playsound ui.button.click master @a ~ ~ ~ 0.3
