
execute at @s[tag=chunk_scan.chunk] run function chunk_scan:generate/spread
execute at @s run function #chunk_scan:generate

tag @s remove chunk_scan.gen
execute unless entity @s[tag=chunk_scan.chunk] run kill @s
