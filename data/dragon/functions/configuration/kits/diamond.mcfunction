# Give all player diamond kit
gamemode survival @a
clear @a #dragon:clear_kit
replaceitem entity @a armor.head minecraft:diamond_helmet{Unbreakable:1b} 1
replaceitem entity @a armor.chest minecraft:diamond_chestplate{Unbreakable:1b} 1
replaceitem entity @a armor.legs minecraft:diamond_leggings{Unbreakable:1b} 1
replaceitem entity @a armor.feet minecraft:diamond_boots{Unbreakable:1b} 1
replaceitem entity @a hotbar.1 minecraft:diamond_sword{Unbreakable:1b} 1
replaceitem entity @a hotbar.2 minecraft:diamond_pickaxe{Unbreakable:1b} 1
replaceitem entity @a hotbar.3 minecraft:diamond_axe{Unbreakable:1b} 1
replaceitem entity @a hotbar.4 minecraft:diamond_shovel{Unbreakable:1b} 1
tellraw @a "Diamond kit selected"