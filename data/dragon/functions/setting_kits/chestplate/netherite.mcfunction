# Change chestplate to Netherite & Telling that chestplate has been set to Netherite
scoreboard players set chestplate kits 6
function dragon:setting_kits/chestplate/clear
replaceitem entity @a armor.chest netherite_chestplate{Unbreakable:1b}
tellraw @a "Chestplate is set to Netherite"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
