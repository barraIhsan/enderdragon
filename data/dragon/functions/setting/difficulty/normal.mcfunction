# Set Difficulty to Normal & Telling that Difficulty has changed
scoreboard players set difficulty drg_global 2
tellraw @a "Difficulty is now set to normal"
function dragon:setting
playsound ui.button.click master @a ~ ~ ~ 0.3
