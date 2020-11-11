# Clear all message
function dragon:clear_text

tellraw @s ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

tellraw @s ["",{"text":"                Ender Dragon Practice "},{"text":"/","color":"gray"},{"text":" Settings                  "}]

tellraw @s ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

tellraw @s ["",{"text": "\n\n"}]

# Change Difficulty Message
execute if score difficulty setting matches 0 run tellraw @s ["",{"text":"[ Peaceful ]","color":"green","clickEvent":{"action":"run_command","value":"/function dragon:configuration/difficulty/easy"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to set the difficulty to Easy"}}},{"text":" Difficulty"}]
execute if score difficulty setting matches 1 run tellraw @s ["",{"text":"[ Easy ]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function dragon:configuration/difficulty/normal"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to set the difficulty to Normal"}}},{"text":" Difficulty"}]
execute if score difficulty setting matches 2 run tellraw @s ["",{"text":"[ Normal ]","color":"gray","clickEvent":{"action":"run_command","value":"/function dragon:configuration/difficulty/hard"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to set the difficulty to Hard"}}},{"text":" Difficulty"}]
execute if score difficulty setting matches 3 run tellraw @s ["",{"text":"[ Hard ]","color":"red","clickEvent":{"action":"run_command","value":"/function dragon:configuration/difficulty/peaceful"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to set the difficulty to Peaceful"}}},{"text":" Difficulty"}]

# Enable / Disable Enderman Message
execute if score difficulty setting matches 0 run tellraw @s ["",{"text": "[ ❌ ]","color": "#820000","hoverEvent": {"action": "show_text","contents": {"text": "The difficulty is Peaceful.\nSo automatically enderman is off"}}},{"text":" Enderman"}]
execute if score enderman setting matches 0 unless score difficulty setting matches 0 run tellraw @s ["",{"text": "[ ❌ ]","color": "red","clickEvent": {"action": "run_command","value": "/function dragon:configuration/enderman/enable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Enable enderman"}}},{"text":" Enderman"}]
execute if score enderman setting matches 1 unless score difficulty setting matches 0 run tellraw @s ["",{"text": "[ ✔ ]","color": "green","clickEvent": {"action": "run_command","value": "/function dragon:configuration/enderman/disable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Disable enderman"}}},{"text":" Enderman"}]

# Enable / Disable Dragon Fireball Message
execute if score dragonfireball setting matches 0 run tellraw @s ["",{"text": "[ ❌ ]","color": "red","clickEvent": {"action": "run_command","value": "/function dragon:configuration/dragonfireball/enable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Enable dragon fireball"}}},{"text":" Dragon Fireball"}]
execute if score dragonfireball setting matches 1 run tellraw @s ["",{"text": "[ ✔ ]","color": "green","clickEvent": {"action": "run_command","value": "/function dragon:configuration/dragonfireball/disable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Disable dragon fireball"}}},{"text":" Dragon Fireball"}]

# Enable / Disable Keep Inventory Message
execute if score keepinventory setting matches 0 run tellraw @s ["",{"text": "[ ❌ ]","color": "red","clickEvent": {"action": "run_command","value": "/function dragon:configuration/keepinventory/enable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Enable keep inventory"}}},{"text":" Keep Inventory"}]
execute if score keepinventory setting matches 1 run tellraw @s ["",{"text": "[ ✔ ]","color": "green","clickEvent": {"action": "run_command","value": "/function dragon:configuration/keepinventory/disable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Disable keep inventory"}}},{"text":" Keep Inventory"}]

# Enable / Disable Ultra Survival Message
execute if score ultrasurvival setting matches 0 run tellraw @s ["",{"text": "[ ❌ ]","color": "red","clickEvent": {"action": "run_command","value": "/function dragon:configuration/ultrasurvival/enable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Enable ultra survival"}}},{"text":" Ultra Survival"}]
execute if score ultrasurvival setting matches 1 run tellraw @s ["",{"text": "[ ✔ ]","color": "green","clickEvent": {"action": "run_command","value": "/function dragon:configuration/ultrasurvival/disable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Disable ultra survival"}}},{"text":" Ultra Survival"}]

# Enable / Disable Glass Bottle Message
execute if score glassbottle setting matches 0 run tellraw @s ["",{"text": "[ ❌ ]","color": "red","clickEvent": {"action": "run_command","value": "/function dragon:configuration/glassbottle/enable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Enable glass bottle"}}},{"text":" Glass Bottle"}]
execute if score glassbottle setting matches 1 run tellraw @s ["",{"text": "[ ✔ ]","color": "green","clickEvent": {"action": "run_command","value": "/function dragon:configuration/glassbottle/disable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Disable glass bottle"}}},{"text":" Glass Bottle"}]

# Enable / Disable End Crystal Actionbar Message
execute if score crystalleft setting matches 0 run tellraw @s ["",{"text": "[ ❌ ]","color": "red","clickEvent": {"action": "run_command","value": "/function dragon:configuration/crystalleft/enable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Enable end crystal actionbar"}}},{"text":" End Crystal Actionbar"}]
execute if score crystalleft setting matches 1 run tellraw @s ["",{"text": "[ ✔ ]","color": "green","clickEvent": {"action": "run_command","value": "/function dragon:configuration/crystalleft/disable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Disable end crystal actionbar"}}},{"text":" End Crystal Actionbar"}]

