# Detect if the end crystal misplaced
execute store result score #PXPZ drg_global run kill @e[type=minecraft:end_crystal,x=2,z=2,dx=0]
execute store result score #NXPZ drg_global run kill @e[type=minecraft:end_crystal,x=-2,z=2,dx=0]
execute store result score #PXNZ drg_global run kill @e[type=minecraft:end_crystal,x=2,z=-2,dx=0]
execute store result score #NXNZ drg_global run kill @e[type=minecraft:end_crystal,x=-2,z=-2,dx=0]
execute store result score #MXMNZ drg_global run kill @e[type=minecraft:end_crystal,x=1,z=-1,dx=0]
execute store result score #MNXMZ drg_global run kill @e[type=minecraft:end_crystal,x=-1,z=1,dx=0]
function dragon:endcrystal/drop_back
