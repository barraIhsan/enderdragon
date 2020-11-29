# Change boots to Iron & Telling that boots has been set to Iron
scoreboard players set boots kits 4
function dragon:setting_kits/boots/clear
replaceitem entity @a armor.feet iron_boots{Unbreakable:1b}
tellraw @a "Boots is set to Iron"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
