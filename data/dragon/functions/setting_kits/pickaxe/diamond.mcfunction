# Change pickaxe to Diamond & Telling that pickaxe has been set to Diamond
scoreboard players set pickaxe kits 5
function dragon:setting_kits/pickaxe/clear
replaceitem entity @a hotbar.2 diamond_pickaxe{Unbreakable:1b}
tellraw @a "Pickaxe is set to Diamond"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
