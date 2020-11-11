# Enable Dragon Fireball & Telling that Dragon Fireball has been enabled
scoreboard players set dragonfireball setting 1
tellraw @a "Dragon Fireball is now enable"
function dragon:configuration
playsound ui.button.click master @a ~ ~ ~ 0.3
