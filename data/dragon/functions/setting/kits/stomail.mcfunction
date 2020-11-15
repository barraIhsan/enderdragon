# Check if player has end crystal
execute as @a store result score @s crystal_count run clear @s minecraft:end_crystal 0

# Check if player wear pumpkin
execute as @a store success score @s wear_pumpkin run data get entity @s Inventory[{Slot:103b,id:"minecraft:carved_pumpkin"}]

# Give player stomail kit
scoreboard players set kits setting 1
scoreboard players set #kits_tmp setting 1
gamemode survival @a
clear @a #dragon:clear
replaceitem entity @a armor.head minecraft:chainmail_helmet{Unbreakable:1b} 1
replaceitem entity @a armor.chest minecraft:chainmail_chestplate{Unbreakable:1b} 1
replaceitem entity @a armor.legs minecraft:chainmail_leggings{Unbreakable:1b} 1
replaceitem entity @a armor.feet minecraft:chainmail_boots{Unbreakable:1b} 1
replaceitem entity @a weapon.offhand minecraft:shield{Unbreakable:1b} 1
replaceitem entity @a inventory.0 minecraft:arrow 16
replaceitem entity @a inventory.9 minecraft:carved_pumpkin{Unbreakable:1b} 1
replaceitem entity @a inventory.18 minecraft:crossbow{Unbreakable:1b} 1
replaceitem entity @a hotbar.0 bow{Unbreakable:1b} 1
replaceitem entity @a hotbar.1 minecraft:stone_sword{Unbreakable:1b} 1
replaceitem entity @a hotbar.2 minecraft:stone_pickaxe{Unbreakable:1b} 1
replaceitem entity @a hotbar.3 minecraft:stone_axe{Unbreakable:1b} 1
replaceitem entity @a hotbar.4 minecraft:stone_shovel{Unbreakable:1b} 1
replaceitem entity @a hotbar.5 minecraft:dirt 16
replaceitem entity @a hotbar.6 minecraft:bread 16
replaceitem entity @a hotbar.7 minecraft:water_bucket 1
replaceitem entity @a hotbar.8 minecraft:glass_bottle 16
tellraw @a "Stomail kit selected"
function dragon:setting

# Give them end crystal back
execute as @a if score @s crystal_count matches 1 run give @s minecraft:end_crystal 1
execute as @a if score @s crystal_count matches 2 run give @s minecraft:end_crystal 2
execute as @a if score @s crystal_count matches 3 run give @s minecraft:end_crystal 3
execute as @a if score @s crystal_count matches 4 run give @s minecraft:end_crystal 4
execute as @a if score @s crystal_count matches 5.. run give @s minecraft:end_crystal 4
scoreboard players set @s crystal_count 0

# Replace the helmet with pumpkin if player wear pumpkin before
execute as @a if score @s wear_pumpkin matches 1 run replaceitem entity @a armor.head minecraft:carved_pumpkin{Unbreakable:1b} 1
execute as @a if score @s wear_pumpkin matches 1 run replaceitem entity @a inventory.9 minecraft:chainmail_helmet{Unbreakable:1b} 1