# Give all player stomail kit
gamemode survival @a
clear @a #dragon:clear_kit
replaceitem entity @a armor.head minecraft:chainmail_helmet{Unbreakable:1b} 1
replaceitem entity @a armor.chest minecraft:chainmail_chestplate{Unbreakable:1b} 1
replaceitem entity @a armor.legs minecraft:chainmail_leggings{Unbreakable:1b} 1
replaceitem entity @a armor.feet minecraft:chainmail_boots{Unbreakable:1b} 1
replaceitem entity @a hotbar.1 minecraft:stone_sword{Unbreakable:1b} 1
replaceitem entity @a hotbar.2 minecraft:stone_pickaxe{Unbreakable:1b} 1
replaceitem entity @a hotbar.3 minecraft:stone_axe{Unbreakable:1b} 1
replaceitem entity @a hotbar.4 minecraft:stone_shovel{Unbreakable:1b} 1
tellraw @a "Stomail kit selected"