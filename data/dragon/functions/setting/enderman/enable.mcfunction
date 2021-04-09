# Enable Enderman & Telling that Enderman has been enabled
scoreboard players set enderman drg_global 1
scoreboard players set #enderman_tmp drg_global 1
gamerule doMobSpawning true
tellraw @a "Enderman is now enabled"
function dragon:setting
playsound ui.button.click master @a ~ ~ ~ 0.3
