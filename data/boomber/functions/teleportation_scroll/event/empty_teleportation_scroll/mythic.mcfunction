scoreboard players add @s bb.teleTimer 1
execute as @s if score @s bb.teleTimer matches 100.. run clear @s magenta_dye 1
execute as @s if score @s bb.teleTimer matches 100.. at @s run summon item ~ ~ ~ {Item:{id:"minecraft:paper", Count:1b, tag:{display:{Name:"{\"text\":\"Mythic Teleportation Scroll\",\"color\":\"dark_purple\",\"italic\":\"false\"}"}, Enchantments:[{id:"minecraft:protection",lvl:0}], HideFlags:1, boomber:{id:"mythic_teleportation_scroll", is_item:1b, from:"boomber-teleportation-scroll", group:["teleportation_scroll"], teleportation_scroll:{is_set:1b, range:0, casting_time:0s, interdimensional:0b, type:"mythic", destination:[0, 0, 0, 0]}}}}, PickupDelay:5s, Tags:["boomber.teleportation_scroll.generating_scroll"]}
execute as @s if score @s bb.teleTimer matches 100.. run function boomber:teleportation_scroll/event/empty_teleportation_scroll/save_coordinate