# Set Difficulty to Peaceful & Telling that Difficulty has changed
scoreboard players set difficulty drg_global 0
tellraw @a "Difficulty is now set to peaceful"
function dragon:setting
playsound ui.button.click master @a ~ ~ ~ 0.3
