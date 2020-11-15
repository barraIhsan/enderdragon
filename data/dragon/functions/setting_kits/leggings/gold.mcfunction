# Change leggings to Gold & Telling that leggings has been set to Gold
scoreboard players set leggings kits 2
function dragon:setting_kits/leggings/clear
replaceitem entity @a armor.legs golden_leggings{Unbreakable:1b}
tellraw @a "Leggings is set to Gold"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
