
execute store result score $x chunk_scan.data run data get entity @s Pos[0]
execute store result score $z chunk_scan.data run data get entity @s Pos[2]

execute as @e[tag=chunk_scan.base_marker,distance=0.01..,limit=1] run function chunk_scan:chunk/start
