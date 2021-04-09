#---------------------------------------------------------
# This Datapack was made by Barra Ihsan
# Please do not copy or credit this as your own work!
# Youtube: youtube.com/barraIhsan
# Github: github.com/barraIhsan
#---------------------------------------------------------

# Run load function for the first time
execute unless entity @e[type=area_effect_cloud,tag=drg_portal] run function dragon:load

# If new player join, they will run this
execute as @a[tag=!drg_init] at @s run function dragon:init

# Give end crystal to who killed the Ender Dragon
give @a[scores={drg_killer=1..}] minecraft:end_crystal 4

# Tell who killed The Ender Dragon
execute if entity @a[scores={drg_killer=1..}] run tellraw @a ["",{"text":"The Ender Dragon was killed by "},{"selector":"@a[scores={drg_killer=1..}]"}]

# Reset the DragonKiller scoreboard
scoreboard players set @a drg_killer 0

# Add scoreboard timer
scoreboard players add timer_sidebar drg_global 1
execute if score timer_sidebar drg_global matches 1 run scoreboard objectives setdisplay sidebar drg_kill
execute if score timer_sidebar drg_global matches 81 run scoreboard objectives setdisplay sidebar drg_killed
execute if score timer_sidebar drg_global matches 160 run scoreboard objectives setdisplay sidebar drg_use_dirt
execute if score timer_sidebar drg_global matches 180 run scoreboard objectives setdisplay sidebar drg_use_bread
execute if score timer_sidebar drg_global matches 200 run scoreboard objectives setdisplay sidebar drg_use_arrow
execute if score timer_sidebar drg_global matches 220 run scoreboard objectives setdisplay sidebar drg_use_glass
execute if score timer_sidebar drg_global matches 240 run scoreboard players set timer_sidebar drg_global 0

# Kill arrow when landing
execute if score killarrow drg_global matches 1 run kill @e[type=minecraft:arrow,nbt={inGround:1b}]

# Remove fire from end crystal
execute at @e[type=minecraft:area_effect_cloud,tag=drg_portal] run fill 3 ~-1 -3 -3 ~ 3 air replace minecraft:fire

# Turn off fire damage if there is no dragon
execute unless entity @e[type=minecraft:ender_dragon] run effect give @a fire_resistance 1 0 true

# Remove end portal from end fountain
execute at @e[type=minecraft:area_effect_cloud,tag=drg_portal] run fill 3 ~-1 -3 -3 ~-1 3 air replace minecraft:end_portal

# Clear iron bars
clear @a iron_bars 1

# Add actionbar that show you how many End Crystal left
execute if score actionbar drg_global matches 1 in the_end store result score endcrystal drg_global if entity @e[type=end_crystal]
execute if score actionbar drg_global matches 1 if score endcrystal drg_global matches 0 if entity @e[type=ender_dragon] run title @a actionbar ["",{"text":"Phase 2 : Fight the Ender Dragon!","color":"light_purple"}]
execute if score actionbar drg_global matches 1 if score endcrystal drg_global matches 1..10 if entity @e[type=ender_dragon] run title @a actionbar ["",{"text":"Phase 1 : Destroy All Crystal! (","color":"light_purple"},{"score":{"name":"endcrystal","objective":"endcrystal"},"color":"light_purple"},{"text": " / 10)","color": "light_purple"}]

execute if score actionbar drg_global matches 1 if score endcrystal drg_global matches 0 unless entity @e[type=ender_dragon] run title @a actionbar ["",{"text":"Summon the Ender Dragon!","color":"light_purple"}]

# Add .... animation
scoreboard players add timer_actionbar drg_global 1
execute if score timer_actionbar drg_global matches 6 if score actionbar drg_global matches 1 if score endcrystal drg_global matches 4..14 unless entity @e[type=ender_dragon] run title @a actionbar ["",{"text":"Resummoning The Ender Dragon.","color":"light_purple"}]

execute if score timer_actionbar drg_global matches 11 if score actionbar drg_global matches 1 if score endcrystal drg_global matches 4..14 unless entity @e[type=ender_dragon] run title @a actionbar ["",{"text":"Resummoning The Ender Dragon..","color":"light_purple"}]

