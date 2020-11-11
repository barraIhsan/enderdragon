# Enable Unable to drop & Telling that Unable to drop has been enabled
scoreboard players set unabletodrop setting 1
tellraw @a "Unable to drop is now enabled"
function dragon:configuration
playsound ui.button.click master @a ~ ~ ~ 0.3
