# Change pickaxe to Stone & Telling that pickaxe has been set to Stone
scoreboard players set pickaxe kits 3
function dragon:setting_kits/pickaxe/clear
replaceitem entity @a hotbar.2 stone_pickaxe{Unbreakable:1b}
tellraw @a "Pickaxe is set to Stone"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
