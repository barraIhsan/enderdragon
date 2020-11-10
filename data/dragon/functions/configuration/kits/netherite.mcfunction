# Check if player has end crystal
execute as @a store result score @s crystal_count run clear @s minecraft:end_crystal 0

# Check if player wear pumpkin
execute as @a store success score @s wear_pumpkin run data get entity @s Inventory[{Slot:103b,id:"minecraft:carved_pumpkin"}]

# Give player netherite kit
scoreboard players set kits setting 4
scoreboard players set #kits_tmp setting 4
gamemode survival @a
clear @a #dragon:clear
replaceitem entity @a armor.head minecraft:netherite_helmet{Unbreakable:1b} 1
replaceitem entity @a armor.chest minecraft:netherite_chestplate{Unbreakable:1b} 1
replaceitem entity @a armor.legs minecraft:netherite_leggings{Unbreakable:1b} 1
replaceitem entity @a armor.feet minecraft:netherite_boots{Unbreakable:1b} 1
replaceitem entity @a weapon.offhand minecraft:shield{Unbreakable:1b} 1
replaceitem entity @a inventory.0 minecraft:arrow 16
replaceitem entity @a inventory.9 minecraft:carved_pumpkin{Unbreakable:1b} 1
replaceitem entity @a inventory.18 minecraft:crossbow{Unbreakable:1b} 1
replaceitem entity @a hotbar.0 bow{Unbreakable:1b} 1
replaceitem entity @a hotbar.1 minecraft:netherite_sword{Unbreakable:1b} 1
replaceitem entity @a hotbar.2 minecraft:netherite_pickaxe{Unbreakable:1b} 1
replaceitem entity @a hotbar.3 minecraft:netherite_axe{Unbreakable:1b} 1
replaceitem entity @a hotbar.4 minecraft:netherite_shovel{Unbreakable:1b} 1
replaceitem entity @a hotbar.5 minecraft:dirt 16
replaceitem entity @a hotbar.6 minecraft:bread 16
replaceitem entity @a hotbar.7 minecraft:water_bucket 1
replaceitem entity @a hotbar.8 minecraft:glass_bottle 16
tellraw @a "Netherite kit selected"
function dragon:configuration

# Give them end crystal back
execute as @a if score @s crystal_count matches 1 run give @s minecraft:end_crystal 1
execute as @a if score @s crystal_count matches 2 run give @s minecraft:end_crystal 2
execute as @a if score @s crystal_count matches 3 run give @s minecraft:end_crystal 3
execute as @a if score @s crystal_count matches 4 run give @s minecraft:end_crystal 4
execute as @a if score @s crystal_count matches 5.. run give @s minecraft:end_crystal 4
scoreboard players set @s crystal_count 0

# Replace the helmet with pumpkin if player wear pumpkin before
execute as @a if score @s wear_pumpkin matches 1 run replaceitem entity @a armor.head minecraft:carved_pumpkin{Unbreakable:1b} 1
execute as @a if score @s wear_pumpkin matches 1 run replaceitem entity @a inventory.9 minecraft:netherite_helmet{Unbreakable:1b} 1
