# Change sword to Netherite & Telling that sword has been set to Netherite
scoreboard players set sword kits 6
function dragon:setting_kits/sword/clear
execute as @a[nbt={Inventory:[{Slot:1b}]}] run give @s netherite_sword{Unbreakable:1b}
execute as @a[nbt=!{Inventory:[{Slot:1b}]}] run replaceitem entity @s hotbar.1 netherite_sword{Unbreakable:1b}
tellraw @a "Sword is set to Netherite"
function dragon:setting_kits
playsound ui.button.click master @s ~ ~ ~ 0.3
