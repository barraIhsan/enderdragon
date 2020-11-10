# Clear all message
function dragon:clear_text

tellraw @p ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

tellraw @p ["",{"text":"                Ender Dragon Practice "},{"text":"/","color":"gray"},{"text":" Settings                  "}]

tellraw @p ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

# Change Difficulty Message
execute if score difficulty setting matches 0 run tellraw @s ["",{"text": "[ "},{"text":"Peaceful","color":"green","clickEvent":{"action":"run_command","value":"/function dragon:configuration/difficulty/easy"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to set the difficulty to Easy"}}},{"text": " ]"},{"text":" Difficulty"}]
execute if score difficulty setting matches 1 run tellraw @s ["",{"text": "[ "},{"text":"Easy","color":"dark_green","clickEvent":{"action":"run_command","value":"/function dragon:configuration/difficulty/normal"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to set the difficulty to Normal"}}},{"text": " ]"},{"text":" Difficulty"}]
execute if score difficulty setting matches 2 run tellraw @s ["",{"text": "[ "},{"text":"Normal","color":"gray","clickEvent":{"action":"run_command","value":"/function dragon:configuration/difficulty/hard"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to set the difficulty to Hard"}}},{"text": " ]"},{"text":" Difficulty"}]
execute if score difficulty setting matches 3 run tellraw @s ["",{"text": "[ "},{"text":"Hard","color":"red","clickEvent":{"action":"run_command","value":"/function dragon:configuration/difficulty/peaceful"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to set the difficulty to Peaceful"}}},{"text": " ]"},{"text":" Difficulty"}]

# Enable / Disable Enderman Message
execute if score enderman setting matches 0 run tellraw @s ["",{"text": "[ ❌ ]","color": "red","clickEvent": {"action": "run_command","value": "/function dragon:configuration/enderman/enable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Enable enderman"}}},{"text":" Enderman"}]
execute if score enderman setting matches 1 run tellraw @s ["",{"text": "[ ✔ ]","color": "green","clickEvent": {"action": "run_command","value": "/function dragon:configuration/enderman/disable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Disable enderman"}}},{"text":" Enderman"}]

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

# Change Kits Message
execute if score kits setting matches 0 run tellraw @s ["",{"text": "[ "},{"text":"Woother","color":"#855E42","clickEvent":{"action":"run_command","value":"/function dragon:configuration/kits/stomail"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to set the kits to Stomail"}}},{"text": " ]"},{"text":" Kits"}]
execute if score kits setting matches 1 run tellraw @s ["",{"text": "[ "},{"text":"Stomail","color":"#6D7876","clickEvent":{"action":"run_command","value":"/function dragon:configuration/kits/iron"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to set the kits to Iron"}}},{"text": " ]"},{"text":" Kits"}]
execute if score kits setting matches 2 run tellraw @s ["",{"text": "[ "},{"text":"Iron","color":"#ACAFAF","clickEvent":{"action":"run_command","value":"/function dragon:configuration/kits/diamond"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to set the kits to Diamond"}}},{"text": " ]"},{"text":" Kits"}]
execute if score kits setting matches 3 run tellraw @s ["",{"text": "[ "},{"text":"Diamond","color":"#319BDD","clickEvent":{"action":"run_command","value":"/function dragon:configuration/kits/netherite"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to set the kits to Netherite"}}},{"text": " ]"},{"text":" Kits"}]
execute if score kits setting matches 4 run tellraw @s ["",{"text": "[ "},{"text":"Netherite","color":"#383335","clickEvent":{"action":"run_command","value":"/function dragon:configuration/kits/woother"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to set the kits to Woother"}}},{"text": " ]"},{"text":" Kits"}]

tellraw @p ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]
