# Check if player has end crystal
execute as @s store result score @s crystal_count run clear @s minecraft:end_crystal 0

# Give player woother kit
scoreboard players set kits setting 0
scoreboard players set #kits_tmp setting 0
gamemode survival @s
clear @s #dragon:clear
replaceitem entity @s armor.head minecraft:leather_helmet{Unbreakable:1b} 1
replaceitem entity @s armor.chest minecraft:leather_chestplate{Unbreakable:1b} 1
replaceitem entity @s armor.legs minecraft:leather_leggings{Unbreakable:1b} 1
replaceitem entity @s armor.feet minecraft:leather_boots{Unbreakable:1b} 1
replaceitem entity @s weapon.offhand minecraft:shield{Unbreakable:1b} 1
replaceitem entity @s inventory.0 minecraft:arrow 16
replaceitem entity @s inventory.9 minecraft:carved_pumpkin{Unbreakable:1b} 1
replaceitem entity @s inventory.18 minecraft:crossbow{Unbreakable:1b} 1
replaceitem entity @s hotbar.0 bow{Unbreakable:1b} 1
replaceitem entity @s hotbar.1 minecraft:wooden_sword{Unbreakable:1b} 1
replaceitem entity @s hotbar.2 minecraft:wooden_pickaxe{Unbreakable:1b} 1
replaceitem entity @s hotbar.3 minecraft:wooden_axe{Unbreakable:1b} 1
replaceitem entity @s hotbar.4 minecraft:wooden_shovel{Unbreakable:1b} 1
replaceitem entity @s hotbar.5 minecraft:dirt 16
replaceitem entity @s hotbar.6 minecraft:bread 16
replaceitem entity @s hotbar.7 minecraft:water_bucket 1
replaceitem entity @s hotbar.8 minecraft:glass_bottle 16
tellraw @s "Woother kit selected"
function dragon:configuration

# Give them end crystal back
execute as @s if score @s crystal_count matches 1 run give @s minecraft:end_crystal 1
execute as @s if score @s crystal_count matches 2 run give @s minecraft:end_crystal 2
execute as @s if score @s crystal_count matches 3 run give @s minecraft:end_crystal 3
execute as @s if score @s crystal_count matches 4 run give @s minecraft:end_crystal 4
execute as @s if score @s crystal_count matches 5.. run give @s minecraft:end_crystal 4
scoreboard players set @s crystal_count 0
