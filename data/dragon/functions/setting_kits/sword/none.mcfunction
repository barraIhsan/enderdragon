# Change sword to None & Telling that sword has been set to None
scoreboard players set sword kits 0
function dragon:setting_kits/sword/clear
execute as @a[nbt={Inventory:[{Slot:1b}]}] run give @s air
execute as @a[nbt=!{Inventory:[{Slot:1b}]}] run replaceitem entity @s hotbar.1 air
tellraw @a "Sword is set to None"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
