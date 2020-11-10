# Check if player has end crystal
execute as @a store result score @s crystal_count run clear @s minecraft:end_crystal 0

# Give all player woother kit
scoreboard players set kits setting 0
scoreboard players set #kits_tmp setting 0
gamemode survival @a
clear @a #dragon:clear
replaceitem entity @a armor.head minecraft:leather_helmet{Unbreakable:1b} 1
replaceitem entity @a armor.chest minecraft:leather_chestplate{Unbreakable:1b} 1
replaceitem entity @a armor.legs minecraft:leather_leggings{Unbreakable:1b} 1
replaceitem entity @a armor.feet minecraft:leather_boots{Unbreakable:1b} 1
replaceitem entity @a weapon.offhand minecraft:shield{Unbreakable:1b} 1
replaceitem entity @a inventory.0 minecraft:arrow 16
replaceitem entity @a inventory.9 minecraft:carved_pumpkin{Unbreakable:1b} 1
replaceitem entity @a inventory.18 minecraft:crossbow{Unbreakable:1b} 1
replaceitem entity @a hotbar.0 bow{Unbreakable:1b} 1
replaceitem entity @a hotbar.1 minecraft:wooden_sword{Unbreakable:1b} 1
replaceitem entity @a hotbar.2 minecraft:wooden_pickaxe{Unbreakable:1b} 1
replaceitem entity @a hotbar.3 minecraft:wooden_axe{Unbreakable:1b} 1
replaceitem entity @a hotbar.4 minecraft:wooden_shovel{Unbreakable:1b} 1
replaceitem entity @a hotbar.5 minecraft:dirt 16
replaceitem entity @a hotbar.6 minecraft:bread 16
replaceitem entity @a hotbar.7 minecraft:water_bucket 1
replaceitem entity @a hotbar.8 minecraft:glass_bottle 16
tellraw @a "Woother kit selected"
function dragon:configuration

# Give them end crystal back
execute as @a if score @s crystal_count matches 1 run give @s minecraft:end_crystal 1
execute as @a if score @s crystal_count matches 2 run give @s minecraft:end_crystal 2
execute as @a if score @s crystal_count matches 3 run give @s minecraft:end_crystal 3
execute as @a if score @s crystal_count matches 4 run give @s minecraft:end_crystal 4
execute as @a if score @s crystal_count matches 5.. run give @s minecraft:end_crystal 4
scoreboard players set @a crystal_count 0
