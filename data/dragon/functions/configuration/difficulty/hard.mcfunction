# Set Difficulty to Hard & Telling that Difficulty has changed
scoreboard players set difficulty setting 3
tellraw @a "Difficulty is now set to hard"
function dragon:configuration
playsound ui.button.click master @a ~ ~ ~ 0.3
