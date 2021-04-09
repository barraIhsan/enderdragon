# Change axe to Stone & Telling that axe has been set to Stone
scoreboard players set axe drg_kits 3
function dragon:setting_kits/axe/clear
execute as @a[nbt={Inventory:[{Slot:3b}]}] run give @s stone_axe{Unbreakable:1b}
execute as @a[nbt=!{Inventory:[{Slot:3b}]}] run replaceitem entity @s hotbar.3 stone_axe{Unbreakable:1b}
tellraw @a "Axe is set to Stone"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
