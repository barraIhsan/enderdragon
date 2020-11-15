# Change sword to Diamond & Telling that sword has been set to Diamond
scoreboard players set sword kits 5
function dragon:setting_kits/sword/clear
replaceitem entity @a hotbar.1 diamond_sword{Unbreakable:1b}
tellraw @a "Sword is set to Diamond"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
