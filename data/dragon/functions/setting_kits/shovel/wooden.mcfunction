# Change shovel to Wooden & Telling that shovel has been set to Wooden
scoreboard players set shovel kits 1
function dragon:setting_kits/shovel/clear
replaceitem entity @a hotbar.4 wooden_shovel{Unbreakable:1b}
tellraw @a "Shovel is set to Wooden"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
