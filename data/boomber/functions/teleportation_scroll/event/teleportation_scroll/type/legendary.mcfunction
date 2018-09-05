scoreboard players add @s bb.teleTimer 1
execute as @s run data merge entity @s {CustomName:"{\"text\":\"Legendary Teleportation Scroll\",\"color\":\"aqua\"}",CustomNameVisible:1b}
execute as @e[tag=boomber.teleportation_scroll.allowed_entity,distance=..4] run effect give @s glowing 1 0 true
execute as @s[scores={bb.teleTimer=100..}] store result score @e[tag=boomber.teleportation_scroll.allowed_entity,distance=..4] bb.desX run data get entity @s Item.tag.boomber.teleportation_scroll.destination[0]
execute as @s[scores={bb.teleTimer=100..}] store result score @e[tag=boomber.teleportation_scroll.allowed_entity,distance=..4] bb.desY run data get entity @s Item.tag.boomber.teleportation_scroll.destination[1]
execute as @s[scores={bb.teleTimer=100..}] store result score @e[tag=boomber.teleportation_scroll.allowed_entity,distance=..4] bb.desZ run data get entity @s Item.tag.boomber.teleportation_scroll.destination[2]
execute as @s[scores={bb.teleTimer=100..}] store result score @e[tag=boomber.teleportation_scroll.allowed_entity,distance=..4] bb.desD run data get entity @s Item.tag.boomber.teleportation_scroll.destination[3]
execute as @s[scores={bb.teleTimer=100..}] as @e[tag=boomber.teleportation_scroll.allowed_entity,distance=..4] at @s run function boomber:teleportation_scroll/event/teleportation_scroll/teleport
execute as @s[scores={bb.teleTimer=100..}] run kill @s