# Set Difficulty to Easy & Telling that Difficulty has changed
scoreboard players set difficulty setting 1
tellraw @a "Difficulty is now set to easy"
function dragon:setting
playsound ui.button.click master @a ~ ~ ~ 0.3
