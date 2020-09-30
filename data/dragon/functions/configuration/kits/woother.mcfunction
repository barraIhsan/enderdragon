# Give all player woother kit
gamemode survival @a
clear @a #dragon:clear_kit
replaceitem entity @a armor.head minecraft:leather_helmet{Unbreakable:1b} 1
replaceitem entity @a armor.chest minecraft:leather_chestplate{Unbreakable:1b} 1
replaceitem entity @a armor.legs minecraft:leather_leggings{Unbreakable:1b} 1
replaceitem entity @a armor.feet minecraft:leather_boots{Unbreakable:1b} 1
replaceitem entity @a hotbar.1 minecraft:wooden_sword{Unbreakable:1b} 1
replaceitem entity @a hotbar.2 minecraft:wooden_pickaxe{Unbreakable:1b} 1
replaceitem entity @a hotbar.3 minecraft:wooden_axe{Unbreakable:1b} 1
replaceitem entity @a hotbar.4 minecraft:wooden_shovel{Unbreakable:1b} 1
tellraw @a "Woother kit selected"