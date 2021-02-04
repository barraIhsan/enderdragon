#---------------------------------------------------------
# This Datapack was made by Barra Ihsan
# Please do not copy or credit this as your own work!
# Youtube: youtube.com/barraIhsan
# Github: github.com/barraIhsan
#---------------------------------------------------------

tag @s add title_init
title @a[tag=title_init] clear
title @a[tag=title_init] times 0 40 20
title @a[tag=title_init] title {"text": "H","color": "green","bold": true}
execute as @a[tag=title_init] at @s run playsound block.note_block.hat master @a[tag=title_join] ~ ~ ~ 0.1 2
schedule function dragon:title_init/1 2t
