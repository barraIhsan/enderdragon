# Change boots to leather & Telling that boots has been set to leather
scoreboard players set boots kits 1
function dragon:setting_kits/boots/clear
replaceitem entity @a armor.feet leather_boots{Unbreakable:1b}
tellraw @a "Boots is set to Leather"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
