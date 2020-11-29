# Change boots to Netherite & Telling that boots has been set to Netherite
scoreboard players set boots kits 6
function dragon:setting_kits/boots/clear
replaceitem entity @a armor.feet netherite_boots{Unbreakable:1b}
tellraw @a "Boots is set to Netherite"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
