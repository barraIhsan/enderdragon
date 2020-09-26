# Give all player diamond kit
gamemode survival @a
clear @a
replaceitem entity @a armor.head minecraft:diamond_helmet{Unbreakable:1b} 1
replaceitem entity @a armor.chest minecraft:diamond_chestplate{Unbreakable:1b} 1
replaceitem entity @a armor.legs minecraft:diamond_leggings{Unbreakable:1b} 1
replaceitem entity @a armor.feet minecraft:diamond_boots{Unbreakable:1b} 1
replaceitem entity @a weapon.offhand minecraft:shield{Unbreakable:1b} 1
replaceitem entity @a inventory.0 minecraft:arrow 16
replaceitem entity @a inventory.9 minecraft:carved_pumpkin{Unbreakable:1b}
replaceitem entity @a inventory.18 minecraft:crossbow{Unbreakable:1b}
replaceitem entity @s inventory.26 minecraft:glass_bottle 16
replaceitem entity @a hotbar.0 minecraft:bow{Unbreakable:1b} 1
replaceitem entity @a hotbar.1 minecraft:diamond_sword{Unbreakable:1b} 1
replaceitem entity @a hotbar.2 minecraft:diamond_pickaxe{Unbreakable:1b} 1
replaceitem entity @a hotbar.3 minecraft:diamond_axe{Unbreakable:1b} 1
replaceitem entity @a hotbar.4 minecraft:diamond_shovel{Unbreakable:1b} 1
replaceitem entity @a hotbar.5 minecraft:dirt 16
replaceitem entity @a hotbar.6 minecraft:bread 16
replaceitem entity @a hotbar.7 minecraft:water_bucket 1
tellraw @a "Diamond kit selected"
