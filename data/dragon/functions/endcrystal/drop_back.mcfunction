execute if score #PXPZ missedEC matches 1.. run summon minecraft:item 2.5 ~ 2.5 {Item:{id:"minecraft:end_crystal",Count:1b}}
execute if score #NXPZ missedEC matches 1.. run summon minecraft:item -1.5 ~ 2.5 {Item:{id:"minecraft:end_crystal",Count:1b}}
execute if score #PXNZ missedEC matches 1.. run summon minecraft:item 2.5 ~ -1.5 {Item:{id:"minecraft:end_crystal",Count:1b}}
execute if score #NXNZ missedEC matches 1.. run summon minecraft:item -1.5 ~ -1.5 {Item:{id:"minecraft:end_crystal",Count:1b}}
execute if score #MNXMZ missedEC matches 1.. run summon minecraft:item -1.5 ~ 2.5 {Item:{id:"minecraft:end_crystal",Count:1b}}
execute if score #MXMNZ missedEC matches 1.. run summon minecraft:item 2.5 ~ -1.5 {Item:{id:"minecraft:end_crystal",Count:1b}}
execute if score #PXPZ missedEC matches 1.. run scoreboard players remove #PXPZ missedEC 1
execute if score #NXPZ missedEC matches 1.. run scoreboard players remove #NXPZ missedEC 1
execute if score #PXNZ missedEC matches 1.. run scoreboard players remove #PXNZ missedEC 1
execute if score #NXNZ missedEC matches 1.. run scoreboard players remove #NXNZ missedEC 1
execute if score #MNXMZ missedEC matches 1.. run scoreboard players remove #MNXMZ missedEC 1
execute if score #MXMNZ missedEC matches 1.. run scoreboard players remove #MXMNZ missedEC 1
execute if score #NXNZ missedEC matches 1.. run function dragon:endcrystal/drop_back
execute if score #NXPZ missedEC matches 1.. run function dragon:endcrystal/drop_back
execute if score #PXNZ missedEC matches 1.. run function dragon:endcrystal/drop_back
execute if score #PXPZ missedEC matches 1.. run function dragon:endcrystal/drop_back
execute if score #MXMNZ missedEC matches 1.. run function dragon:endcrystal/drop_back
execute if score #MNXMZ missedEC matches 1.. run function dragon:endcrystal/drop_back