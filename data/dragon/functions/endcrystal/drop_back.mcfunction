execute if score #PXPZ drg_global matches 1.. run summon minecraft:item 2.5 ~ 2.5 {Item:{id:"minecraft:end_crystal",Count:1b}}
execute if score #NXPZ drg_global matches 1.. run summon minecraft:item -1.5 ~ 2.5 {Item:{id:"minecraft:end_crystal",Count:1b}}
execute if score #PXNZ drg_global matches 1.. run summon minecraft:item 2.5 ~ -1.5 {Item:{id:"minecraft:end_crystal",Count:1b}}
execute if score #NXNZ drg_global matches 1.. run summon minecraft:item -1.5 ~ -1.5 {Item:{id:"minecraft:end_crystal",Count:1b}}
execute if score #MNXMZ drg_global matches 1.. run summon minecraft:item -1.5 ~ 2.5 {Item:{id:"minecraft:end_crystal",Count:1b}}
execute if score #MXMNZ drg_global matches 1.. run summon minecraft:item 2.5 ~ -1.5 {Item:{id:"minecraft:end_crystal",Count:1b}}
execute if score #PXPZ drg_global matches 1.. run scoreboard players remove #PXPZ drg_global 1
execute if score #NXPZ drg_global matches 1.. run scoreboard players remove #NXPZ drg_global 1
execute if score #PXNZ drg_global matches 1.. run scoreboard players remove #PXNZ drg_global 1
execute if score #NXNZ drg_global matches 1.. run scoreboard players remove #NXNZ drg_global 1
execute if score #MNXMZ drg_global matches 1.. run scoreboard players remove #MNXMZ drg_global 1
execute if score #MXMNZ drg_global matches 1.. run scoreboard players remove #MXMNZ drg_global 1
execute if score #NXNZ drg_global matches 1.. run function dragon:endcrystal/drop_back
execute if score #NXPZ drg_global matches 1.. run function dragon:endcrystal/drop_back
execute if score #PXNZ drg_global matches 1.. run function dragon:endcrystal/drop_back
execute if score #PXPZ drg_global matches 1.. run function dragon:endcrystal/drop_back
execute if score #MXMNZ drg_global matches 1.. run function dragon:endcrystal/drop_back
execute if score #MNXMZ drg_global matches 1.. run function dragon:endcrystal/drop_back
