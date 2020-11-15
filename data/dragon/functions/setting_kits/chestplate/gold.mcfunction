# Change chestplate to Gold & Telling that chestplate has been set to Gold
scoreboard players set chestplate kits 2
function dragon:setting_kits/chestplate/clear
replaceitem entity @a armor.chest golden_chestplate{Unbreakable:1b}
tellraw @a "Chestplate is set to Gold"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
