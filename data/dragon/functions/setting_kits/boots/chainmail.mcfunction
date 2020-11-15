# Change boots to Chainmail & Telling that boots has been set to Chainmail
scoreboard players set boots kits 3
function dragon:setting_kits/boots/clear
replaceitem entity @a armor.feet chainmail_boots{Unbreakable:1b}
tellraw @a "Boots is set to Chainmail"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
