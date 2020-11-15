# Change leggings to Diamond & Telling that leggings has been set to Diamond
scoreboard players set leggings kits 5
function dragon:setting_kits/leggings/clear
replaceitem entity @a armor.legs diamond_leggings{Unbreakable:1b}
tellraw @a "Leggings is set to Diamond"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
