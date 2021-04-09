# Change axe to Iron & Telling that axe has been set to Iron
scoreboard players set axe drg_kits 4
function dragon:setting_kits/axe/clear
execute as @a[nbt={Inventory:[{Slot:3b}]}] run give @s iron_axe{Unbreakable:1b}
execute as @a[nbt=!{Inventory:[{Slot:3b}]}] run replaceitem entity @s hotbar.3 iron_axe{Unbreakable:1b}
tellraw @a "Axe is set to Iron"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
