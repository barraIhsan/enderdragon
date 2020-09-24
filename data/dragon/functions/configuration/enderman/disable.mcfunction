# Disable Enderman & Telling that Enderman has been disabled
gamerule doMobSpawning false
tp @e[type=minecraft:enderman] 0 -100 0
tellraw @a "Enderman is now disabled"
