# Change boots to None & Telling that boots has been set to None
scoreboard players set boots kits 0
function dragon:setting_kits/boots/clear
replaceitem entity @a armor.feet air
tellraw @a "Boots is set to None"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
