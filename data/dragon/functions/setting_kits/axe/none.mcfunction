# Change axe to None & Telling that axe has been set to None
scoreboard players set axe kits 0
function dragon:setting_kits/axe/clear
replaceitem entity @a hotbar.3 air
tellraw @a "Axe is set to None"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
