execute as @a store success score @s wear_pumpkin run data get entity @s Inventory[{Slot:103b,id:"minecraft:carved_pumpkin"}]

execute as @a if score kits setting matches 0 if score @s wear_pumpkin matches 0 run function dragon:configuration/kits/woother
execute as @a if score kits setting matches 1 if score @s wear_pumpkin matches 0 run function dragon:configuration/kits/stomail
execute as @a if score kits setting matches 2 if score @s wear_pumpkin matches 0 run function dragon:configuration/kits/iron
execute as @a if score kits setting matches 3 if score @s wear_pumpkin matches 0 run function dragon:configuration/kits/diamond
execute as @a if score kits setting matches 4 if score @s wear_pumpkin matches 0 run function dragon:configuration/kits/netherite

execute as @a if score kits setting matches 0 if score @s wear_pumpkin matches 1 run function dragon:configuration/kits/woother_pumpkin
execute as @a if score kits setting matches 1 if score @s wear_pumpkin matches 1 run function dragon:configuration/kits/stomail_pumpkin
execute as @a if score kits setting matches 2 if score @s wear_pumpkin matches 1 run function dragon:configuration/kits/iron_pumpkin
execute as @a if score kits setting matches 3 if score @s wear_pumpkin matches 1 run function dragon:configuration/kits/diamond_pumpkin
execute as @a if score kits setting matches 4 if score @s wear_pumpkin matches 1 run function dragon:configuration/kits/netherite_pumpkin