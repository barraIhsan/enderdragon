# Set Difficulty to Peaceful & Telling that Difficulty has changed
scoreboard players set difficulty setting 0
tellraw @a "Difficulty is now set to peaceful"
function dragon:configuration
execute at @s run playsound ui.button.click master @a ~ ~ ~ 0.3
