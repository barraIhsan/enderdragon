# Change shovel to Stone & Telling that shovel has been set to Stone
scoreboard players set shovel kits 3
function dragon:setting_kits/shovel/clear
execute as @a[nbt={Inventory:[{Slot:4b}]}] run give @s stone_shovel{Unbreakable:1b}
execute as @a[nbt=!{Inventory:[{Slot:4b}]}] run replaceitem entity @s hotbar.4 stone_shovel{Unbreakable:1b}
tellraw @a "Shovel is set to Stone"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
