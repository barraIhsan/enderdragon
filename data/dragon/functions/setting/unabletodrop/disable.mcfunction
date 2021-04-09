# Disable Unable to drop & Telling that Unable to drop has been disabled
scoreboard players set unabletodrop drg_global 0
tellraw @a "Unable to drop is now disabled"
function dragon:setting
playsound ui.button.click master @a ~ ~ ~ 0.3
