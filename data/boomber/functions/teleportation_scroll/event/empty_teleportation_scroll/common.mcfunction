scoreboard players add @s bb.teleTimer 1
execute as @s if score @s bb.teleTimer matches 100.. run clear @s ink_sac 1
execute as @s if score @s bb.teleTimer matches 100.. at @s run summon item ~ ~ ~ {Item:{id:"minecraft:paper", Count:1b, tag:{display:{Name:"{\"text\":\"Common Teleportation Scroll\",\"color\":\"white\",\"italic\":\"false\"}", Lore:["§7- 400 block limit"]}, Enchantments:[{id:"minecraft:protection",lvl:0}], HideFlags:1, boomber:{id:"common_teleportation_scroll", from:"boomber-teleportation-scroll", group:["teleportation_scroll"], teleportation_scroll:{is_set:1b, type:"common", destination:[0, 0, 0, 0]}}}}, PickupDelay:5s, Tags:["boomber.teleportation_scroll.generating_scroll"]}
execute as @s if score @s bb.teleTimer matches 100.. run function boomber:teleportation_scroll/event/empty_teleportation_scroll/save_coordinate