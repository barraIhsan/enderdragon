# Enable Ultra Survival & Telling that Ultra Survival has been enabled
scoreboard players set ultrasurvival drg_global 1
tellraw @a "Ultra Survival is now enabled (Natural Regeneration Off)"
function dragon:setting
playsound ui.button.click master @a ~ ~ ~ 0.3
