#---------------------------------------------------------
# This Datapack was made by Barra Ihsan
# Please do not copy or credit this as your own work!
# Youtube: youtube.com/barraIhsan
# Github: github.com/barraIhsan
#---------------------------------------------------------

# Give a tag to the person
tag @s add dragon_init

# Set gamerule
gamerule commandBlockOutput false
gamerule sendCommandFeedback false
gamerule logAdminCommands false
gamerule announceAdvancements false
gamerule spawnRadius 0

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
scoreboard players add endcrystal drg_global 0

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

# Update the health scoreboard
execute if score ultrasurvival drg_global matches 0 unless score @s drg_health matches -2147483648..2147483647 run tp ~ ~4 ~

# Title
function dragon:title_init/run

# Info text
tellraw @s ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

tellraw @s ["",{"text":"                       Ender Dragon Practice             "}]

tellraw @s ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

tellraw @s ["",{"text": "\n"},{"text":"                  Make sure you have read "},{"text": "README","color": "blue","clickEvent": {"action": "open_url","value": "https://github.com/barraIhsan/enderdragon/blob/master/README.md"},"hoverEvent": {"action": "show_text","contents": "Click to Read README!"}},{"text": "\n"},{"text": "                   AND download the "},{"text": "Recourcepack!","color": "blue","clickEvent": {"action": "open_url","value": "https://github.com/barraIhsan/enderdragon/releases/download/v1.5/Ender-Dragon-Practice-Resourcepack-v1.5.zip"},"hoverEvent": {"action": "show_text","contents": "Click to download my recourcepack!"}},{"text": "\n\n"}]
tellraw @s ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

tellraw @s ["",{"text":"                           [ Open Setting ]","color":"green","clickEvent":{"action":"run_command","value":"/function dragon:setting"},"hoverEvent": {"action": "show_text","contents": "Requires OP"}}]

tellraw @s ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

tellraw @s ["",{"text": "\n"},{"text":"                         Made By : "},{"text":"Barra Ihsan","color":"green"},{"text":"\n\n"},{"text":"          [ Twitter ] ","color":"aqua","clickEvent":{"action":"open_url","value":"https://twitter.com/barra_ihsan"},"hoverEvent": {"action": "show_text","contents": "Click to visit my Twitter!"}},{"text":"        [ YouTube ] ","color":"#FFC0CB","clickEvent":{"action":"open_url","value":"https://youtube.com/barraIhsan/"},"hoverEvent": {"action": "show_text","contents": "Click to visit my Instagram!"}},{"text":"         [ GitHub ] ","color":"dark_gray","clickEvent":{"action":"open_url","value":"https://github.com/barraIhsan"},"hoverEvent": {"action": "show_text","contents": "Click to visit my Github!"}},{"text": "\n\n"}]

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
