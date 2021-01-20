# Change shovel to Gold & Telling that shovel has been set to Gold
scoreboard players set shovel kits 2
function dragon:setting_kits/shovel/clear
execute as @a[nbt={Inventory:[{Slot:4b}]}] run give @s golden_shovel{Unbreakable:1b}
execute as @a[nbt=!{Inventory:[{Slot:4b}]}] run replaceitem entity @s hotbar.4 golden_shovel{Unbreakable:1b}
tellraw @a "Shovel is set to Gold"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
