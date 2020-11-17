#---------------------------------------------------------
# This Datapack was made by Barra Ihsan
# Please do not copy or credit this as your own work!
# Youtube: www.youtube.com/c/BarraIhsan
# Github: www.github.com/barraIhsan
#---------------------------------------------------------

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
scoreboard objectives add health health {"text": "❤","color": "red"}
scoreboard objectives add food dummy

# Add endcrystal scoreboard
scoreboard objectives add endcrystal dummy
scoreboard players add endcrystal endcrystal 0

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

# Give effect to update the health scoreboard
execute unless score health setting = health setting run effect give @s minecraft:instant_damage 1 0 true
execute unless score health setting = health setting run effect give @s minecraft:regeneration 4 2 true

# Info text
tellraw @s ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

tellraw @p ["",{"text":"                       Ender Dragon Practice             "}]

tellraw @s ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

tellraw @s ["",{"text": "\n"},{"text":"                  Make sure you have read "},{"text": "README","color": "blue","clickEvent": {"action": "open_url","value": "https://github.com/barraIhsan/enderdragon/blob/master/README.md"},"hoverEvent": {"action": "show_text","contents": "Click to Read README!"}},{"text": "\n"},{"text": "                   AND download the "},{"text": "Recourcepack!","color": "blue","clickEvent": {"action": "open_url","value": "https://github.com/barraIhsan/enderdragon/releases/download/v1.2.1/Ender-Dragon-Practice-Recourcepack-v1.2.1.zip"},"hoverEvent": {"action": "show_text","contents": "Click to download my recourcepack!"}},{"text": "\n"}]

tellraw @s ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

tellraw @s ["",{"text":"                           [ Open Setting ]","color":"green","clickEvent":{"action":"run_command","value":"/function dragon:setting"},"hoverEvent": {"action": "show_text","contents": "Requires OP"}}]

tellraw @s ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

tellraw @s ["",{"text": "\n"},{"text":"                         Made By : "},{"text":"Barra Ihsan","color":"green"},{"text":"\n\n"},{"text":"          [ Twitter ] ","color":"aqua","clickEvent":{"action":"open_url","value":"https://twitter.com/barra_ihsan"},"hoverEvent": {"action": "show_text","contents": "Click to visit my Twitter!"}},{"text":"        [ Instagram ] ","color":"#FFC0CB","clickEvent":{"action":"open_url","value":"https://www.instagram.com/barra.ihsan/"},"hoverEvent": {"action": "show_text","contents": "Click to visit my Instagram!"}},{"text":"         [ GitHub ] ","color":"dark_gray","clickEvent":{"action":"open_url","value":"https://github.com/barraIhsan"},"hoverEvent": {"action": "show_text","contents": "Click to visit my Github!"}},{"text": "\n"}]

tellraw @s ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]


# Add Spawnpoint and Worldspawn
execute in the_end run spawnpoint @s 100 49 0
execute in the_end run setworldspawn 100 49 0

# Teleport to The End
execute in the_end run teleport @s 100 49 0 90 0

# Make an obsidian platform
execute in the_end run fill 98 48 -2 102 48 2 minecraft:obsidian
execute in the_end run fill 102 49 -2 98 51 2 minecraft:air

# Add team
team add all
team join all @s

# Give player current kit
function dragon:init_kits