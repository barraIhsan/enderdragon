# Change pickaxe to None & Telling that pickaxe has been set to None
scoreboard players set pickaxe kits 0
function dragon:setting_kits/pickaxe/clear
replaceitem entity @a hotbar.2 air
tellraw @a "Pickaxe is set to None"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
