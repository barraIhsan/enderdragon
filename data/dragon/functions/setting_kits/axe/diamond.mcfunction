# Change axe to Diamond & Telling that axe has been set to Diamond
scoreboard players set axe kits 5
function dragon:setting_kits/axe/clear
replaceitem entity @a hotbar.3 diamond_axe{Unbreakable:1b}
tellraw @a "Axe is set to Diamond"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3