# Enable Push Other People & Telling that Push Other People has been enabled
scoreboard players set pushpeople setting 1
tellraw @a "Push Other People is now enabled"
function dragon:setting
playsound ui.button.click master @a ~ ~ ~ 0.3
