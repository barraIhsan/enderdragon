# Change chestplate to Chainmail & Telling that chestplate has been set to Chainmail
scoreboard players set chestplate kits 3
function dragon:setting_kits/chestplate/clear
replaceitem entity @a armor.chest chainmail_chestplate{Unbreakable:1b}
tellraw @a "Chestplate is set to Chainmail"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
