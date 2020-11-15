# Change boots to Diamond & Telling that boots has been set to Diamond
scoreboard players set boots kits 5
function dragon:setting_kits/boots/clear
replaceitem entity @a armor.feet diamond_boots{Unbreakable:1b}
tellraw @a "Boots is set to Diamond"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
