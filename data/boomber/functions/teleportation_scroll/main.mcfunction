execute as @a run function boomber:teleportation_scroll/event/player_position_calculation

execute as @a[scores={bb.dPos=0}] if entity @s[nbt={Inventory:[{Slot:-106b, Count:1b, tag:{boomber:{group:["empty_teleportation_scroll"]}}}]}] at @s run function boomber:teleportation_scroll/event/empty_teleportation_scroll

execute as @a[nbt={SelectedItem:{tag:{boomber:{group:["teleportation_scroll"], teleportation_scroll:{is_set:1b}}}}}] run function boomber:teleportation_scroll/event/show_coord

execute as @e[type=item,nbt={Item:{Count:1b, tag:{boomber:{group:["teleportation_scroll"], teleportation_scroll:{is_set:1b}}}}, OnGround:1b}] at @s if entity @e[type=item, nbt={Item:{id:"minecraft:redstone", Count:1b}, OnGround:1b}, distance=..0.5, limit=1] run function boomber:teleportation_scroll/event/teleportation_scroll/activate
execute as @e[tag=boomber.teleportation_scroll.activate] at @s run function boomber:teleportation_scroll/event/teleportation_scroll

execute as @a[scores={bb.dPos=0}] unless entity @s[nbt={Inventory:[{Slot:-106b, Count:1b, tag:{boomber:{group:["empty_teleportation_scroll"]}}}]}] at @s run scoreboard players set @s bb.teleTimer 0
execute as @a unless score @s bb.dPos matches 0 run scoreboard players set @s bb.teleTimer 0