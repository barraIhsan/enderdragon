# Change pickaxe to Iron & Telling that pickaxe has been set to Iron
scoreboard players set pickaxe kits 4
function dragon:setting_kits/pickaxe/clear
execute as @a[nbt={Inventory:[{Slot:2b}]}] run give @s iron_pickaxe{Unbreakable:1b}
execute as @a[nbt=!{Inventory:[{Slot:2b}]}] run replaceitem entity @s hotbar.2 iron_pickaxe{Unbreakable:1b}
tellraw @a "Pickaxe is set to Iron"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
