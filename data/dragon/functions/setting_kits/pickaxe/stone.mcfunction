# Change pickaxe to Stone & Telling that pickaxe has been set to Stone
scoreboard players set pickaxe kits 3
function dragon:setting_kits/pickaxe/clear
execute as @a[nbt={Inventory:[{Slot:2b}]}] run give @s stone_pickaxe{Unbreakable:1b}
execute as @a[nbt=!{Inventory:[{Slot:2b}]}] run replaceitem entity @s hotbar.2 stone_pickaxe{Unbreakable:1b}
tellraw @a "Pickaxe is set to Stone"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
