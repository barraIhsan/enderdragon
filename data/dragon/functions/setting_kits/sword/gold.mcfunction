# Change sword to Gold & Telling that sword has been set to Gold
scoreboard players set sword kits 2
function dragon:setting_kits/sword/clear
replaceitem entity @a hotbar.1 golden_sword{Unbreakable:1b}
tellraw @a "Sword is set to Gold"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
