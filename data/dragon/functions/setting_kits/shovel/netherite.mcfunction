# Change shovel to Netherite & Telling that shovel has been set to Netherite
scoreboard players set shovel kits 6
function dragon:setting_kits/shovel/clear
replaceitem entity @a hotbar.4 netherite_shovel{Unbreakable:1b}
tellraw @a "Shovel is set to Netherite"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
