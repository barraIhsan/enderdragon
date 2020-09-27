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
execute if score $timer1 timer matches 160 run scoreboard players set $timer1 timer 0

# Kill arrow when landing
kill @e[type=minecraft:arrow,nbt={inGround:1b}]

# Remove torch from end fountain and fire from end crystal
execute in the_end run fill 3 0 -3 -3 255 3 air replace minecraft:fire
execute in the_end run fill -1 0 -1 1 255 1 air replace minecraft:wall_torch

# Add actionbar that show you how many End Crystal left
execute if score crystalleft setting matches 1 run execute in the_end store result score endcrystal endcrystal if entity @e[type=end_crystal,x=0]
execute if score crystalleft setting matches 1 run title @a actionbar [{"text":"End Crystals left: ","color":"light_purple"},{"score":{"name":"endcrystal","objective":"endcrystal"}}]

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

# Infinite glass bottle & Remove dragon breath
execute if score glassbottle setting matches 1 run execute as @a store result score @s glass_count run clear @s minecraft:glass_bottle 0
execute if score glassbottle setting matches 1 run clear @a[scores={glass_count=17..}] minecraft:glass_bottle 1
execute if score glassbottle setting matches 1 run loot give @a[scores={glass_count=..15}] loot dragon:blocks/glass_bottle
execute if score glassbottle setting matches 1 run clear @a dragon_breath 1

# Setting
execute if score dragonfireball setting matches 0 run kill @e[type=dragon_fireball]
execute if score glassbottle setting matches 0 run clear @a glass_bottle 1

# Unable them to drop item
execute if score unabletodrop setting matches 1 run execute as @e[type=item,tag=!processed] run data modify entity @s Owner set from entity @s Thrower
execute if score unabletodrop setting matches 1 run execute as @e[type=item,tag=!processed] run data modify entity @s PickupDelay set value 0
execute if score unabletodrop setting matches 1 run tag @e[type=item] add processed
