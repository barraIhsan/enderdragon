# Give all player iron kit
gamemode survival @a
clear @a #dragon:clear_kit
replaceitem entity @a armor.head minecraft:iron_helmet{Unbreakable:1b} 1
replaceitem entity @a armor.chest minecraft:iron_chestplate{Unbreakable:1b} 1
replaceitem entity @a armor.legs minecraft:iron_leggings{Unbreakable:1b} 1
replaceitem entity @a armor.feet minecraft:iron_boots{Unbreakable:1b} 1
replaceitem entity @a hotbar.1 minecraft:iron_sword{Unbreakable:1b} 1
replaceitem entity @a hotbar.2 minecraft:iron_pickaxe{Unbreakable:1b} 1
replaceitem entity @a hotbar.3 minecraft:iron_axe{Unbreakable:1b} 1
replaceitem entity @a hotbar.4 minecraft:iron_shovel{Unbreakable:1b} 1
tellraw @a "Iron kit selected"