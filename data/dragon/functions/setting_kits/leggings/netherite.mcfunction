# Change leggings to Netherite & Telling that leggings has been set to Netherite
scoreboard players set leggings kits 6
function dragon:setting_kits/leggings/clear
replaceitem entity @a armor.legs netherite_leggings{Unbreakable:1b}
tellraw @a "Leggings is set to Netherite"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
