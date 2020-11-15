# Clear all message
function dragon:clear_text

tellraw @s ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

tellraw @s ["",{"text":"              Ender Dragon Practice "},{"text":"/","color":"gray"},{"text":" Kits Settings              "}]

tellraw @s ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

tellraw @s ["",{"text": "\n"}]

# Change Difficulty Message
execute if score difficulty setting matches 0 run tellraw @s ["",{"text":"[ P ]","color":"green","clickEvent":{"action":"run_command","value":"/function dragon:setting/difficulty/easy"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to set the difficulty to Easy"}}},{"text":" Difficulty"}]
execute if score difficulty setting matches 1 run tellraw @s ["",{"text":"[ E ]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function dragon:setting/difficulty/normal"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to set the difficulty to Normal"}}},{"text":" Difficulty"}]
execute if score difficulty setting matches 2 run tellraw @s ["",{"text":"[ N ]","color":"gray","clickEvent":{"action":"run_command","value":"/function dragon:setting/difficulty/hard"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to set the difficulty to Hard"}}},{"text":" Difficulty"}]
execute if score difficulty setting matches 3 run tellraw @s ["",{"text":"[ H ]","color":"red","clickEvent":{"action":"run_command","value":"/function dragon:setting/difficulty/peaceful"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to set the difficulty to Peaceful"}}},{"text":" Difficulty"}]

# Enable / Disable Enderman Message
execute if score difficulty setting matches 0 run tellraw @s ["",{"text": "[ ❌ ]","color": "#820000","hoverEvent": {"action": "show_text","contents": {"text": "The difficulty is Peaceful.\nSo automatically enderman is off"}}},{"text":" Enderman"}]
execute if score enderman setting matches 0 unless score difficulty setting matches 0 run tellraw @s ["",{"text": "[ ❌ ]","color": "red","clickEvent": {"action": "run_command","value": "/function dragon:setting/enderman/enable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Enable enderman"}}},{"text":" Enderman"}]
execute if score enderman setting matches 1 unless score difficulty setting matches 0 run tellraw @s ["",{"text": "[ ✔ ]","color": "green","clickEvent": {"action": "run_command","value": "/function dragon:setting/enderman/disable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Disable enderman"}}},{"text":" Enderman"}]

# Enable / Disable Dragon Fireball Message
execute if score dragonfireball setting matches 0 run tellraw @s ["",{"text": "[ ❌ ]","color": "red","clickEvent": {"action": "run_command","value": "/function dragon:setting/dragonfireball/enable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Enable dragon fireball"}}},{"text":" Dragon Fireball"}]
execute if score dragonfireball setting matches 1 run tellraw @s ["",{"text": "[ ✔ ]","color": "green","clickEvent": {"action": "run_command","value": "/function dragon:setting/dragonfireball/disable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Disable dragon fireball"}}},{"text":" Dragon Fireball"}]

# Enable / Disable Keep Inventory Message
execute if score keepinventory setting matches 0 run tellraw @s ["",{"text": "[ ❌ ]","color": "red","clickEvent": {"action": "run_command","value": "/function dragon:setting/keepinventory/enable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Enable keep inventory"}}},{"text":" Keep Inventory"}]
execute if score keepinventory setting matches 1 run tellraw @s ["",{"text": "[ ✔ ]","color": "green","clickEvent": {"action": "run_command","value": "/function dragon:setting/keepinventory/disable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Disable keep inventory"}}},{"text":" Keep Inventory"}]

# Enable / Disable Ultra Survival Message
execute if score ultrasurvival setting matches 0 run tellraw @s ["",{"text": "[ ❌ ]","color": "red","clickEvent": {"action": "run_command","value": "/function dragon:setting/ultrasurvival/enable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Enable ultra survival"}}},{"text":" Ultra Survival"}]
execute if score ultrasurvival setting matches 1 run tellraw @s ["",{"text": "[ ✔ ]","color": "green","clickEvent": {"action": "run_command","value": "/function dragon:setting/ultrasurvival/disable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Disable ultra survival"}}},{"text":" Ultra Survival"}]

# Enable / Disable Glass Bottle Message
execute if score glassbottle setting matches 0 run tellraw @s ["",{"text": "[ ❌ ]","color": "red","clickEvent": {"action": "run_command","value": "/function dragon:setting/glassbottle/enable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Enable glass bottle"}}},{"text":" Glass Bottle"}]
execute if score glassbottle setting matches 1 run tellraw @s ["",{"text": "[ ✔ ]","color": "green","clickEvent": {"action": "run_command","value": "/function dragon:setting/glassbottle/disable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Disable glass bottle"}}},{"text":" Glass Bottle"}]

# Enable / Disable End Crystal Actionbar Message
execute if score actionbar setting matches 0 run tellraw @s ["",{"text": "[ ❌ ]","color": "red","clickEvent": {"action": "run_command","value": "/function dragon:setting/actionbar/enable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Enable end crystal actionbar"}}},{"text":" End Crystal Actionbar"}]
execute if score actionbar setting matches 1 run tellraw @s ["",{"text": "[ ✔ ]","color": "green","clickEvent": {"action": "run_command","value": "/function dragon:setting/actionbar/disable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Disable end crystal actionbar"}}},{"text":" End Crystal Actionbar"}]

