# Change chestplate to Diamond & Telling that chestplate has been set to Diamond
scoreboard players set chestplate kits 5
function dragon:setting_kits/chestplate/clear
replaceitem entity @a armor.chest diamond_chestplate{Unbreakable:1b}
tellraw @a "Chestplate is set to Diamond"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
