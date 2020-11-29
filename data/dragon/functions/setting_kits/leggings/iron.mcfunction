# Change leggings to Iron & Telling that leggings has been set to Iron
scoreboard players set leggings kits 4
function dragon:setting_kits/leggings/clear
replaceitem entity @a armor.legs iron_leggings{Unbreakable:1b}
tellraw @a "Leggings is set to Iron"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
