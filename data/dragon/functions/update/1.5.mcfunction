# Set version
scoreboard players set version drg_global 15

# Add scoreboard
scoreboard objectives add drg_dirt dummy
scoreboard objectives add drg_bread dummy
scoreboard objectives add drg_arrow dummy
scoreboard objectives add drg_glass dummy
scoreboard objectives add drg_pumpkin dummy
scoreboard objectives add drg_killer minecraft.killed:minecraft.ender_dragon
scoreboard objectives add drg_kill minecraft.killed:minecraft.ender_dragon "Kill Dragon"
scoreboard objectives add drg_killed minecraft.killed_by:ender_dragon "Killed By Dragon"
scoreboard objectives add drg_use_bread minecraft.used:minecraft.bread "Bread Used"
scoreboard objectives add drg_use_dirt minecraft.used:minecraft.dirt "Dirt Used"
scoreboard objectives add drg_use_glass minecraft.used:minecraft.glass_bottle "Glass Bottle Used"
scoreboard objectives add drg_use_arrow dummy "Arrow Used"
scoreboard objectives add drg_use_bow minecraft.used:minecraft.bow
scoreboard objectives add drg_use_crossbow minecraft.used:minecraft.crossbow
scoreboard objectives add drg_join minecraft.custom:leave_game
scoreboard objectives add drg_health health {"text": "❤","color": "red"}

# Add 0 to score
scoreboard players add @s drg_kill 0
scoreboard players add @s drg_killed 0
scoreboard players add @s drg_use_bread 0
scoreboard players add @s drg_use_dirt 0
scoreboard players add @s drg_use_glass 0
scoreboard players add @s drg_use_arrow 0

# Modify the display name of health
scoreboard objectives modify drg_health displayname {"text": "❤","color": "red"}

# Add endcrystal scoreboard
scoreboard objectives add endcrystal dummy
execute unless score endcrystal drg_global = endcrystal drg_global run scoreboard players set endcrystal drg_global 0

# Add setting scoreboard
scoreboard objectives add drg_global dummy
execute unless score dragonfireball drg_global = dragonfireball drg_global run scoreboard players set dragonfireball drg_global 1
execute unless score glassbottle drg_global = glassbottle drg_global run scoreboard players set glassbottle drg_global 1
execute unless score actionbar drg_global = actionbar drg_global run scoreboard players set actionbar drg_global 1
execute unless score unabletodrop drg_global = unabletodrop drg_global run scoreboard players set unabletodrop drg_global 1
execute unless score difficulty drg_global = difficulty drg_global run scoreboard players set difficulty drg_global 2
execute unless score enderman drg_global = enderman drg_global run scoreboard players set enderman drg_global 1
execute unless score #enderman_tmp drg_global = #enderman_tmp drg_global run scoreboard players set #enderman_tmp drg_global 1
execute unless score keepinventory drg_global = keepinventory drg_global run scoreboard players set keepinventory drg_global 1
execute unless score ultrasurvival drg_global = ultrasurvival drg_global run scoreboard players set ultrasurvival drg_global 0
execute unless score health drg_global = health drg_global run scoreboard players set health drg_global 1
execute unless score friendlyfire drg_global = friendlyfire drg_global run scoreboard players set friendlyfire drg_global 1
execute unless score killarrow drg_global = killarrow drg_global run scoreboard players set killarrow drg_global 1

# Add kits scoreboard
scoreboard objectives add drg_kits dummy
execute unless score helmet drg_kits = helmet drg_kits run scoreboard players set helmet drg_kits 4
execute unless score chestplate drg_kits = chestplate drg_kits run scoreboard players set chestplate drg_kits 4
execute unless score leggings drg_kits = leggings drg_kits run scoreboard players set leggings drg_kits 4
execute unless score boots drg_kits = boots drg_kits run scoreboard players set boots drg_kits 4
execute unless score sword drg_kits = sword drg_kits run scoreboard players set sword drg_kits 4
execute unless score pickaxe drg_kits = pickaxe drg_kits run scoreboard players set pickaxe drg_kits 4
execute unless score axe drg_kits = axe drg_kits run scoreboard players set axe drg_kits 4
execute unless score shovel drg_kits = shovel drg_kits run scoreboard players set shovel drg_kits 4

# Changes crystalleft to actionbar
execute if score crystalleft drg_global matches 0 run scoreboard players set actionbar drg_global 0
execute if score crystalleft drg_global matches 1 run scoreboard players set actionbar drg_global 1
execute if score crystalleft drg_global matches 0..1 run scoreboard players reset crystalleft drg_global

# Update the health scoreboard
execute if score ultrasurvival drg_global matches 0 unless score @s drg_health matches -2147483648..2147483647 run tp ~ ~4 ~

# Add team
team add all
team join all @a

