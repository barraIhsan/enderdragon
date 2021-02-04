#---------------------------------------------------------
# This Datapack was made by Barra Ihsan
# Please do not copy or credit this as your own work!
# Youtube: youtube.com/barraIhsan
# Github: github.com/barraIhsan
#---------------------------------------------------------

execute as @a[tag=title_join] run title @s subtitle {"selector":"@s","color": "aqua"}
execute as @a[tag=title_join] at @s run playsound entity.player.levelup master @a[tag=title_join] ~ ~ ~ 1 0
tag @s remove title_join
