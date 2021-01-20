# Change sword to Gold & Telling that sword has been set to Gold
scoreboard players set sword kits 2
function dragon:setting_kits/sword/clear
execute as @a[nbt={Inventory:[{Slot:1b}]}] run give @s golden_sword{Unbreakable:1b}
execute as @a[nbt=!{Inventory:[{Slot:1b}]}] run replaceitem entity @s hotbar.1 golden_sword{Unbreakable:1b}
tellraw @a "Sword is set to Gold"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
