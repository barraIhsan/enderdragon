# Give all player iron kit
gamemode survival @a
clear @a
replaceitem entity @a armor.head minecraft:iron_helmet{Unbreakable:1b} 1
replaceitem entity @a armor.chest minecraft:iron_chestplate{Unbreakable:1b} 1
replaceitem entity @a armor.legs minecraft:iron_leggings{Unbreakable:1b} 1
replaceitem entity @a armor.feet minecraft:iron_boots{Unbreakable:1b} 1
replaceitem entity @a weapon.offhand minecraft:shield{Unbreakable:1b} 1
replaceitem entity @a inventory.0 minecraft:arrow 16
replaceitem entity @a inventory.9 minecraft:carved_pumpkin{Unbreakable:1b}
replaceitem entity @a inventory.18 minecraft:crossbow{Unbreakable:1b}
replaceitem entity @s inventory.26 minecraft:glass_bottle 16
replaceitem entity @a hotbar.0 minecraft:bow{Unbreakable:1b} 1
replaceitem entity @a hotbar.1 minecraft:iron_sword{Unbreakable:1b} 1
replaceitem entity @a hotbar.2 minecraft:iron_pickaxe{Unbreakable:1b} 1
replaceitem entity @a hotbar.3 minecraft:iron_axe{Unbreakable:1b} 1
replaceitem entity @a hotbar.4 minecraft:iron_shovel{Unbreakable:1b} 1
replaceitem entity @a hotbar.5 minecraft:dirt 16
replaceitem entity @a hotbar.6 minecraft:bread 16
replaceitem entity @a hotbar.7 minecraft:water_bucket 1
tellraw @a "Iron kit selected"
