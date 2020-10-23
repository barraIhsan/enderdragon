# Forceload the area, locate where the end portal, and remove the forceload
execute in minecraft:the_end run forceload add 0 0
execute in minecraft:the_end positioned 0 128 0 unless entity @e[type=minecraft:area_effect_cloud,tag=endPortalHeightMarker,distance=0..] run function dragon:endcrystal/get_end_portal_height
execute in minecraft:the_end run forceload remove 0 0
