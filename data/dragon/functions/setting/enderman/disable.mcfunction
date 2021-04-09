# Disable Enderman & Telling that Enderman has been disabled
scoreboard players set enderman drg_global 0
scoreboard players set #enderman_tmp drg_global 0
gamerule doMobSpawning false
tp @e[type=minecraft:enderman] 0 -100 0
tellraw @a "Enderman is now disabled"
function dragon:setting
playsound ui.button.click master @a ~ ~ ~ 0.3
