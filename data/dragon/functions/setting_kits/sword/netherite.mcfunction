# Change sword to Netherite & Telling that sword has been set to Netherite
scoreboard players set sword kits 6
function dragon:setting_kits/sword/clear
replaceitem entity @a hotbar.1 netherite_sword{Unbreakable:1b}
tellraw @a "Sword is set to Netherite"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
