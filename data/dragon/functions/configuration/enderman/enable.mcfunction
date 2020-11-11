# Enable Enderman & Telling that Enderman has been enabled
scoreboard players set enderman setting 1
scoreboard players set #enderman_tmp setting 1
gamerule doMobSpawning true
tellraw @a "Enderman is now enabled"
function dragon:configuration
playsound ui.button.click master @a ~ ~ ~ 0.3
