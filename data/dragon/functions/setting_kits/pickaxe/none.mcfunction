# Change pickaxe to None & Telling that pickaxe has been set to None
scoreboard players set pickaxe kits 0
function dragon:setting_kits/pickaxe/clear
execute as @a[nbt={Inventory:[{Slot:2b}]}] run give @s air
execute as @a[nbt=!{Inventory:[{Slot:2b}]}] run replaceitem entity @s hotbar.2 air
tellraw @a "Pickaxe is set to None"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
