# Disable Ultra Survival & Telling that Ultra Survival has been disabled
scoreboard players set ultrasurvival drg_global 0
tellraw @a "Ultra Survival is now disabled (Natural Regeneration On)"
function dragon:setting
playsound ui.button.click master @a ~ ~ ~ 0.3
