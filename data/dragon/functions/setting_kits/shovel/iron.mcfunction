# Change shovel to Iron & Telling that shovel has been set to Iron
scoreboard players set shovel kits 4
function dragon:setting_kits/shovel/clear
replaceitem entity @a hotbar.4 iron_shovel{Unbreakable:1b}
tellraw @a "Shovel is set to Iron"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
