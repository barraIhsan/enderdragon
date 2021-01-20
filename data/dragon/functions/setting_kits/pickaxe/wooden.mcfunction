# Change pickaxe to Wooden & Telling that pickaxe has been set to Wooden
scoreboard players set pickaxe kits 1
function dragon:setting_kits/pickaxe/clear
execute as @a[nbt={Inventory:[{Slot:2b}]}] run give @s wooden_pickaxe{Unbreakable:1b}
execute as @a[nbt=!{Inventory:[{Slot:2b}]}] run replaceitem entity @s hotbar.2 wooden_pickaxe{Unbreakable:1b}
tellraw @a "Pickaxe is set to Wooden"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
