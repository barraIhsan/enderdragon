# Check if player wear pumpkin
execute as @a store success score @s wear_pumpkin run data get entity @s Inventory[{Slot:103b,id:"minecraft:carved_pumpkin"}]

# Change helmet to Diamond & Telling that Helmet has been set to Diamond
scoreboard players set helmet kits 5
function dragon:setting_kits/helmet/clear
replaceitem entity @a armor.head diamond_helmet{Unbreakable:1b}
replaceitem entity @a inventory.9 carved_pumpkin{Unbreakable:1b}
execute as @a if score @s wear_pumpkin matches 1 run replaceitem entity @s armor.head carved_pumpkin{Unbreakable:1b}
execute as @a if score @s wear_pumpkin matches 1 run replaceitem entity @s inventory.9 diamond_helmet{Unbreakable:1b}
tellraw @a "Helmet is set to Diamond"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
