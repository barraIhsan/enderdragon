# Change pickaxe to Wooden & Telling that pickaxe has been set to Wooden
scoreboard players set pickaxe kits 1
function dragon:setting_kits/pickaxe/clear
replaceitem entity @a hotbar.2 wooden_pickaxe{Unbreakable:1b}
tellraw @a "Pickaxe is set to Wooden"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
