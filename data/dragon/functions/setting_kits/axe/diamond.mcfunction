# Change axe to Diamond & Telling that axe has been set to Diamond
scoreboard players set axe drg_kits 5
function dragon:setting_kits/axe/clear
execute as @a[nbt={Inventory:[{Slot:3b}]}] run give @s diamond_axe{Unbreakable:1b}
execute as @a[nbt=!{Inventory:[{Slot:3b}]}] run replaceitem entity @s hotbar.3 diamond_axe{Unbreakable:1b}
tellraw @a "Axe is set to Diamond"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