execute if score timer_actionbar drg_global matches 16 if score actionbar drg_global matches 1 if score endcrystal drg_global matches 4..14 unless entity @e[type=ender_dragon] run title @a actionbar ["",{"text":"Resummoning The Ender Dragon...","color":"light_purple"}]

execute if score timer_actionbar drg_global matches 21 if score actionbar drg_global matches 1 if score endcrystal drg_global matches 4..14 unless entity @e[type=ender_dragon] run title @a actionbar ["",{"text":"Resummoning The Ender Dragon....","color":"light_purple"}]

execute if score timer_actionbar drg_global matches 22 run scoreboard players set timer_actionbar drg_global 0

# Infinite dirt & Remove normal dirt
execute as @a store result score @s drg_dirt run clear @s minecraft:dirt{drg_custom:1b,display:{Name:'["",{"translate":"block.minecraft.dirt","italic": false},{"text": " - ","italic": false},{"translate":"enchantment.minecraft.infinity","italic": false}]'}} 0
clear @a[scores={drg_dirt=65..}] minecraft:dirt{drg_custom:1b,display:{Name:'["",{"translate":"block.minecraft.dirt","italic": false},{"text": " - ","italic": false},{"translate":"enchantment.minecraft.infinity","italic": false}]'}}
loot give @a[scores={drg_dirt=0}] loot dragon:blocks/many_dirt
loot give @a[scores={drg_dirt=1..63}] loot dragon:blocks/dirt
clear @a dirt{drg_custom:0b}

# Infinite bread & Remove normal bread
execute as @a store result score @s drg_bread run clear @s minecraft:bread{drg_custom:1b,display:{Name:'["",{"translate":"item.minecraft.bread","italic": false},{"text": " - ","italic": false},{"translate":"enchantment.minecraft.infinity","italic": false}]'}} 0
clear @a[scores={drg_bread=65..}] minecraft:bread{drg_custom:1b,display:{Name:'["",{"translate":"item.minecraft.bread","italic": false},{"text": " - ","italic": false},{"translate":"enchantment.minecraft.infinity","italic": false}]'}}
loot give @a[scores={drg_bread=0}] loot dragon:blocks/many_bread
loot give @a[scores={drg_bread=1..63}] loot dragon:blocks/bread
clear @a bread{drg_custom:0b}

# Infinite arrow & Remove normal arrow
execute as @a store result score @s drg_arrow run clear @s minecraft:arrow{drg_custom:1b,display:{Name:'["",{"translate":"item.minecraft.arrow","italic": false},{"text": " - ","italic": false},{"translate":"enchantment.minecraft.infinity","italic": false}]'}} 0
clear @a[scores={drg_arrow=65..}] minecraft:arrow{drg_custom:1b,display:{Name:'["",{"translate":"item.minecraft.arrow","italic": false},{"text": " - ","italic": false},{"translate":"enchantment.minecraft.infinity","italic": false}]'}}
loot give @a[scores={drg_arrow=..0}] loot dragon:blocks/many_arrow
loot give @a[scores={drg_arrow=1..63}] loot dragon:blocks/arrow
clear @a arrow{drg_custom:0b}

# Infinite glass bottle & Remove dragon breath and water bottle
execute if score glassbottle drg_global matches 1 as @a store result score @s drg_glass run clear @s minecraft:glass_bottle{drg_custom:1b,display:{Name:'["",{"translate":"item.minecraft.glass_bottle","italic": false},{"text": " - ","italic": false},{"translate":"enchantment.minecraft.infinity","italic": false}]'}} 0
execute if score glassbottle drg_global matches 1 run clear @a[scores={drg_glass=65..}] minecraft:glass_bottle{drg_custom:1b,display:{Name:'["",{"translate":"item.minecraft.glass_bottle","italic": false},{"text": " - ","italic": false},{"translate":"enchantment.minecraft.infinity","italic": false}]'}}
execute if score glassbottle drg_global matches 1 run loot give @a[scores={drg_glass=0}] loot dragon:blocks/many_glass_bottle
execute if score glassbottle drg_global matches 1 run loot give @a[scores={drg_glass=1..63}] loot dragon:blocks/glass_bottle
execute if score glassbottle drg_global matches 1 run clear @a dragon_breath 1
execute if score glassbottle drg_global matches 1 run clear @a potion{Potion:"minecraft:water"} 1
execute if score glassbottle drg_global matches 1 run clear @a glass_bottle{drg_custom:0b}

