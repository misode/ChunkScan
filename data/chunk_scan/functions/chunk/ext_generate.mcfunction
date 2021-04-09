
execute store result entity @s Pos[0] double 16 run data get entity @s Pos[0] 0.0625
execute store result entity @s Pos[2] double 16 run data get entity @s Pos[2] 0.0625

execute at @s run fill ~ 319 ~ ~15 319 ~15 minecraft:light[level=0]
execute at @s run kill @e[type=area_effect_cloud,distance=..1,tag=chunk_scan.chunk]

execute at @s positioned ~16 0 ~ unless block ~ 319 ~ #chunk_scan:marker run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chunk_scan.chunk"],Duration:2147483647}
execute at @s positioned ~-16 0 ~ unless block ~ 319 ~ #chunk_scan:marker run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chunk_scan.chunk"],Duration:2147483647}
execute at @s positioned ~ 0 ~16 unless block ~ 319 ~ #chunk_scan:marker run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chunk_scan.chunk"],Duration:2147483647}
execute at @s positioned ~ 0 ~-16 unless block ~ 319 ~ #chunk_scan:marker run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chunk_scan.chunk"],Duration:2147483647}

scoreboard players set $max_y chunk_scan.data 319
scoreboard players set $min_y chunk_scan.data -64
execute at @s run function #chunk_scan:generate

