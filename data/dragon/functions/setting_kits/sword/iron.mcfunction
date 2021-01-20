# Change sword to Iron & Telling that sword has been set to Iron
scoreboard players set sword kits 4
function dragon:setting_kits/sword/clear
execute as @a[nbt={Inventory:[{Slot:1b}]}] run give @s iron_sword{Unbreakable:1b}
execute as @a[nbt=!{Inventory:[{Slot:1b}]}] run replaceitem entity @s hotbar.1 iron_sword{Unbreakable:1b}
tellraw @a "Sword is set to Iron"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
