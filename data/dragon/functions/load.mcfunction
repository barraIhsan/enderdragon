#---------------------------------------------------------
# This Datapack was made by Barra Ihsan
# Please do not copy or credit this as your own work!
# Youtube: youtube.com/barraIhsan
# Github: github.com/barraIhsan
#---------------------------------------------------------

# Forceload the area, locate where the end portal, and remove the forceload
execute in minecraft:the_end run forceload add 0 0
execute in minecraft:the_end positioned 0 255 0 unless entity @e[type=minecraft:area_effect_cloud,tag=endPortalHeightMarker] run function dragon:endcrystal/get_end_portal_height
execute in minecraft:the_end run forceload remove 0 0

# Add drg_global
scoreboard objectives add drg_global
