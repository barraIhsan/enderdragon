# Check if player wear pumpkin
execute as @a store success score @s drg_pumpkin run data get entity @s Inventory[{Slot:103b,id:"minecraft:carved_pumpkin"}]

# Clear all items that needed
function dragon:setting_kits/helmet/clear
function dragon:setting_kits/chestplate/clear
function dragon:setting_kits/leggings/clear
function dragon:setting_kits/boots/clear
function dragon:setting_kits/sword/clear
function dragon:setting_kits/pickaxe/clear
function dragon:setting_kits/axe/clear
function dragon:setting_kits/shovel/clear
clear @s shield
clear @s arrow
clear @s carved_pumpkin
clear @s crossbow
clear @s bow
clear @s dirt
clear @s bread
clear @s water_bucket
clear @s bucket
clear @s glass_bottle

# Helmet
execute if score helmet drg_kits matches 0 run replaceitem entity @s armor.head air
execute if score helmet drg_kits matches 1 run replaceitem entity @s armor.head leather_helmet{Unbreakable:1b}
execute if score helmet drg_kits matches 2 run replaceitem entity @s armor.head golden_helmet{Unbreakable:1b}
execute if score helmet drg_kits matches 3 run replaceitem entity @s armor.head chainmail_helmet{Unbreakable:1b}
execute if score helmet drg_kits matches 4 run replaceitem entity @s armor.head iron_helmet{Unbreakable:1b}
execute if score helmet drg_kits matches 5 run replaceitem entity @s armor.head diamond_helmet{Unbreakable:1b}
execute if score helmet drg_kits matches 6 run replaceitem entity @s armor.head netherite_helmet{Unbreakable:1b}
execute if score helmet drg_kits matches 7 run replaceitem entity @s armor.head turtle_helmet{Unbreakable:1b}

# Chestplate
execute if score chestplate drg_kits matches 0 run replaceitem entity @s armor.chest air
execute if score chestplate drg_kits matches 1 run replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1b}
execute if score chestplate drg_kits matches 2 run replaceitem entity @s armor.chest golden_chestplate{Unbreakable:1b}
execute if score chestplate drg_kits matches 3 run replaceitem entity @s armor.chest chainmail_chestplate{Unbreakable:1b}
execute if score chestplate drg_kits matches 4 run replaceitem entity @s armor.chest iron_chestplate{Unbreakable:1b}
execute if score chestplate drg_kits matches 5 run replaceitem entity @s armor.chest diamond_chestplate{Unbreakable:1b}
execute if score chestplate drg_kits matches 6 run replaceitem entity @s armor.chest netherite_chestplate{Unbreakable:1b}

# Leggings
execute if score leggings drg_kits matches 0 run replaceitem entity @s armor.legs air
execute if score leggings drg_kits matches 1 run replaceitem entity @s armor.legs leather_leggings{Unbreakable:1b}
execute if score leggings drg_kits matches 2 run replaceitem entity @s armor.legs golden_leggings{Unbreakable:1b}
execute if score leggings drg_kits matches 3 run replaceitem entity @s armor.legs chainmail_leggings{Unbreakable:1b}
execute if score leggings drg_kits matches 4 run replaceitem entity @s armor.legs iron_leggings{Unbreakable:1b}
execute if score leggings drg_kits matches 5 run replaceitem entity @s armor.legs diamond_leggings{Unbreakable:1b}
execute if score leggings drg_kits matches 6 run replaceitem entity @s armor.legs netherite_leggings{Unbreakable:1b}

# Boots
execute if score boots drg_kits matches 0 run replaceitem entity @s armor.feet air
execute if score boots drg_kits matches 1 run replaceitem entity @s armor.feet leather_boots{Unbreakable:1b}
execute if score boots drg_kits matches 2 run replaceitem entity @s armor.feet golden_boots{Unbreakable:1b}
execute if score boots drg_kits matches 3 run replaceitem entity @s armor.feet chainmail_boots{Unbreakable:1b}
execute if score boots drg_kits matches 4 run replaceitem entity @s armor.feet iron_boots{Unbreakable:1b}
execute if score boots drg_kits matches 5 run replaceitem entity @s armor.feet diamond_boots{Unbreakable:1b}
execute if score boots drg_kits matches 6 run replaceitem entity @s armor.feet netherite_boots{Unbreakable:1b}


# Sword
execute if score sword drg_kits matches 0 run replaceitem entity @s hotbar.1 air
execute if score sword drg_kits matches 1 run replaceitem entity @s hotbar.1 wooden_sword{Unbreakable:1b}
execute if score sword drg_kits matches 2 run replaceitem entity @s hotbar.1 golden_sword{Unbreakable:1b}
execute if score sword drg_kits matches 3 run replaceitem entity @s hotbar.1 stone_sword{Unbreakable:1b}
execute if score sword drg_kits matches 4 run replaceitem entity @s hotbar.1 iron_sword{Unbreakable:1b}
execute if score sword drg_kits matches 5 run replaceitem entity @s hotbar.1 diamond_sword{Unbreakable:1b}
execute if score sword drg_kits matches 6 run replaceitem entity @s hotbar.1 netherite_sword{Unbreakable:1b}

