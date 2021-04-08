#---------------------------------------------------------
# This Datapack was made by Barra Ihsan
# Please do not copy or credit this as your own work!
# Youtube: youtube.com/barraIhsan
# Github: github.com/barraIhsan
#---------------------------------------------------------

execute at @e[type=area_effect_cloud,tag=dragon_player,limit=1,sort=nearest] as @p[tag=title,distance=..1,sort=nearest] run title @s title {"text": "Welcome","color": "green","bold": true}
execute at @e[type=area_effect_cloud,tag=dragon_player,limit=1,sort=nearest] as @p[tag=title,distance=..1,sort=nearest] run playsound block.note_block.hat master @s ~ ~ ~ 0.1 2
execute at @e[type=area_effect_cloud,tag=dragon_player,limit=1,sort=nearest] as @p[tag=title,distance=..1,sort=nearest] run tp @s @s
schedule function dragon:title_join/7 4t
