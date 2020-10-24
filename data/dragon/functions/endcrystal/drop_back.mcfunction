# Give them end crystal if misplaced an end crystal
execute in minecraft:the_end positioned 0 256 0 at @e[type=minecraft:area_effect_cloud,tag=endPortalHeightMarker,distance=0..] if score #PXPZ missedEC matches 1.. run summon minecraft:item 2.5 ~ 2.5 {Item:{id:"minecraft:end_crystal",Count:1b}}
execute in minecraft:the_end positioned 0 256 0 at @e[type=minecraft:area_effect_cloud,tag=endPortalHeightMarker,distance=0..] if score #NXPZ missedEC matches 1.. run summon minecraft:item -1.5 ~ 2.5 {Item:{id:"minecraft:end_crystal",Count:1b}}
execute in minecraft:the_end positioned 0 256 0 at @e[type=minecraft:area_effect_cloud,tag=endPortalHeightMarker,distance=0..] if score #PXNZ missedEC matches 1.. run summon minecraft:item 2.5 ~ -1.5 {Item:{id:"minecraft:end_crystal",Count:1b}}
execute in minecraft:the_end positioned 0 256 0 at @e[type=minecraft:area_effect_cloud,tag=endPortalHeightMarker,distance=0..] if score #NXNZ missedEC matches 1.. run summon minecraft:item -1.5 ~ -1.5 {Item:{id:"minecraft:end_crystal",Count:1b}}
scoreboard players remove #PXPZ missedEC 1
scoreboard players remove #NXPZ missedEC 1
scoreboard players remove #PXNZ missedEC 1
scoreboard players remove #NXNZ missedEC 1
execute in minecraft:the_end positioned 0 256 0 at @e[type=minecraft:area_effect_cloud,tag=endPortalHeightMarker,distance=0..] if score #NXNZ missedEC matches 1.. if score #NXPZ missedEC matches 1.. if score #PXNZ missedEC matches 1.. if score #PXPZ missedEC matches 1.. run function dragon:endcrystal/drop_back