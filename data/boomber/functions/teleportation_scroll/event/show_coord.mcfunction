execute as @s store result score @s bb.desX run data get entity @s SelectedItem.tag.boomber.teleportation_scroll.destination[0]
execute as @s store result score @s bb.desY run data get entity @s SelectedItem.tag.boomber.teleportation_scroll.destination[1]
execute as @s store result score @s bb.desZ run data get entity @s SelectedItem.tag.boomber.teleportation_scroll.destination[2]
execute as @s store result score @s bb.desD run data get entity @s SelectedItem.tag.boomber.teleportation_scroll.destination[3]
execute as @s store result score @s bb.range run data get entity @s SelectedItem.tag.boomber.teleportation_scroll.range
execute as @s store result score @s bb.dimension run data get entity @s SelectedItem.tag.boomber.teleportation_scroll.interdimensional

execute as @s run title @s actionbar [{"text":"X: "},{"score":{"name":"@s","objective":"bb.desX"}},{"text":" "},{"text":"Y: "},{"score":{"name":"@s","objective":"bb.desY"}},{"text":" "},{"text":"Z: "},{"score":{"name":"@s","objective":"bb.desZ"}},{"text":" "},{"text":"Dimension: "},{"score":{"name":"@s","objective":"bb.desD"}},{"text":" "},{"text":"Range: "},{"score":{"name":"@s","objective":"bb.range"}},{"text":" block "},{"text":"Interdimensional: "},{"score":{"name":"@s","objective":"bb.dimension"}},{"text":"b"}]