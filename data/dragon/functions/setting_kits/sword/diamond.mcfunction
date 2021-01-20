# Change sword to Diamond & Telling that sword has been set to Diamond
scoreboard players set sword kits 5
function dragon:setting_kits/sword/clear
execute as @a[nbt={Inventory:[{Slot:1b}]}] run give @s diamond_sword{Unbreakable:1b}
execute as @a[nbt=!{Inventory:[{Slot:1b}]}] run replaceitem entity @s hotbar.1 diamond_sword{Unbreakable:1b}
tellraw @a "Sword is set to Diamond"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
