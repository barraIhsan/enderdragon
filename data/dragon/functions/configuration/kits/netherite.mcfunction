# Give all player netherite kit
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
