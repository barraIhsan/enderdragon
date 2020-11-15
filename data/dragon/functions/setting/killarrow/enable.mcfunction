# Enable Kill Arrow & Telling that Kill Arrow has been enabled
scoreboard players set killarrow setting 1
tellraw @a "Kill Arrow is now enabled"
function dragon:setting
playsound ui.button.click master @a ~ ~ ~ 0.3
