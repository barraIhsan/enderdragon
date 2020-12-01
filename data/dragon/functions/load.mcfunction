#---------------------------------------------------------
# This Datapack was made by Barra Ihsan
# Please do not copy or credit this as your own work!
# Youtube: www.youtube.com/c/BarraIhsan
# Github: www.github.com/barraIhsan
#---------------------------------------------------------

# Forceload the area, locate where the end portal, and remove the forceload
execute in minecraft:the_end run forceload add 0 0
execute in minecraft:the_end positioned 0 256 0 unless entity @e[type=minecraft:area_effect_cloud,tag=endPortalHeightMarker,distance=0..] run function dragon:endcrystal/get_end_portal_height
execute in minecraft:the_end run forceload remove 0 0

# Run function update
function dragon:update
