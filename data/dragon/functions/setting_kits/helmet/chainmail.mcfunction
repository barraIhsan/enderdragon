# Check if player wear pumpkin
execute as @a store success score @s drg_pumpkin run data get entity @s Inventory[{Slot:103b,id:"minecraft:carved_pumpkin"}]

# Change helmet to Chainmail & Telling that Helmet has been set to Chainmail
scoreboard players set helmet drg_kits 3
function dragon:setting_kits/helmet/clear
replaceitem entity @a armor.head chainmail_helmet{Unbreakable:1b}
replaceitem entity @a inventory.9 carved_pumpkin{Unbreakable:1b}
execute as @a if score @s drg_pumpkin matches 1 run replaceitem entity @s armor.head carved_pumpkin{Unbreakable:1b}
execute as @a if score @s drg_pumpkin matches 1 run replaceitem entity @s inventory.9 chainmail_helmet{Unbreakable:1b}
tellraw @a "Helmet is set to Chainmail"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
