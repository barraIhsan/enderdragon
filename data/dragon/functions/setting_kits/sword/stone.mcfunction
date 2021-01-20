# Change sword to Stone & Telling that sword has been set to Stone
scoreboard players set sword kits 3
function dragon:setting_kits/sword/clear
execute as @a[nbt={Inventory:[{Slot:1b}]}] run give @s stone_sword{Unbreakable:1b}
execute as @a[nbt=!{Inventory:[{Slot:1b}]}] run replaceitem entity @s hotbar.1 stone_sword{Unbreakable:1b}
tellraw @a "Sword is set to Stone"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
