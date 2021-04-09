
execute store result score $max_y chunk_scan.data run data get entity @e[tag=chunk_scan.height_marker,distance=0..,limit=1] Pos[1]
execute store result score $min_y chunk_scan.data run data get entity @s Pos[1]

execute store result entity @s Pos[0] double 1 run scoreboard players get $x chunk_scan.data
execute store result entity @s Pos[1] double 1 run scoreboard players get $max_y chunk_scan.data
execute store result entity @s Pos[2] double 1 run scoreboard players get $z chunk_scan.data

execute store result entity @s Pos[0] double 16 run data get entity @s Pos[0] 0.0625
execute store result entity @s Pos[2] double 16 run data get entity @s Pos[2] 0.0625

execute at @s unless block ~ ~ ~ #chunk_scan:marker run function chunk_scan:chunk/init
execute at @s positioned ~-8 ~ ~-8 as @e[distance=0..,type=area_effect_cloud,tag=chunk_scan.chunk,sort=nearest,limit=1] positioned ~8 ~ ~8 run function chunk_scan:chunk/cust_generate

tp @s -30000000 ~ 1600
execute store result entity @s Pos[1] double 1 run scoreboard players get $min_y chunk_scan.data
scoreboard players set $temp chunk_scan.data 1
