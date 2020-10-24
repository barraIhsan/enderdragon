# If new player join, they will run this
execute as @a[tag=!dragon_init] run function dragon:init

# Give end crystal to who killed the Ender Dragon
give @a[scores={DragonKiller=1..}] minecraft:end_crystal 4

# Clear all end crystal from player after ender dragon has been summoned
execute as @a if entity @s[scores={DragonKiller=1..}] run tag @s add killedEnderDragon
execute if entity @a[tag=killedEnderDragon] unless entity @e[type=ender_dragon] run tag @a remove killedEnderDragon
execute unless entity @a[tag=killedEnderDragon] run clear @a end_crystal

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
execute if score $timer1 timer matches 200 run scoreboard objectives setdisplay sidebar GlassBottleUsed
execute if score $timer1 timer matches 220 run scoreboard objectives setdisplay sidebar ArrowUsed
execute if score $timer1 timer matches 240 run scoreboard players set $timer1 timer 0

# Kill arrow when landing
kill @e[type=minecraft:arrow,nbt={inGround:1b}]

# Remove fire from end crystal
execute in minecraft:the_end positioned 0 256 0 at @e[type=minecraft:area_effect_cloud,tag=endPortalHeightMarker,distance=0..] run fill 3 ~-1 -3 -3 ~-1 3 air replace minecraft:fire

# Remove end portal from end fountain
execute in minecraft:the_end positioned 0 256 0 at @e[type=minecraft:area_effect_cloud,tag=endPortalHeightMarker,distance=0..] run fill 3 ~-2 -3 -3 ~-2 3 air replace minecraft:end_portal

# Add actionbar that show you how many End Crystal left
execute if score crystalleft setting matches 1 in the_end store result score endcrystal endcrystal if entity @e[type=end_crystal,x=0]
execute if score crystalleft setting matches 1 if score endcrystal endcrystal matches 0 if entity @e[type=ender_dragon] run title @a actionbar ["",{"text":"All Crystal has been destroyed! Now, Fight the Ender Dragon!","color":"light_purple"}]
execute if score crystalleft setting matches 1 if score endcrystal endcrystal matches 1..10 if entity @e[type=ender_dragon] run title @a actionbar ["",{"text":"Destroy All Crystal! (","color":"light_purple"},{"score":{"name":"endcrystal","objective":"endcrystal"},"color":"light_purple","bold": true},{"text": " / 10)","color": "light_purple"}]

execute if score crystalleft setting matches 1 if score endcrystal endcrystal matches 0 unless entity @e[type=ender_dragon] run title @a actionbar ["",{"text":"Summon the Ender Dragon! ","color":"light_purple"}]

# Add .... animation
scoreboard players add $timer2 timer 1
execute if score $timer2 timer matches 6 if score crystalleft setting matches 1 if score endcrystal endcrystal matches 4..14 unless entity @e[type=ender_dragon] run title @a actionbar ["",{"text":"Resummoning The Ender Dragon.","color":"light_purple"}]

execute if score $timer2 timer matches 11 if score crystalleft setting matches 1 if score endcrystal endcrystal matches 4..14 unless entity @e[type=ender_dragon] run title @a actionbar ["",{"text":"Resummoning The Ender Dragon..","color":"light_purple"}]

execute if score $timer2 timer matches 16 if score crystalleft setting matches 1 if score endcrystal endcrystal matches 4..14 unless entity @e[type=ender_dragon] run title @a actionbar ["",{"text":"Resummoning The Ender Dragon...","color":"light_purple"}]

execute if score $timer2 timer matches 21 if score crystalleft setting matches 1 if score endcrystal endcrystal matches 4..14 unless entity @e[type=ender_dragon] run title @a actionbar ["",{"text":"Resummoning The Ender Dragon....","color":"light_purple"}]

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

# Unable them to drop item
execute if score unabletodrop setting matches 1 as @e[type=item,tag=!processed] run data modify entity @s Owner set from entity @s Thrower
execute if score unabletodrop setting matches 1 as @e[type=item,tag=!processed] run data modify entity @s PickupDelay set value 0
execute if score unabletodrop setting matches 1 run tag @e[type=item] add processed

# Welcome Message
execute as @a if score @s WelcomeMessage matches 1 run tellraw @s ["",{"text":"Welcome Back ","bold":true},{"selector":"@s","bold":true},{"text":"!","bold":true},{"text":"\n"},{"text":"You've killed Dragon "},{"score":{"name":"@s","objective":"KillDragon"}},{"text":" time(s)"},{"text":"\n"},{"text":"You've been killed by the Dragon "},{"score":{"name":"@s","objective":"KilledByDragon"}},{"text":" time(s)"}]
execute as @a if score @s WelcomeMessage matches 1 run tellraw @s ["",{"text":"["},{"text":"Configuration","color":"dark_green","clickEvent":{"action":"run_command","value":"/function dragon:configuration"}},{"text":"]"},{"text":" (Requires OP, Apply To Everyone)"}]
execute as @a if score @s WelcomeMessage matches 1 run tellraw @s ["",{"text":"["},{"text":"Update, and Reset Setting","color":"dark_green","clickEvent":{"action":"run_command","value":"/function dragon:update"},"hoverEvent":{"action":"show_text","content":"After you update the datapack to latest version, click this to update the scoreboard"}},{"text":"]"},{"text":" (Requires OP)"}]

execute as @a if score @s WelcomeMessage matches 1 run scoreboard players set @s WelcomeMessage 0

# Arrow Used Scoreboard
execute as @a run scoreboard players operation @s ArrowUsed += @s BowUsed
execute as @a run scoreboard players operation @s ArrowUsed += @s CrossbowUsed

# Reset the BowUsed and CrossbowUsed
scoreboard players reset @a BowUsed
scoreboard players reset @a CrossbowUsed

# Execute at end portal the misplaced code
execute in minecraft:the_end positioned 0 256 0 at @e[type=minecraft:area_effect_cloud,tag=endPortalHeightMarker,distance=0..] run function dragon:endcrystal/end_crystals

# Set all end crystal in end fountain to invulnerable
execute in the_end unless entity @e[type=ender_dragon] run data modify entity @e[type=end_crystal,x=0,z=3,limit=1,sort=nearest] Invulnerable set value 1b
execute in the_end unless entity @e[type=ender_dragon] run data modify entity @e[type=end_crystal,x=-2.5,z=0.5,limit=1,sort=nearest] Invulnerable set value 1b
execute in the_end unless entity @e[type=ender_dragon] run data modify entity @e[type=end_crystal,x=0.5,z=-2.5,limit=1,sort=nearest] Invulnerable set value 1b
execute in the_end unless entity @e[type=ender_dragon] run data modify entity @e[type=end_crystal,x=3.5,z=0.5,limit=1,sort=nearest] Invulnerable set value 1b
