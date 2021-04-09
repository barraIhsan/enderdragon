# Enable Dragon Fireball & Telling that Dragon Fireball has been enabled
scoreboard players set dragonfireball drg_global 1
tellraw @a "Dragon Fireball is now enable"
function dragon:setting
playsound ui.button.click master @a ~ ~ ~ 0.3
