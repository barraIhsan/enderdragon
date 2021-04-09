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

# Move scoreboard
scoreboard players operation @s drg_kill = @s KillDragon
scoreboard players operation @s drg_killed = @s KilledByDragon
scoreboard players operation @s drg_use_bread = @s BreadUsed
scoreboard players operation @s drg_use_dirt = @s DirtUsed
scoreboard players operation @s drg_use_glass = @s GlassBottleUsed
scoreboard players operation @s drg_use_arrow = @s ArrowUsed
scoreboard players operation @s drg_use_bow = @s BowUsed
scoreboard players operation @s drg_use_crossbow = @s CrossbowUsed

# Reset objective
scoreboard players reset @s KillDragon
scoreboard players reset @s KilledByDragon
scoreboard players reset @s BreadUsed
scoreboard players reset @s DirtUsed
scoreboard players reset @s GlassBottleUsed
scoreboard players reset @s ArrowUsed
scoreboard players reset @s BowUsed
scoreboard players reset @s CrossbowUsed

# Remove
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
