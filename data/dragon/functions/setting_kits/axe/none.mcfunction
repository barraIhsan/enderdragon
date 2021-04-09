# Change axe to None & Telling that axe has been set to None
scoreboard players set axe drg_kits 0
function dragon:setting_kits/axe/clear
execute as @a[nbt={Inventory:[{Slot:3b}]}] run give @s air
execute as @a[nbt=!{Inventory:[{Slot:3b}]}] run replaceitem entity @s hotbar.3 air
tellraw @a "Axe is set to None"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
