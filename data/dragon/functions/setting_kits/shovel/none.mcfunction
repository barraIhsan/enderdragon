# Change shovel to None & Telling that shovel has been set to None
scoreboard players set shovel kits 0
function dragon:setting_kits/shovel/clear
execute as @a[nbt={Inventory:[{Slot:4b}]}] run give @s air
execute as @a[nbt=!{Inventory:[{Slot:4b}]}] run replaceitem entity @s hotbar.4 air
tellraw @a "Shovel is set to None"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
