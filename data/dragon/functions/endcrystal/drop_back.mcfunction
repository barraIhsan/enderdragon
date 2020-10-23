# Give them end crystal if misplaced an end crystal
execute if score #PXPZ missedEC matches 1.. run summon minecraft:item 2.5 66 2.5 {Item:{id:"minecraft:end_crystal",Count:1b}}
execute if score #NXPZ missedEC matches 1.. run summon minecraft:item -1.5 66 2.5 {Item:{id:"minecraft:end_crystal",Count:1b}}
execute if score #PXNZ missedEC matches 1.. run summon minecraft:item 2.5 66 -1.5 {Item:{id:"minecraft:end_crystal",Count:1b}}
execute if score #NXNZ missedEC matches 1.. run summon minecraft:item -1.5 66 -1.5 {Item:{id:"minecraft:end_crystal",Count:1b}}
scoreboard players remove #PXPZ missedEC 1
scoreboard players remove #NXPZ missedEC 1
scoreboard players remove #PXNZ missedEC 1
scoreboard players remove #NXNZ missedEC 1
execute if score #NXNZ missedEC matches 1.. if score #NXPZ missedEC matches 1.. if score #PXNZ missedEC matches 1.. if score #PXPZ missedEC matches 1.. run function dragon:endcrystal/drop_back