# Change pickaxe to Gold & Telling that pickaxe has been set to Gold
scoreboard players set pickaxe kits 2
function dragon:setting_kits/pickaxe/clear
execute as @a[nbt={Inventory:[{Slot:2b}]}] run give @s golden_pickaxe{Unbreakable:1b}
execute as @a[nbt=!{Inventory:[{Slot:2b}]}] run replaceitem entity @s hotbar.2 golden_pickaxe{Unbreakable:1b}
tellraw @a "Pickaxe is set to Gold"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
