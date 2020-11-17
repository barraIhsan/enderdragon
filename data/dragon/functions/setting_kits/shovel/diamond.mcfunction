# Change shovel to Diamond & Telling that shovel has been set to Diamond
scoreboard players set shovel kits 5
function dragon:setting_kits/shovel/clear
replaceitem entity @a hotbar.4 diamond_shovel{Unbreakable:1b}
tellraw @a "Shovel is set to Diamond"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
