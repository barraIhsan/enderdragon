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
scoreboard objectives add missedEC dummy
scoreboard objectives add health health "❤"
scoreboard objectives setdisplay belowName health
scoreboard objectives setdisplay list health

# Add players to scoreboard
scoreboard players add @a KillDragon 0
scoreboard players add @a KilledByDragon 0
scoreboard players add @a BreadUsed 0
scoreboard players add @a DirtUsed 0
scoreboard players add @a GlassBottleUsed 0
scoreboard players add @a ArrowUsed 0
scoreboard players add @a BowUsed 0
scoreboard players add @a CrossbowUsed 0
scoreboard players add @a WelcomeMessage 0

# Add endcrystal scoreboard
scoreboard objectives add endcrystal dummy
scoreboard players add endcrystal endcrystal 0

# Add setting scoreboard
scoreboard objectives add setting dummy
execute unless score dragonfireball setting = dragonfireball setting run scoreboard players set dragonfireball setting 1
execute unless score glassbottle setting = glassbottle setting run scoreboard players set glassbottle setting 1
execute unless score crystalleft setting = crystalleft setting run scoreboard players set crystalleft setting 1
execute unless score unabletodrop setting = unabletodrop setting run scoreboard players set unabletodrop setting 1
execute unless score difficulty setting = difficulty setting run scoreboard players set difficulty setting 2
execute unless score enderman setting = enderman setting run scoreboard players set enderman setting 1
execute unless score #enderman_tmp setting = #enderman_tmp setting run scoreboard players set #enderman_tmp setting 1
execute unless score keepinventory setting = keepinventory setting run scoreboard players set keepinventory setting 1
execute unless score kits setting = kits setting run scoreboard players set kits setting 2
execute unless score #kits_tmp setting = #kits_tmp setting run scoreboard players set #kits_tmp setting 2
execute unless score ultrasurvival setting = ultrasurvival setting run scoreboard players set ultrasurvival setting 0
execute unless score health setting = health setting run scoreboard players set health setting 1

# Give effect to update the health scoreboard
execute unless score health setting = health setting run effect give @a minecraft:instant_damage 1 0 true
execute unless score health setting = health setting run effect give @a minecraft:regeneration 4 2 true
