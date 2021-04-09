#---------------------------------------------------------
# This Datapack was made by Barra Ihsan
# Please do not copy or credit this as your own work!
# Youtube: youtube.com/barraIhsan
# Github: github.com/barraIhsan
#---------------------------------------------------------

tag @s add drg_title
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["drg_player"]}
tp @e[type=area_effect_cloud,tag=drg_player,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute at @e[type=area_effect_cloud,tag=drg_player,limit=1,sort=nearest] as @p[tag=drg_title,distance=..1,sort=nearest] run title @s clear
execute at @e[type=area_effect_cloud,tag=drg_player,limit=1,sort=nearest] as @p[tag=drg_title,distance=..1,sort=nearest] run title @s times 0 40 20
execute at @e[type=area_effect_cloud,tag=drg_player,limit=1,sort=nearest] as @p[tag=drg_title,distance=..1,sort=nearest] run title @s title {"text": "H","color": "green","bold": true}
execute at @e[type=area_effect_cloud,tag=drg_player,limit=1,sort=nearest] as @p[tag=drg_title,distance=..1,sort=nearest] run playsound block.note_block.hat master @s ~ ~ ~ 0.1 2
schedule function dragon:title_init/1 4t
