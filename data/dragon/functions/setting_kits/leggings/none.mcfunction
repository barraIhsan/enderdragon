# Change leggings to None & Telling that leggings has been set to None
scoreboard players set leggings kits 0
function dragon:setting_kits/leggings/clear
replaceitem entity @a armor.legs air
tellraw @a "Leggings is set to None"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
