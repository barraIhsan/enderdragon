# Disable Dragon Fireball & Telling that Dragon Fireball has been disabled
scoreboard players set dragonfireball drg_global 0
tellraw @a "Dragon Fireball is now disabled"
function dragon:setting
playsound ui.button.click master @a ~ ~ ~ 0.3
