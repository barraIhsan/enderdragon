# Disable Push Other People & Telling that Push Other People has been disabled
scoreboard players set pushpeople setting 0
tellraw @a "Push Other People is now disabled"
function dragon:setting
playsound ui.button.click master @a ~ ~ ~ 0.3
