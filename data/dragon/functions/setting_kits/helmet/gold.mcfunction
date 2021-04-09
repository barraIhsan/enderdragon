# Check if player wear pumpkin
execute as @a store success score @s drg_pumpkin run data get entity @s Inventory[{Slot:103b,id:"minecraft:carved_pumpkin"}]

# Change helmet to Gold & Telling that Helmet has been set to Gold
scoreboard players set helmet drg_kits 2
function dragon:setting_kits/helmet/clear
replaceitem entity @a armor.head golden_helmet{Unbreakable:1b}
replaceitem entity @a inventory.9 carved_pumpkin{Unbreakable:1b}
execute as @a if score @s drg_pumpkin matches 1 run replaceitem entity @s armor.head carved_pumpkin{Unbreakable:1b}
execute as @a if score @s drg_pumpkin matches 1 run replaceitem entity @s inventory.9 golden_helmet{Unbreakable:1b}
tellraw @a "Helmet is set to Gold"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
