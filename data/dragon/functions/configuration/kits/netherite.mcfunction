# Give all player netherite kit
gamemode survival @a
clear @a #dragon:clear_kit
replaceitem entity @a armor.head minecraft:netherite_helmet{Unbreakable:1b} 1
replaceitem entity @a armor.chest minecraft:netherite_chestplate{Unbreakable:1b} 1
replaceitem entity @a armor.legs minecraft:netherite_leggings{Unbreakable:1b} 1
replaceitem entity @a armor.feet minecraft:netherite_boots{Unbreakable:1b} 1
replaceitem entity @a hotbar.1 minecraft:netherite_sword{Unbreakable:1b} 1
replaceitem entity @a hotbar.2 minecraft:netherite_pickaxe{Unbreakable:1b} 1
replaceitem entity @a hotbar.3 minecraft:netherite_axe{Unbreakable:1b} 1
replaceitem entity @a hotbar.4 minecraft:netherite_shovel{Unbreakable:1b} 1
tellraw @a "Netherite kit selected"