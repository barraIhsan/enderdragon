# Set gamerule
gamerule commandBlockOutput false
gamerule sendCommandFeedback false
gamerule logAdminCommands false
gamerule announceAdvancements false
gamerule spawnRadius 0

# Add scoreboard
scoreboard objectives add timer dummy
scoreboard objectives add dirt_count dummy
scoreboard objectives add bread_count dummy
scoreboard objectives add arrow_count dummy
scoreboard objectives add glass_count dummy
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

# Add players to scoreboard
scoreboard players add @s KillDragon 0
scoreboard players add @s KilledByDragon 0
scoreboard players add @s BreadUsed 0
scoreboard players add @s DirtUsed 0
scoreboard players add @s GlassBottleUsed 0
scoreboard players add @s ArrowUsed 0
scoreboard players add @s BowUsed 0
scoreboard players add @s CrossbowUsed 0
scoreboard players add @s WelcomeMessage 0

# Add endcrystal scoreboard
scoreboard objectives add endcrystal dummy
scoreboard players add endcrystal endcrystal 0

# Add setting scoreboard & Reset them
scoreboard objectives add setting dummy
scoreboard players set dragonfireball setting 1
scoreboard players set glassbottle setting 1
scoreboard players set crystalleft setting 1
scoreboard players set unabletodrop setting 1
scoreboard players set difficulty setting 2
scoreboard players set enderman setting 1
scoreboard players set keepinventory setting 1
scoreboard players set kits setting 4

# Info text
tellraw @s "Datapack updated! (Scoreboard)"
