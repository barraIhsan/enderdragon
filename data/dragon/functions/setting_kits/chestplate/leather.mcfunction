# Change chestplate to leather & Telling that chestplate has been set to leather
scoreboard players set chestplate kits 1
function dragon:setting_kits/chestplate/clear
replaceitem entity @a armor.chest leather_chestplate{Unbreakable:1b}
tellraw @a "Chestplate is set to Leather"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
