# Set Difficulty to Normal & Telling that Difficulty has changed
scoreboard players set difficulty setting 2
tellraw @a "Difficulty is now set to normal"
function dragon:configuration
execute at @s run playsound ui.button.click master @a ~ ~ ~ 0.3
