# Disable Enderman & Telling that Enderman has been disabled
scoreboard players set enderman setting 0
gamerule doMobSpawning false
tp @e[type=minecraft:enderman] 0 -100 0
tellraw @a "Enderman is now disabled"
function dragon:clear_text
function dragon:configuration
