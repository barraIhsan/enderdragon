# Change axe to Netherite & Telling that axe has been set to Netherite
scoreboard players set axe kits 6
function dragon:setting_kits/axe/clear
execute as @a[nbt={Inventory:[{Slot:3b}]}] run give @s netherite_axe{Unbreakable:1b}
execute as @a[nbt=!{Inventory:[{Slot:3b}]}] run replaceitem entity @s hotbar.3 netherite_axe{Unbreakable:1b}
tellraw @a "Axe is set to Netherite"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
