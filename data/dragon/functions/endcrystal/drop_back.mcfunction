execute if score #PXPZ endcrystal matches 1.. run summon minecraft:item 2.5 ~ 2.5 {Item:{id:"minecraft:end_crystal",Count:1b}}
execute if score #NXPZ endcrystal matches 1.. run summon minecraft:item -1.5 ~ 2.5 {Item:{id:"minecraft:end_crystal",Count:1b}}
execute if score #PXNZ endcrystal matches 1.. run summon minecraft:item 2.5 ~ -1.5 {Item:{id:"minecraft:end_crystal",Count:1b}}
execute if score #NXNZ endcrystal matches 1.. run summon minecraft:item -1.5 ~ -1.5 {Item:{id:"minecraft:end_crystal",Count:1b}}
execute if score #MNXMZ endcrystal matches 1.. run summon minecraft:item -1.5 ~ 2.5 {Item:{id:"minecraft:end_crystal",Count:1b}}
execute if score #MXMNZ endcrystal matches 1.. run summon minecraft:item 2.5 ~ -1.5 {Item:{id:"minecraft:end_crystal",Count:1b}}
execute if score #PXPZ endcrystal matches 1.. run scoreboard players remove #PXPZ endcrystal 1
execute if score #NXPZ endcrystal matches 1.. run scoreboard players remove #NXPZ endcrystal 1
execute if score #PXNZ endcrystal matches 1.. run scoreboard players remove #PXNZ endcrystal 1
execute if score #NXNZ endcrystal matches 1.. run scoreboard players remove #NXNZ endcrystal 1
execute if score #MNXMZ endcrystal matches 1.. run scoreboard players remove #MNXMZ endcrystal 1
execute if score #MXMNZ endcrystal matches 1.. run scoreboard players remove #MXMNZ endcrystal 1
execute if score #NXNZ endcrystal matches 1.. run function dragon:endcrystal/drop_back
execute if score #NXPZ endcrystal matches 1.. run function dragon:endcrystal/drop_back
execute if score #PXNZ endcrystal matches 1.. run function dragon:endcrystal/drop_back
execute if score #PXPZ endcrystal matches 1.. run function dragon:endcrystal/drop_back
execute if score #MXMNZ endcrystal matches 1.. run function dragon:endcrystal/drop_back
execute if score #MNXMZ endcrystal matches 1.. run function dragon:endcrystal/drop_back