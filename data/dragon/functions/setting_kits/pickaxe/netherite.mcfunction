# Change pickaxe to Netherite & Telling that pickaxe has been set to Netherite
scoreboard players set pickaxe kits 6
function dragon:setting_kits/pickaxe/clear
execute as @a[nbt={Inventory:[{Slot:2b}]}] run give @s netherite_pickaxe{Unbreakable:1b}
execute as @a[nbt=!{Inventory:[{Slot:2b}]}] run replaceitem entity @s hotbar.2 netherite_pickaxe{Unbreakable:1b}
tellraw @a "Pickaxe is set to Netherite"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
