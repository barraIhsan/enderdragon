# Change sword to None & Telling that sword has been set to None
scoreboard players set sword kits 0
function dragon:setting_kits/sword/clear
replaceitem entity @a hotbar.1 air
tellraw @a "Sword is set to None"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
