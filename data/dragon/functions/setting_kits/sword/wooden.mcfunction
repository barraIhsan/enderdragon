# Change sword to Wooden & Telling that sword has been set to Wooden
scoreboard players set sword kits 1
function dragon:setting_kits/sword/clear
execute as @a[nbt={Inventory:[{Slot:1b}]}] run give @s wooden_sword{Unbreakable:1b}
execute as @a[nbt=!{Inventory:[{Slot:1b}]}] run replaceitem entity @s hotbar.1 wooden_sword{Unbreakable:1b}
tellraw @a "Sword is set to Wooden"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
