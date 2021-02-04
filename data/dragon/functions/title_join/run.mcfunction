#---------------------------------------------------------
# This Datapack was made by Barra Ihsan
# Please do not copy or credit this as your own work!
# Youtube: youtube.com/barraIhsan
# Github: github.com/barraIhsan
#---------------------------------------------------------

tag @s add title_join
title @a[tag=title_join] clear
title @a[tag=title_join] times 0 80 20
title @a[tag=title_join] title {"text": "W","color": "green","bold": true}
execute as @a[tag=title_join] at @s run playsound block.note_block.hat master @a[tag=title_join] ~ ~ ~ 0.1 2
schedule function dragon:title_join/1 4t
