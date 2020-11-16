# Change axe to Wooden & Telling that axe has been set to Wooden
scoreboard players set axe kits 1
function dragon:setting_kits/axe/clear
replaceitem entity @a hotbar.3 wooden_axe{Unbreakable:1b}
tellraw @a "Axe is set to Wooden"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
