# Detect if the end crystal misplaced
execute store result score #PXPZ missedEC run kill @e[type=minecraft:end_crystal,x=2,z=2,dx=0]
execute store result score #NXPZ missedEC run kill @e[type=minecraft:end_crystal,x=-2,z=2,dx=0]
execute store result score #PXNZ missedEC run kill @e[type=minecraft:end_crystal,x=2,z=-2,dx=0]
execute store result score #NXNZ missedEC run kill @e[type=minecraft:end_crystal,x=-2,z=-2,dx=0]
execute run function dragon:endcrystal/drop_back