# Setting
execute if score dragonfireball drg_global matches 0 run kill @e[type=dragon_fireball]
execute if score glassbottle drg_global matches 0 run clear @a glass_bottle 1
execute if score difficulty drg_global matches 0 run difficulty peaceful
execute if score difficulty drg_global matches 1 run difficulty easy
execute if score difficulty drg_global matches 2 run difficulty normal
execute if score difficulty drg_global matches 3 run difficulty hard
execute if score keepinventory drg_global matches 0 run gamerule keepInventory false
execute if score keepinventory drg_global matches 1 run gamerule keepInventory true
execute if score ultrasurvival drg_global matches 0 run gamerule naturalRegeneration true
execute if score ultrasurvival drg_global matches 1 run gamerule naturalRegeneration false
execute if score health drg_global matches 0 run scoreboard objectives setdisplay belowName 
execute if score health drg_global matches 0 run scoreboard objectives setdisplay list
execute if score health drg_global matches 1 run scoreboard objectives setdisplay belowName drg_health
execute if score health drg_global matches 1 run scoreboard objectives setdisplay list drg_health
execute if score friendlyfire drg_global matches 0 run team modify all friendlyFire false
execute if score friendlyfire drg_global matches 1 run team modify all friendlyFire true

execute unless score #enderman_tmp drg_global = enderman drg_global run function dragon:setting/enderman/check
scoreboard players operation #enderman_tmp drg_global = enderman drg_global

# Unable them to drop item
execute if score unabletodrop drg_global matches 1 as @e[type=item,tag=!processed] run data modify entity @s Owner set from entity @s Thrower
execute if score unabletodrop drg_global matches 1 as @e[type=item,tag=!processed] run data modify entity @s PickupDelay set value 0
execute if score unabletodrop drg_global matches 1 run tag @e[type=item] add processed

# Welcome Message
execute as @a[scores={drg_join=1..}] at @s run function dragon:title_join/run
execute as @a[scores={drg_join=1..}] at @s run function dragon:welcome

# Arrow Used Scoreboard
execute as @a run scoreboard players operation @s drg_use_arrow += @s drg_use_bow
execute as @a run scoreboard players operation @s drg_use_arrow += @s drg_use_crossbow

# Reset the BowUsed and CrossbowUsed
scoreboard players reset @a drg_use_bow
scoreboard players reset @a drg_use_crossbow

# Execute at end portal the misplaced code
execute at @e[type=minecraft:area_effect_cloud,tag=drg_portal] run function dragon:endcrystal/end_crystals

# Set all end crystal in end fountain to invulnerable
execute at @e[type=minecraft:area_effect_cloud,tag=drg_portal] unless entity @e[type=ender_dragon] run data modify entity @e[type=end_crystal,x=0,z=3,limit=1,sort=nearest,distance=..5] Invulnerable set value 1b
execute at @e[type=minecraft:area_effect_cloud,tag=drg_portal] unless entity @e[type=ender_dragon] run data modify entity @e[type=end_crystal,x=-2.5,z=0.5,limit=1,sort=nearest,distance=..5] Invulnerable set value 1b
execute at @e[type=minecraft:area_effect_cloud,tag=drg_portal] unless entity @e[type=ender_dragon] run data modify entity @e[type=end_crystal,x=0.5,z=-2.5,limit=1,sort=nearest,distance=..5] Invulnerable set value 1b
execute at @e[type=minecraft:area_effect_cloud,tag=drg_portal] unless entity @e[type=ender_dragon] run data modify entity @e[type=end_crystal,x=3.5,z=0.5,limit=1,sort=nearest,distance=..5] Invulnerable set value 1b

# Tp player to original location if has title tag
execute as @a[tag=drg_title] at @s run tp @e[type=area_effect_cloud,tag=drg_player,limit=1,sort=nearest]