# Remove kits
execute if score kits drg_global matches 0 run function dragon:kits_player_to_kits_objective/woother
execute if score kits drg_global matches 1 run function dragon:kits_player_to_kits_objective/stomail
execute if score kits drg_global matches 2 run function dragon:kits_player_to_kits_objective/iron
execute if score kits drg_global matches 3 run function dragon:kits_player_to_kits_objective/diamond
execute if score kits drg_global matches 4 run function dragon:kits_player_to_kits_objective/netherite
execute if score kits drg_global matches 0..4 run scoreboard players reset kits drg_global

# Move objectives
scoreboard players operation timer_sidebar drg_global = $timer1 timer
scoreboard players operation timer_actionbar drg_global = $timer2 timer
scoreboard players operation difficulty drg_global = difficulty setting
scoreboard players operation enderman drg_global = enderman setting
scoreboard players operation dragonfireball drg_global = dragonfireball setting
scoreboard players operation keepinventory drg_global = keepinventory setting
scoreboard players operation ultrasurvival drg_global = ultrasurvival setting
scoreboard players operation actionbar drg_global = actionbar setting
scoreboard players operation unabletodrop drg_global = unabletodrop setting
scoreboard players operation health drg_global = health setting
scoreboard players operation friendlyfire drg_global = friendlyfire setting
scoreboard players operation helmet drg_kits = helmet kits
scoreboard players operation chestplate drg_kits = chestplate kits
scoreboard players operation leggings drg_kits = leggings kits
scoreboard players operation boots drg_kits = boots kits
scoreboard players operation sword drg_kits = sword kits
scoreboard players operation pickaxe drg_kits = pickaxe kits
scoreboard players operation axe drg_kits = axe kits
scoreboard players operation shovel drg_kits = shovel kits
scoreboard players operation @s drg_kill = @s KillDragon
scoreboard players operation @s drg_killed = @s KilledByDragon
scoreboard players operation @s drg_use_bread = @s BreadUsed
scoreboard players operation @s drg_use_dirt = @s DirtUsed
scoreboard players operation @s drg_use_glass = @s GlassBottleUsed
scoreboard players operation @s drg_use_arrow = @s ArrowUsed
scoreboard players operation @s drg_use_bow = @s BowUsed
scoreboard players operation @s drg_use_crossbow = @s CrossbowUsed
scoreboard players reset @s KillDragon
scoreboard players reset @s KilledByDragon
scoreboard players reset @s BreadUsed
scoreboard players reset @s DirtUsed
scoreboard players reset @s GlassBottleUsed
scoreboard players reset @s ArrowUsed
scoreboard players reset @s BowUsed
scoreboard players reset @s CrossbowUsed
scoreboard objectives remove timer
scoreboard objectives remove dirt_count
scoreboard objectives remove bread_count
scoreboard objectives remove arrow_count
scoreboard objectives remove glass_count
scoreboard objectives remove crystal_count
scoreboard objectives remove wear_pumpkin
scoreboard objectives remove DragonKiller
scoreboard objectives remove KillDragon
scoreboard objectives remove KilledByDragon
scoreboard objectives remove BreadUsed
scoreboard objectives remove DirtUsed
scoreboard objectives remove GlassBottleUsed
scoreboard objectives remove ArrowUsed
scoreboard objectives remove BowUsed
scoreboard objectives remove CrossbowUsed
scoreboard objectives remove WelcomeMessage
scoreboard objectives remove health
scoreboard objectives remove setting
scoreboard objectives remove kits
scoreboard objectives remove food
scoreboard objectives remove endcrystal
scoreboard players reset food drg_global
scoreboard objectives remove wear_pumpkin
scoreboard objectives remove DragonKiller
scoreboard objectives remove WelcomeMessage
scoreboard objectives remove health
execute unless entity @e[scores={KillDragon=0}] run scoreboard objectives remove KillDragon
execute unless entity @e[scores={KilledByDragon=0}] run scoreboard objectives remove KilledByDragon
execute unless entity @e[scores={BreadUsed=0}] run scoreboard objectives remove BreadUsed
execute unless entity @e[scores={DirtUsed=0}] run scoreboard objectives remove DirtUsed
execute unless entity @e[scores={GlassBottleUsed=0}] run scoreboard objectives remove GlassBottleUsed
execute unless entity @e[scores={ArrowUsed=0}] run scoreboard objectives remove ArrowUsed
execute unless entity @e[scores={BowUsed=0}] run scoreboard objectives remove BowUsed
execute unless entity @e[scores={CrossbowUsed=0}] run scoreboard objectives remove CrossbowUsed

# Add tag
tag @s add updated

# Message
tellraw @s ["",{"text": "Ender Dragon Practice","color": "green"},{"text": " has been updated to version "},{"text": "1.5!","color": "blue","bold": true}]

# Kill AEC
kill @e[type=area_effect_cloud,tag=drg_portal]
