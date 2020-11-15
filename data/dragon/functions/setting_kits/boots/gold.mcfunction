# Change boots to Gold & Telling that boots has been set to Gold
scoreboard players set boots kits 2
function dragon:setting_kits/boots/clear
replaceitem entity @a armor.feet golden_boots{Unbreakable:1b}
tellraw @a "Boots is set to Gold"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
