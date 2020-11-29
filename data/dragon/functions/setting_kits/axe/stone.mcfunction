# Change axe to Stone & Telling that axe has been set to Stone
scoreboard players set axe kits 3
function dragon:setting_kits/axe/clear
replaceitem entity @a hotbar.3 stone_axe{Unbreakable:1b}
tellraw @a "Axe is set to Stone"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
