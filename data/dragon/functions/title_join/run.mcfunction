#---------------------------------------------------------
# This Datapack was made by Barra Ihsan
# Please do not copy or credit this as your own work!
# Youtube: youtube.com/barraIhsan
# Github: github.com/barraIhsan
#---------------------------------------------------------

tag @s add title
kill @e[type=area_effect_cloud,tag=dragon_player]
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["dragon_player"]}
execute at @e[type=area_effect_cloud,tag=dragon_player,limit=1,sort=nearest] as @p[tag=title,distance=..1,sort=nearest] run title @s clear
execute at @e[type=area_effect_cloud,tag=dragon_player,limit=1,sort=nearest] as @p[tag=title,distance=..1,sort=nearest] run title @s times 0 80 20
execute at @e[type=area_effect_cloud,tag=dragon_player,limit=1,sort=nearest] as @p[tag=title,distance=..1,sort=nearest] run title @s title {"text": "W","color": "green","bold": true}
execute at @e[type=area_effect_cloud,tag=dragon_player,limit=1,sort=nearest] as @p[tag=title,distance=..1,sort=nearest] run playsound block.note_block.hat master @s ~ ~ ~ 0.1 2
schedule function dragon:title_join/1 4t