# Enable / Disable Unable to drop item Message
execute if score unabletodrop setting matches 0 run tellraw @s ["",{"text": "[ ❌ ]","color": "red","clickEvent": {"action": "run_command","value": "/function dragon:setting/unabletodrop/enable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Enable unable to drop item"}}},{"text":" Unable to Drop Item"}]
execute if score unabletodrop setting matches 1 run tellraw @s ["",{"text": "[ ✔ ]","color": "green","clickEvent": {"action": "run_command","value": "/function dragon:setting/unabletodrop/disable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Disable unable to drop item"}}},{"text":" Unable to Drop Item"}]

# Enable / Disable Health Message
execute if score health setting matches 0 run tellraw @s ["",{"text": "[ ❌ ]","color": "red","clickEvent": {"action": "run_command","value": "/function dragon:setting/health/enable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Enable health"}}},{"text":" Health"}]
execute if score health setting matches 1 run tellraw @s ["",{"text": "[ ✔ ]","color": "green","clickEvent": {"action": "run_command","value": "/function dragon:setting/health/disable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Disable health"}}},{"text":" Health"}]

# Enable / Disable Kill Arrow Message
execute if score killarrow setting matches 0 run tellraw @s ["",{"text": "[ ❌ ]","color": "red","clickEvent": {"action": "run_command","value": "/function dragon:setting/killarrow/enable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Enable kill arrow when landing"}}},{"text":" Kill Arrow When Landing"}]
execute if score killarrow setting matches 1 run tellraw @s ["",{"text": "[ ✔ ]","color": "green","clickEvent": {"action": "run_command","value": "/function dragon:setting/killarrow/disable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Disable kill arrow when landing"}}},{"text":" Kill Arrow When Landing"}]

# Enable / Disable Friendly Fire Message
execute if score friendlyfire setting matches 0 run tellraw @s ["",{"text": "[ ❌ ]","color": "red","clickEvent": {"action": "run_command","value": "/function dragon:setting/friendlyfire/enable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Enable friendly fire"}}},{"text":" Friendly Fire"}]
execute if score friendlyfire setting matches 1 run tellraw @s ["",{"text": "[ ✔ ]","color": "green","clickEvent": {"action": "run_command","value": "/function dragon:setting/friendlyfire/disable"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to Disable friendly fire"}}},{"text":" Friendly Fire"}]

# Go to kits page
tellraw @s ["",{"text":"[ » ]","color":"#b5b5b5","clickEvent":{"action":"run_command","value":"/function dragon:setting_kits"},"hoverEvent": {"action": "show_text","contents": {"text": "Click to the Basic Kits Page"}}},{"text":" Basic Kits"}]

tellraw @s ["",{"text": "\n"}]

tellraw @s ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]
