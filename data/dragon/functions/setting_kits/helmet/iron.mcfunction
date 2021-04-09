# Check if player wear pumpkin
execute as @a store success score @s drg_pumpkin run data get entity @s Inventory[{Slot:103b,id:"minecraft:carved_pumpkin"}]

# Change helmet to Iron & Telling that Helmet has been set to Iron
scoreboard players set helmet drg_kits 4
function dragon:setting_kits/helmet/clear
replaceitem entity @a armor.head iron_helmet{Unbreakable:1b}
replaceitem entity @a inventory.9 carved_pumpkin{Unbreakable:1b}
execute as @a if score @s drg_pumpkin matches 1 run replaceitem entity @s armor.head carved_pumpkin{Unbreakable:1b}
execute as @a if score @s drg_pumpkin matches 1 run replaceitem entity @s inventory.9 iron_helmet{Unbreakable:1b}
tellraw @a "Helmet is set to Iron"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
