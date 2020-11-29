# Change leggings to leather & Telling that leggings has been set to leather
scoreboard players set leggings kits 1
function dragon:setting_kits/leggings/clear
replaceitem entity @a armor.legs leather_leggings{Unbreakable:1b}
tellraw @a "Leggings is set to Leather"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
