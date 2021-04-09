# Change shovel to Wooden & Telling that shovel has been set to Wooden
scoreboard players set shovel drg_kits 1
function dragon:setting_kits/shovel/clear
execute as @a[nbt={Inventory:[{Slot:4b}]}] run give @s wooden_shovel{Unbreakable:1b}
execute as @a[nbt=!{Inventory:[{Slot:4b}]}] run replaceitem entity @s hotbar.4 wooden_shovel{Unbreakable:1b}
tellraw @a "Shovel is set to Wooden"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
