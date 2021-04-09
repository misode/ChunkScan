
scoreboard players set $temp chunk_scan.data 0
execute if entity @s[tag=chunk_scan.std] run function chunk_scan:chunk/std
execute if entity @e[tag=chunk_scan.ext] run function chunk_scan:chunk/ext
execute if score $temp chunk_scan.data matches 0 run function chunk_scan:chunk/cust