# Enable / Disable Unable to drop item Message
execute if score unabletodrop setting matches 0 run tellraw @s ["",{"text": "[ ❌ ]","color": "red","clickEvent": {"action": "run_command","value": "/function dragon:configuration/unabletodrop/enable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Enable unable to drop item"}}},{"text":" Unable to Drop Item"}]
execute if score unabletodrop setting matches 1 run tellraw @s ["",{"text": "[ ✔ ]","color": "green","clickEvent": {"action": "run_command","value": "/function dragon:configuration/unabletodrop/disable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Disable unable to drop item"}}},{"text":" Unable to Drop Item"}]

# Enable / Disable Health Message
execute if score health setting matches 0 run tellraw @s ["",{"text": "[ ❌ ]","color": "red","clickEvent": {"action": "run_command","value": "/function dragon:configuration/health/enable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Enable health"}}},{"text":" Health"}]
execute if score health setting matches 1 run tellraw @s ["",{"text": "[ ✔ ]","color": "green","clickEvent": {"action": "run_command","value": "/function dragon:configuration/health/disable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Disable health"}}},{"text":" Health"}]

# Change Kits Message
execute if score kits setting matches 0 run tellraw @s ["",{"text":"[ Woother ]","color":"#855E42","clickEvent":{"action":"run_command","value":"/function dragon:configuration/kits/stomail"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to set the kits to Stomail"}}},{"text":" Kits"}]
execute if score kits setting matches 1 run tellraw @s ["",{"text":"[ Stomail ]","color":"#6D7876","clickEvent":{"action":"run_command","value":"/function dragon:configuration/kits/iron"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to set the kits to Iron"}}},{"text":" Kits"}]
execute if score kits setting matches 2 run tellraw @s ["",{"text":"[ Iron ]","color":"#ACAFAF","clickEvent":{"action":"run_command","value":"/function dragon:configuration/kits/diamond"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to set the kits to Diamond"}}},{"text":" Kits"}]
execute if score kits setting matches 3 run tellraw @s ["",{"text":"[ Diamond ]","color":"#319BDD","clickEvent":{"action":"run_command","value":"/function dragon:configuration/kits/netherite"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to set the kits to Netherite"}}},{"text":" Kits"}]
execute if score kits setting matches 4 run tellraw @s ["",{"text":"[ Netherite ]","color":"#383335","clickEvent":{"action":"run_command","value":"/function dragon:configuration/kits/woother"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to set the kits to Woother"}}},{"text":" Kits"}]

tellraw @s ["",{"text": "\n\n"}]

tellraw @s ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]
