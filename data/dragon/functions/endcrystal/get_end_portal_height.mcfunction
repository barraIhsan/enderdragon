# Get the end portal height
execute if block ~ ~ ~ minecraft:bedrock run summon minecraft:area_effect_cloud ~ ~-2 ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["drg_portal"]}
execute unless block ~ ~ ~ minecraft:bedrock positioned ~ ~-1 ~ run function dragon:endcrystal/get_end_portal_height 
