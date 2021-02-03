#---------------------------------------------------------
# This Datapack was made by Barra Ihsan
# Please do not copy or credit this as your own work!
# Youtube: www.youtube.com/c/BarraIhsan
# Github: www.github.com/barraIhsan
#---------------------------------------------------------

# Run load function for the first time
execute unless entity @e[type=area_effect_cloud,tag=endPortalHeightMarker] run function dragon:load

# If new player join, they will run this
execute as @a[tag=!dragon_init] run function dragon:init

# Give end crystal to who killed the Ender Dragon
give @a[scores={DragonKiller=1..}] minecraft:end_crystal 4

# Tell who killed The Ender Dragon
execute if entity @a[scores={DragonKiller=1..}] run tellraw @a ["",{"text":"The Ender Dragon was killed by "},{"selector":"@a[scores={DragonKiller=1..}]"}]

# Reset the DragonKiller scoreboard
scoreboard players set @a DragonKiller 0

# Add scoreboard timer
scoreboard players add $timer1 timer 1
execute if score $timer1 timer matches 1 run scoreboard objectives setdisplay sidebar KillDragon
execute if score $timer1 timer matches 81 run scoreboard objectives setdisplay sidebar KilledByDragon
execute if score $timer1 timer matches 160 run scoreboard objectives setdisplay sidebar DirtUsed
execute if score $timer1 timer matches 180 run scoreboard objectives setdisplay sidebar BreadUsed
execute if score $timer1 timer matches 200 run scoreboard objectives setdisplay sidebar ArrowUsed
execute if score $timer1 timer matches 220 run scoreboard objectives setdisplay sidebar GlassBottleUsed
execute if score $timer1 timer matches 240 run scoreboard players set $timer1 timer 0

# Kill arrow when landing
execute if score killarrow setting matches 1 run kill @e[type=minecraft:arrow,nbt={inGround:1b}]

# Remove fire from end crystal
execute at @e[type=minecraft:area_effect_cloud,tag=endPortalHeightMarker] run fill 3 ~-4 -3 -3 ~4 3 air replace minecraft:fire

# Turn off fire damage if there is no dragon
execute unless entity @e[type=minecraft:ender_dragon] run effect give @a fire_resistance 1 0 true

# Remove end portal from end fountain
execute at @e[type=minecraft:area_effect_cloud,tag=endPortalHeightMarker] run fill 3 ~-5 -3 -3 ~5 3 air replace minecraft:end_portal

# Clear iron bars
clear @a iron_bars 1

# Add actionbar that show you how many End Crystal left
execute if score actionbar setting matches 1 in the_end store result score endcrystal endcrystal if entity @e[type=end_crystal]
execute if score actionbar setting matches 1 if score endcrystal endcrystal matches 0 if entity @e[type=ender_dragon] run title @a actionbar ["",{"text":"Phase 2 : Fight the Ender Dragon!","color":"light_purple"}]
execute if score actionbar setting matches 1 if score endcrystal endcrystal matches 1..10 if entity @e[type=ender_dragon] run title @a actionbar ["",{"text":"Phase 1 : Destroy All Crystal! (","color":"light_purple"},{"score":{"name":"endcrystal","objective":"endcrystal"},"color":"light_purple"},{"text": " / 10)","color": "light_purple"}]

execute if score actionbar setting matches 1 if score endcrystal endcrystal matches 0 unless entity @e[type=ender_dragon] run title @a actionbar ["",{"text":"Summon the Ender Dragon!","color":"light_purple"}]

# Add .... animation
scoreboard players add $timer2 timer 1
execute if score $timer2 timer matches 6 if score actionbar setting matches 1 if score endcrystal endcrystal matches 4..14 unless entity @e[type=ender_dragon] run title @a actionbar ["",{"text":"Resummoning The Ender Dragon.","color":"light_purple"}]

execute if score $timer2 timer matches 11 if score actionbar setting matches 1 if score endcrystal endcrystal matches 4..14 unless entity @e[type=ender_dragon] run title @a actionbar ["",{"text":"Resummoning The Ender Dragon..","color":"light_purple"}]

execute if score $timer2 timer matches 16 if score actionbar setting matches 1 if score endcrystal endcrystal matches 4..14 unless entity @e[type=ender_dragon] run title @a actionbar ["",{"text":"Resummoning The Ender Dragon...","color":"light_purple"}]

execute if score $timer2 timer matches 21 if score actionbar setting matches 1 if score endcrystal endcrystal matches 4..14 unless entity @e[type=ender_dragon] run title @a actionbar ["",{"text":"Resummoning The Ender Dragon....","color":"light_purple"}]

execute if score $timer2 timer matches 22 run scoreboard players set $timer2 timer 0

