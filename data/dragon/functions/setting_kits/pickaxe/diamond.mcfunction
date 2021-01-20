# Change pickaxe to Diamond & Telling that pickaxe has been set to Diamond
scoreboard players set pickaxe kits 5
function dragon:setting_kits/pickaxe/clear
execute as @a[nbt={Inventory:[{Slot:2b}]}] run give @s diamond_pickaxe{Unbreakable:1b}
execute as @a[nbt=!{Inventory:[{Slot:2b}]}] run replaceitem entity @s hotbar.2 diamond_pickaxe{Unbreakable:1b}
tellraw @a "Pickaxe is set to Diamond"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
