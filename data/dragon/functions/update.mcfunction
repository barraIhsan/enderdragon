# Add scoreboard
scoreboard objectives add timer dummy
scoreboard objectives add dirt_count dummy
scoreboard objectives add bread_count dummy
scoreboard objectives add arrow_count dummy
scoreboard objectives add glass_count dummy
scoreboard objectives add crystal_count dummy
scoreboard objectives add wear_pumpkin dummy
scoreboard objectives add DragonKiller minecraft.killed:minecraft.ender_dragon
scoreboard objectives add KillDragon minecraft.killed:minecraft.ender_dragon "Kill Dragon"
scoreboard objectives add KilledByDragon minecraft.killed_by:ender_dragon "Killed By Dragon"
scoreboard objectives add BreadUsed minecraft.used:minecraft.bread "Bread Used"
scoreboard objectives add DirtUsed minecraft.used:minecraft.dirt "Dirt Used"
scoreboard objectives add GlassBottleUsed minecraft.used:minecraft.glass_bottle "Glass Bottle Used"
scoreboard objectives add ArrowUsed dummy "Arrow Used"
scoreboard objectives add BowUsed minecraft.used:minecraft.bow
scoreboard objectives add CrossbowUsed minecraft.used:minecraft.crossbow
scoreboard objectives add WelcomeMessage minecraft.custom:leave_game
scoreboard objectives add health health {"text": "❤","color": "red"}

# Modify the display name of health
scoreboard objectives modify health displayname {"text": "❤","color": "red"}

# Add endcrystal scoreboard
scoreboard objectives add endcrystal dummy
execute unless score endcrystal endcrystal = endcrystal endcrystal run scoreboard players set endcrystal endcrystal 0

# Add setting scoreboard
scoreboard objectives add setting dummy
execute unless score dragonfireball setting = dragonfireball setting run scoreboard players set dragonfireball setting 1
execute unless score glassbottle setting = glassbottle setting run scoreboard players set glassbottle setting 1
execute unless score actionbar setting = actionbar setting run scoreboard players set actionbar setting 1
execute unless score unabletodrop setting = unabletodrop setting run scoreboard players set unabletodrop setting 1
execute unless score difficulty setting = difficulty setting run scoreboard players set difficulty setting 2
execute unless score enderman setting = enderman setting run scoreboard players set enderman setting 1
execute unless score #enderman_tmp setting = #enderman_tmp setting run scoreboard players set #enderman_tmp setting 1
execute unless score keepinventory setting = keepinventory setting run scoreboard players set keepinventory setting 1
execute unless score ultrasurvival setting = ultrasurvival setting run scoreboard players set ultrasurvival setting 0
execute unless score health setting = health setting run scoreboard players set health setting 1
execute unless score friendlyfire setting = friendlyfire setting run scoreboard players set friendlyfire setting 1
execute unless score killarrow setting = killarrow setting run scoreboard players set killarrow setting 1

# Add kits scoreboard
scoreboard objectives add kits dummy
execute unless score helmet kits = helmet kits run scoreboard players set helmet kits 4
execute unless score chestplate kits = chestplate kits run scoreboard players set chestplate kits 4
execute unless score leggings kits = leggings kits run scoreboard players set leggings kits 4
execute unless score boots kits = boots kits run scoreboard players set boots kits 4
execute unless score sword kits = sword kits run scoreboard players set sword kits 4
execute unless score pickaxe kits = pickaxe kits run scoreboard players set pickaxe kits 4
execute unless score axe kits = axe kits run scoreboard players set axe kits 4
execute unless score shovel kits = shovel kits run scoreboard players set shovel kits 4

# Changes crystalleft to actionbar
execute if score crystalleft setting matches 0 run scoreboard players set actionbar setting 0
execute if score crystalleft setting matches 1 run scoreboard players set actionbar setting 1
execute if score crystalleft setting matches 0..1 run scoreboard players reset crystalleft setting

# Update the health scoreboard
execute store result score food setting run data get entity @s foodLevel
execute if score food setting matches 20 if score ultrasurvival setting matches 0 unless score @s health matches -2147483648..2147483647 run tp ~ ~4 ~
scoreboard players set food setting 0

# Add team
team add all
team join all @a

# Remove kits
execute if score kits setting matches 0 run function dragon:kits_player_to_kits_objective/woother
execute if score kits setting matches 1 run function dragon:kits_player_to_kits_objective/stomail
execute if score kits setting matches 2 run function dragon:kits_player_to_kits_objective/iron
execute if score kits setting matches 3 run function dragon:kits_player_to_kits_objective/diamond
execute if score kits setting matches 4 run function dragon:kits_player_to_kits_objective/netherite
execute if score kits setting matches 0..4 run scoreboard players reset kits setting

# Remove missedEC objectives
scoreboard objectives remove missedEC
scoreboard objectives remove food

# Run it per 10 minute
schedule function dragon:update 600s