# Pickaxe
execute if score pickaxe drg_kits matches 0 run replaceitem entity @s hotbar.2 air
execute if score pickaxe drg_kits matches 1 run replaceitem entity @s hotbar.2 wooden_pickaxe{Unbreakable:1b}
execute if score pickaxe drg_kits matches 2 run replaceitem entity @s hotbar.2 golden_pickaxe{Unbreakable:1b}
execute if score pickaxe drg_kits matches 3 run replaceitem entity @s hotbar.2 stone_pickaxe{Unbreakable:1b}
execute if score pickaxe drg_kits matches 4 run replaceitem entity @s hotbar.2 iron_pickaxe{Unbreakable:1b}
execute if score pickaxe drg_kits matches 5 run replaceitem entity @s hotbar.2 diamond_pickaxe{Unbreakable:1b}
execute if score pickaxe drg_kits matches 6 run replaceitem entity @s hotbar.2 netherite_pickaxe{Unbreakable:1b}

# Axe
execute if score axe drg_kits matches 0 run replaceitem entity @s hotbar.3 air
execute if score axe drg_kits matches 1 run replaceitem entity @s hotbar.3 wooden_axe{Unbreakable:1b}
execute if score axe drg_kits matches 2 run replaceitem entity @s hotbar.3 golden_axe{Unbreakable:1b}
execute if score axe drg_kits matches 3 run replaceitem entity @s hotbar.3 stone_axe{Unbreakable:1b}
execute if score axe drg_kits matches 4 run replaceitem entity @s hotbar.3 iron_axe{Unbreakable:1b}
execute if score axe drg_kits matches 5 run replaceitem entity @s hotbar.3 diamond_axe{Unbreakable:1b}
execute if score axe drg_kits matches 6 run replaceitem entity @s hotbar.3 netherite_axe{Unbreakable:1b}

# Shovel
execute if score shovel drg_kits matches 0 run replaceitem entity @s hotbar.4 air
execute if score shovel drg_kits matches 1 run replaceitem entity @s hotbar.4 wooden_shovel{Unbreakable:1b}
execute if score shovel drg_kits matches 2 run replaceitem entity @s hotbar.4 golden_shovel{Unbreakable:1b}
execute if score shovel drg_kits matches 3 run replaceitem entity @s hotbar.4 stone_shovel{Unbreakable:1b}
execute if score shovel drg_kits matches 4 run replaceitem entity @s hotbar.4 iron_shovel{Unbreakable:1b}
execute if score shovel drg_kits matches 5 run replaceitem entity @s hotbar.4 diamond_shovel{Unbreakable:1b}
execute if score shovel drg_kits matches 6 run replaceitem entity @s hotbar.4 netherite_shovel{Unbreakable:1b}

# Generic
replaceitem entity @s weapon.offhand shield{Unbreakable:1b}
replaceitem entity @s inventory.0 arrow{drg_custom:1b,display:{Name:'["",{"translate":"item.minecraft.arrow","italic": false},{"text": " - ","italic": false},{"translate":"enchantment.minecraft.infinity","italic": false}]'}} 64
replaceitem entity @s inventory.9 carved_pumpkin{Unbreakable:1b}
replaceitem entity @s inventory.18 crossbow{Unbreakable:1b}
replaceitem entity @s hotbar.0 bow{Unbreakable:1b}
replaceitem entity @s hotbar.5 dirt{drg_custom:1b,display:{Name:'["",{"translate":"block.minecraft.dirt","italic": false},{"text": " - ","italic": false},{"translate":"enchantment.minecraft.infinity","italic": false}]'}} 64
replaceitem entity @s hotbar.6 bread{drg_custom:1b,display:{Name:'["",{"translate":"item.minecraft.bread","italic": false},{"text": " - ","italic": false},{"translate":"enchantment.minecraft.infinity","italic": false}]'}} 64
replaceitem entity @s hotbar.7 water_bucket
replaceitem entity @s hotbar.8 glass_bottle{drg_custom:1b,display:{Name:'["",{"translate":"item.minecraft.glass_bottle","italic": false},{"text": " - ","italic": false},{"translate":"enchantment.minecraft.infinity","italic": false}]'}} 64

# Wear pumpkin check
execute if score @s drg_pumpkin matches 1 run replaceitem entity @s armor.head carved_pumpkin{Unbreakable:1b}
execute if score @s drg_pumpkin matches 1 if score helmet drg_kits matches 0 run replaceitem entity @s inventory.9 air
execute if score @s drg_pumpkin matches 1 if score helmet drg_kits matches 1 run replaceitem entity @s inventory.9 leather_helmet{Unbreakable:1b}
execute if score @s drg_pumpkin matches 1 if score helmet drg_kits matches 2 run replaceitem entity @s inventory.9 golden_helmet{Unbreakable:1b}
execute if score @s drg_pumpkin matches 1 if score helmet drg_kits matches 3 run replaceitem entity @s inventory.9 chainmail_helmet{Unbreakable:1b}
execute if score @s drg_pumpkin matches 1 if score helmet drg_kits matches 4 run replaceitem entity @s inventory.9 iron_helmet{Unbreakable:1b}
execute if score @s drg_pumpkin matches 1 if score helmet drg_kits matches 5 run replaceitem entity @s inventory.9 diamond_helmet{Unbreakable:1b}
execute if score @s drg_pumpkin matches 1 if score helmet drg_kits matches 6 run replaceitem entity @s inventory.9 netherite_helmet{Unbreakable:1b}
execute if score @s drg_pumpkin matches 1 if score helmet drg_kits matches 7 run replaceitem entity @s inventory.9 turtle_helmet{Unbreakable:1b}
