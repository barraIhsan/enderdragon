# Change axe to Gold & Telling that axe has been set to Gold
scoreboard players set axe kits 2
function dragon:setting_kits/axe/clear
replaceitem entity @a hotbar.3 golden_axe{Unbreakable:1b}
tellraw @a "Axe is set to Gold"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
