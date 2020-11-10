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

# Add setting scoreboard & Reset them
scoreboard objectives add setting dummy
scoreboard players set dragonfireball setting 1
scoreboard players set glassbottle setting 1
scoreboard players set crystalleft setting 1
scoreboard players set unabletodrop setting 1
scoreboard players set difficulty setting 2
scoreboard players set enderman setting 1
scoreboard players set #enderman_tmp setting 1
scoreboard players set keepinventory setting 1
scoreboard players set kits setting 4
scoreboard players set #kits_tmp setting 4
scoreboard players set ultrasurvival setting 0

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

# Give effect for 5 second for regenerate health & update the health scoreboard
effect give @s minecraft:instant_damage 1 0 true
effect give @s minecraft:regeneration 4 2 true

# Give player iron kit
gamemode survival @s
clear @s #dragon:clear
replaceitem entity @s armor.head minecraft:iron_helmet{Unbreakable:1b} 1
replaceitem entity @s armor.chest minecraft:iron_chestplate{Unbreakable:1b} 1
replaceitem entity @s armor.legs minecraft:iron_leggings{Unbreakable:1b} 1
replaceitem entity @s armor.feet minecraft:iron_boots{Unbreakable:1b} 1
replaceitem entity @s weapon.offhand minecraft:shield{Unbreakable:1b} 1
replaceitem entity @s inventory.0 minecraft:arrow 16
replaceitem entity @s inventory.9 minecraft:carved_pumpkin{Unbreakable:1b}
replaceitem entity @s inventory.18 minecraft:crossbow{Unbreakable:1b}
replaceitem entity @s hotbar.0 minecraft:bow{Unbreakable:1b} 1
replaceitem entity @s hotbar.1 minecraft:iron_sword{Unbreakable:1b} 1
replaceitem entity @s hotbar.2 minecraft:iron_pickaxe{Unbreakable:1b} 1
replaceitem entity @s hotbar.3 minecraft:iron_axe{Unbreakable:1b} 1
replaceitem entity @s hotbar.4 minecraft:iron_shovel{Unbreakable:1b} 1
replaceitem entity @s hotbar.5 minecraft:dirt 16
replaceitem entity @s hotbar.6 minecraft:bread 16
replaceitem entity @s hotbar.7 minecraft:water_bucket 1
replaceitem entity @s hotbar.8 minecraft:glass_bottle 16

# Tell everyone that the setting have been reseted
tellraw @a ["",{"text": "A new player has join! Setting have been reseted"}]