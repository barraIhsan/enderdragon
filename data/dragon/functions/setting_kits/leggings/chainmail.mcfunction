# Change leggings to Chainmail & Telling that leggings has been set to Chainmail
scoreboard players set leggings kits 3
function dragon:setting_kits/leggings/clear
replaceitem entity @a armor.legs chainmail_leggings{Unbreakable:1b}
tellraw @a "Leggings is set to Chainmail"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
