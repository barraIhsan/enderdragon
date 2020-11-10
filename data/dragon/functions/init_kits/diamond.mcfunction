# Check if player has end crystal
execute as @a store result score @s crystal_count run clear @s minecraft:end_crystal 0

# Give player diamond kit
gamemode survival @s
clear @s #dragon:clear
replaceitem entity @s armor.head minecraft:diamond_helmet{Unbreakable:1b} 1
replaceitem entity @s armor.chest minecraft:diamond_chestplate{Unbreakable:1b} 1
replaceitem entity @s armor.legs minecraft:diamond_leggings{Unbreakable:1b} 1
replaceitem entity @s armor.feet minecraft:diamond_boots{Unbreakable:1b} 1
replaceitem entity @s weapon.offhand minecraft:shield{Unbreakable:1b} 1
replaceitem entity @s inventory.0 minecraft:arrow 16
replaceitem entity @s inventory.9 minecraft:carved_pumpkin{Unbreakable:1b} 1
replaceitem entity @s inventory.18 minecraft:crossbow{Unbreakable:1b} 1
replaceitem entity @s hotbar.0 bow{Unbreakable:1b} 1
replaceitem entity @s hotbar.1 minecraft:diamond_sword{Unbreakable:1b} 1
replaceitem entity @s hotbar.2 minecraft:diamond_pickaxe{Unbreakable:1b} 1
replaceitem entity @s hotbar.3 minecraft:diamond_axe{Unbreakable:1b} 1
replaceitem entity @s hotbar.4 minecraft:diamond_shovel{Unbreakable:1b} 1
replaceitem entity @s hotbar.5 minecraft:dirt 16
replaceitem entity @s hotbar.6 minecraft:bread 16
replaceitem entity @s hotbar.7 minecraft:water_bucket 1
replaceitem entity @s hotbar.8 minecraft:glass_bottle 16

# Give them end crystal back
execute as @a if score @s crystal_count matches 1 run give @s minecraft:end_crystal 1
execute as @a if score @s crystal_count matches 2 run give @s minecraft:end_crystal 2
execute as @a if score @s crystal_count matches 3 run give @s minecraft:end_crystal 3
execute as @a if score @s crystal_count matches 4 run give @s minecraft:end_crystal 4
execute as @a if score @s crystal_count matches 5.. run give @s minecraft:end_crystal 4
scoreboard players set @a crystal_count 0
