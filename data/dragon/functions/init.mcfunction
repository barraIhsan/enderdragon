tag @s add dragon_init

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

# Info text
tellraw @s ["",{"text":"To Start Ender Dragon Practice, You Should Make A "},{"text":"NEW ","bold":true,"color":"blue"},{"text":"World "},{"text":"ONLY ","bold":true,"color":"blue"},{"text":"For Practice, Because You'll Be Stuck In The End, Unless You Know Execute Command"}]
tellraw @s "====================================="
tellraw @s ["",{"text":"["},{"text":"Configuration","color":"dark_green","clickEvent":{"action":"run_command","value":"/function dragon:configuration"}},{"text":"]"},{"text":" (Requires OP, Apply To Everyone)"}]
tellraw @s ["",{"text":"["},{"text":"Update, and Reset Setting","color":"dark_green","clickEvent":{"action":"run_command","value":"/function dragon:update"},"hoverEvent":{"action":"show_text","content":"After you update the datapack to latest version, click this to update the scoreboard"}},{"text":"]"},{"text":" (Requires OP)"}]
tellraw @s "====================================="
tellraw @s ["",{"text":"Made By : "},{"text":"Barra Ihsan","color":"green"},{"text":"\n"},{"text":"[Twitter] ","color":"aqua","clickEvent":{"action":"open_url","value":"https://twitter.com/barra_ihsan"}},{"text":"[Instagram] ","color":"pink","clickEvent":{"action":"open_url","value":"https://www.instagram.com/barra.ihsan/"}},{"text":"[GitHub] ","color":"gray","clickEvent":{"action":"open_url","value":"https://github.com/barraIhsan"}}]
tellraw @s "====================================="

# Add Spawnpoint and Worldspawn
execute in the_end run spawnpoint @s 100 49 0
execute in the_end run setworldspawn 100 49 0

# Teleport to The End
execute in the_end run teleport @s 100 49 0 90 0

# Make an obsidian platform
execute in the_end run fill 98 48 -2 102 48 2 minecraft:obsidian
execute in the_end run fill 102 49 -2 98 51 2 minecraft:air

# Give player current kit
execute if score kits setting matches 0 run function dragon:init_kits/woother
execute if score kits setting matches 1 run function dragon:init_kits/stomail
execute if score kits setting matches 2 run function dragon:init_kits/iron
execute if score kits setting matches 3 run function dragon:init_kits/diamond
execute if score kits setting matches 4 run function dragon:init_kits/netherite

# Tell everyone that the setting have been reseted
tellraw @a ["",{"text": "A new player has join!"}]