# Infinite dirt
execute as @a store result score @s dirt_count run clear @s minecraft:dirt 0
clear @a[scores={dirt_count=17..}] minecraft:dirt 1
loot give @a[scores={dirt_count=..15}] loot minecraft:blocks/dirt

# Infinite bread
execute as @a store result score @s bread_count run clear @s minecraft:bread 0
clear @a[scores={bread_count=17..}] minecraft:bread 1
loot give @a[scores={bread_count=..15}] loot dragon:blocks/bread

# Infinite arrow
execute as @a store result score @s arrow_count run clear @s minecraft:arrow 0
clear @a[scores={arrow_count=17..}] minecraft:arrow 1
loot give @a[scores={arrow_count=..15}] loot dragon:blocks/arrow

# Infinite glass bottle & Remove dragon breath and water bottle
execute if score glassbottle setting matches 1 as @a store result score @s glass_count run clear @s minecraft:glass_bottle 0
execute if score glassbottle setting matches 1 run clear @a[scores={glass_count=17..}] minecraft:glass_bottle 1
execute if score glassbottle setting matches 1 run loot give @a[scores={glass_count=..15}] loot dragon:blocks/glass_bottle
execute if score glassbottle setting matches 1 run clear @a dragon_breath 1
execute if score glassbottle setting matches 1 run clear @a potion{Potion:"minecraft:water"} 1

# Setting
execute if score dragonfireball setting matches 0 run kill @e[type=dragon_fireball]
execute if score glassbottle setting matches 0 run clear @a glass_bottle 1
execute if score difficulty setting matches 0 run difficulty peaceful
execute if score difficulty setting matches 1 run difficulty easy
execute if score difficulty setting matches 2 run difficulty normal
execute if score difficulty setting matches 3 run difficulty hard
execute if score keepinventory setting matches 0 run gamerule keepInventory false
execute if score keepinventory setting matches 1 run gamerule keepInventory true
execute if score ultrasurvival setting matches 0 run gamerule naturalRegeneration true
execute if score ultrasurvival setting matches 1 run gamerule naturalRegeneration false
execute if score health setting matches 0 run scoreboard objectives setdisplay belowName 
execute if score health setting matches 0 run scoreboard objectives setdisplay list
execute if score health setting matches 1 run scoreboard objectives setdisplay belowName health
execute if score health setting matches 1 run scoreboard objectives setdisplay list health
execute if score friendlyfire setting matches 0 run team modify all friendlyFire false
execute if score friendlyfire setting matches 1 run team modify all friendlyFire true

execute unless score #enderman_tmp setting = enderman setting run function dragon:setting/enderman/check
scoreboard players operation #enderman_tmp setting = enderman setting

# Unable them to drop item
execute if score unabletodrop setting matches 1 as @e[type=item,tag=!processed] run data modify entity @s Owner set from entity @s Thrower
execute if score unabletodrop setting matches 1 as @e[type=item,tag=!processed] run data modify entity @s PickupDelay set value 0
execute if score unabletodrop setting matches 1 run tag @e[type=item] add processed

# Welcome Message
execute as @a[scores={WelcomeMessage=1..}] run function dragon:welcome_message
execute as @a[scores={WelcomeMessage=1..}] run function dragon:title_join/run

# Arrow Used Scoreboard
execute as @a run scoreboard players operation @s ArrowUsed += @s BowUsed
execute as @a run scoreboard players operation @s ArrowUsed += @s CrossbowUsed

# Reset the BowUsed and CrossbowUsed
scoreboard players reset @a BowUsed
scoreboard players reset @a CrossbowUsed

# Execute at end portal the misplaced code
execute at @e[type=minecraft:area_effect_cloud,tag=endPortalHeightMarker] run function dragon:endcrystal/end_crystals

# Set all end crystal in end fountain to invulnerable
execute at @e[type=minecraft:area_effect_cloud,tag=endPortalHeightMarker] unless entity @e[type=ender_dragon] run data modify entity @e[type=end_crystal,x=0,z=3,limit=1,sort=nearest,distance=..5] Invulnerable set value 1b
execute at @e[type=minecraft:area_effect_cloud,tag=endPortalHeightMarker] unless entity @e[type=ender_dragon] run data modify entity @e[type=end_crystal,x=-2.5,z=0.5,limit=1,sort=nearest,distance=..5] Invulnerable set value 1b
execute at @e[type=minecraft:area_effect_cloud,tag=endPortalHeightMarker] unless entity @e[type=ender_dragon] run data modify entity @e[type=end_crystal,x=0.5,z=-2.5,limit=1,sort=nearest,distance=..5] Invulnerable set value 1b
execute at @e[type=minecraft:area_effect_cloud,tag=endPortalHeightMarker] unless entity @e[type=ender_dragon] run data modify entity @e[type=end_crystal,x=3.5,z=0.5,limit=1,sort=nearest,distance=..5] Invulnerable set value 1b
