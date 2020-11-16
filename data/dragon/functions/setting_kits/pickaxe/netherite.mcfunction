# Change pickaxe to Netherite & Telling that pickaxe has been set to Netherite
scoreboard players set pickaxe kits 6
function dragon:setting_kits/pickaxe/clear
replaceitem entity @a hotbar.2 netherite_pickaxe{Unbreakable:1b}
tellraw @a "Pickaxe is set to Netherite"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
