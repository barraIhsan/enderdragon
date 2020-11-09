# Disable Keep Inventory & Telling that Keep Inventory has been disabled
scoreboard players set keepinventory setting 0
gamerule keepInventory false
tellraw @a "Keep Inventory is now disabled"
function dragon:clear_text
function dragon:configuration
