#---------------------------------------------------------
# This Datapack was made by Barra Ihsan
# Please do not copy or credit this as your own work!
# Youtube: youtube.com/barraIhsan
# Github: github.com/barraIhsan
#---------------------------------------------------------

execute at @e[type=area_effect_cloud,tag=drg_player,limit=1,sort=nearest] as @p[tag=drg_title,distance=..1,sort=nearest] run title @s subtitle {"selector":"@s","color": "aqua"}
execute at @e[type=area_effect_cloud,tag=drg_player,limit=1,sort=nearest] as @p[tag=drg_title,distance=..1,sort=nearest] run playsound entity.player.levelup master @s ~ ~ ~ 1 0
execute at @e[type=area_effect_cloud,tag=drg_player,limit=1,sort=nearest] as @p[tag=drg_title,distance=..1,sort=nearest] run kill @e[type=area_effect_cloud,tag=drg_player,limit=1,sort=nearest]
execute at @e[type=area_effect_cloud,tag=drg_player,limit=1,sort=nearest] as @p[tag=drg_title,distance=..1,sort=nearest] run tag @s remove drg_title
