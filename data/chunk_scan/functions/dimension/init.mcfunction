
forceload add -30000000 1600
kill @e[tag=chunk_scan.base_marker,distance=0.01..]
kill @e[tag=chunk_scan.height_marker,distance=0.01..]

execute positioned -30000000 0 1600 run function chunk_scan:dimension/init_height
execute positioned -30000000 0 1600 run function chunk_scan:dimension/init_base

execute if entity @e[tag=chunk_scan.std_h,distance=0.01..] if entity @e[tag=chunk_scan.std_b,distance=0.01..] run tag @e[tag=chunk_scan.base_marker,distance=0.01..] add chunk_scan.std
execute if entity @e[tag=chunk_scan.ext_h,distance=0.01..] if entity @e[tag=chunk_scan.ext_b,distance=0.01..] run tag @e[tag=chunk_scan.base_marker,distance=0.01..] add chunk_scan.ext
