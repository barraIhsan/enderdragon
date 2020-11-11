# Enable Glass Bottle & Telling that Glass Bottle has been Enabled
scoreboard players set glassbottle setting 1
tellraw @a "Glass Bottle is now enabled"
function dragon:configuration
playsound ui.button.click master @a ~ ~ ~ 0.3
