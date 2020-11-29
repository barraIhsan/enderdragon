# Change pickaxe to Gold & Telling that pickaxe has been set to Gold
scoreboard players set pickaxe kits 2
function dragon:setting_kits/pickaxe/clear
replaceitem entity @a hotbar.2 golden_pickaxe{Unbreakable:1b}
tellraw @a "Pickaxe is set to Gold"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
