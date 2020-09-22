# If new player join, they will run this
execute as @a[tag=!dragon_init] run function dragon:init

# Give end crystal to who killed the Ender Dragon
give @a[scores={DragonKiller=1..}] minecraft:end_crystal 4

# Reset the DragonKiller scoreboard
scoreboard players set @a[scores={DragonKiller=1..}] DragonKiller 0

# Add scoreboard timer
scoreboard players add $timer1 timer 1
execute if score $timer1 timer matches 1 run scoreboard objectives setdisplay sidebar KillDragon
execute if score $timer1 timer matches 81 run scoreboard objectives setdisplay sidebar KilledByDragon
execute if score $timer1 timer matches 160 run scoreboard players set $timer1 timer 0

# Kill arrow when landing
kill @e[type=minecraft:arrow,nbt={inGround:1b}]

# Remove torch and fire from end crystal
execute in the_end run fill 3 0 -3 -3 255 3 air replace minecraft:fire
execute in the_end run fill -1 0 -1 1 255 1 air replace minecraft:wall_torch

# Infinite dirt
execute as @a store result score @s dirt_count run clear @s minecraft:dirt 0
clear @a[scores={dirt_count=17..}] minecraft:dirt 1
give @a[scores={dirt_count=..15}] minecraft:dirt 1

# Infinite bread
execute as @a store result score @s bread_count run clear @s minecraft:bread 0
clear @a[scores={bread_count=17..}] minecraft:bread 1
give @a[scores={bread_count=..15}] minecraft:bread 1

# Infinite arrow
execute as @a store result score @s arrow_count run clear @s minecraft:arrow 0
clear @a[scores={arrow_count=17..}] minecraft:arrow 1
give @a[scores={arrow_count=..15}] minecraft:arrow 1