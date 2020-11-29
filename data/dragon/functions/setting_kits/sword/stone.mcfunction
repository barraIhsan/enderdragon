# Change sword to Stone & Telling that sword has been set to Stone
scoreboard players set sword kits 3
function dragon:setting_kits/sword/clear
replaceitem entity @a hotbar.1 stone_sword{Unbreakable:1b}
tellraw @a "Sword is set to Stone"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
