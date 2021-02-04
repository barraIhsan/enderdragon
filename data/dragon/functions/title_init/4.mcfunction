#---------------------------------------------------------
# This Datapack was made by Barra Ihsan
# Please do not copy or credit this as your own work!
# Youtube: youtube.com/barraIhsan
# Github: github.com/barraIhsan
#---------------------------------------------------------

title @a[tag=title_init] title {"text": "Hello","color": "green","bold": true}
execute as @a[tag=title_init] at @s run playsound block.note_block.hat master @a[tag=title_join] ~ ~ ~ 0.1 2
schedule function dragon:title_init/5 2t
