#---------------------------------------------------------
# This Datapack was made by Barra Ihsan
# Please do not copy or credit this as your own work!
# Youtube: youtube.com/barraIhsan
# Github: github.com/barraIhsan
#---------------------------------------------------------

# Welcome Message

tellraw @s ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]
tellraw @s ["",{"text":"               Ender Dragon Practice "},{"text":"/","color":"gray"},{"text":" Statistics                  "}]
tellraw @s ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

tellraw @s ["",{"text": "[ ","color": "green"},{"score": {"objective": "drg_kill","name": "@s"},"color": "green"},{"text": " ] ","color": "green"},{"text": "Kill Dragon"},{"text": "\n"},{"text": "[ ","color": "red"},{"score": {"objective": "drg_killed","name": "@s"},"color": "red"},{"text": " ] ","color": "red"},{"text": "Killed By Dragon"},{"text": "\n"},{"text": "[ ","color": "#79553A"},{"score": {"objective": "drg_use_dirt","name": "@s"},"color": "#79553A"},{"text": " ] ","color": "#79553A"},{"text": "Dirt Used"},{"text": "\n"},{"text": "[ ","color": "#BC8927"},{"score": {"objective": "drg_use_bread","name": "@s"},"color": "#BC8927"},{"text": " ] ","color": "#BC8927"},{"text": "Bread Used"},{"text": "\n"},{"text": "[ ","color": "#444444"},{"score": {"objective": "drg_use_arrow","name": "@s"},"color": "#444444"},{"text": " ] ","color": "#444444"},{"text": "Arrow Used"},{"text": "\n"},{"text": "[ ","color": "#C6C6C6"},{"score": {"objective": "drg_use_glass","name": "@s"},"color": "#C6C6C6"},{"text": " ] ","color": "#C6C6C6"},{"text": "Glass Bottle Used"}]

tellraw @s ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]
tellraw @s ["",{"text":"                           [ Open Setting ]","color":"green","clickEvent":{"action":"run_command","value":"/function dragon:setting"},"hoverEvent": {"action": "show_text","contents": "Requires OP"}}]
tellraw @s ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

tellraw @s ["",{"text": "\n"},{"text":"                         Made By : "},{"text":"Barra Ihsan","color":"green"},{"text":"\n\n"},{"text":"          [ Twitter ] ","color":"aqua","clickEvent":{"action":"open_url","value":"https://twitter.com/barra_ihsan"},"hoverEvent": {"action": "show_text","contents": "Click to visit my Twitter!"}},{"text":"        [ YouTube ] ","color":"#FFC0CB","clickEvent":{"action":"open_url","value":"https://youtube.com/barraIhsan"},"hoverEvent": {"action": "show_text","contents": "Click to visit my YouTube!"}},{"text":"         [ GitHub ] ","color":"dark_gray","clickEvent":{"action":"open_url","value":"https://github.com/barraIhsan"},"hoverEvent": {"action": "show_text","contents": "Click to visit my Github!"}},{"text": "\n"}]

tellraw @s ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

scoreboard players set @s drg_join 0

# Update
execute as @a[tag=!updated] run function dragon:update/obj
execute unless score version drg_global matches -2147483648..2147483647 run function dragon:update/1.5
