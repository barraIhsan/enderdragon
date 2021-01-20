# Change shovel to Diamond & Telling that shovel has been set to Diamond
scoreboard players set shovel kits 5
function dragon:setting_kits/shovel/clear
execute as @a[nbt={Inventory:[{Slot:4b}]}] run give @s diamond_shovel{Unbreakable:1b}
execute as @a[nbt=!{Inventory:[{Slot:4b}]}] run replaceitem entity @s hotbar.4 diamond_shovel{Unbreakable:1b}
tellraw @a "Shovel is set to Diamond"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
