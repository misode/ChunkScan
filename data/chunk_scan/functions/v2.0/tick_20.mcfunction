
schedule function chunk_scan:v2.0/tick_20 20t replace
execute as @r[tag=!chunk_scan.disabled] at @s positioned ~16 0 ~16 unless entity @e[distance=..75,type=marker,tag=chunk_scan.chunk] positioned ~ 0 ~ run function chunk_scan:v2.0/entities/summon_chunk_marker
