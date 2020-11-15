# Change chestplate to Iron & Telling that chestplate has been set to Iron
scoreboard players set chestplate kits 4
function dragon:setting_kits/chestplate/clear
replaceitem entity @a armor.chest iron_chestplate{Unbreakable:1b}
tellraw @a "Chestplate is set to Iron"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
