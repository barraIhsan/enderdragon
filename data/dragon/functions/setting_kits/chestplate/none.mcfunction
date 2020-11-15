# Change chestplate to None & Telling that chestplate has been set to None
scoreboard players set chestplate kits 0
function dragon:setting_kits/chestplate/clear
replaceitem entity @a armor.chest air
tellraw @a "Chestplate is set to None"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
