# Detect if the end crystal misplaced
execute store result score #PXPZ endcrystal run kill @e[type=minecraft:end_crystal,x=2,z=2,dx=0]
execute store result score #NXPZ endcrystal run kill @e[type=minecraft:end_crystal,x=-2,z=2,dx=0]
execute store result score #PXNZ endcrystal run kill @e[type=minecraft:end_crystal,x=2,z=-2,dx=0]
execute store result score #NXNZ endcrystal run kill @e[type=minecraft:end_crystal,x=-2,z=-2,dx=0]
execute store result score #MXMNZ endcrystal run kill @e[type=minecraft:end_crystal,x=1,z=-1,dx=0]
execute store result score #MNXMZ endcrystal run kill @e[type=minecraft:end_crystal,x=-1,z=1,dx=0]
function dragon:endcrystal/drop_back
