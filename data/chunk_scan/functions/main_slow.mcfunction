
schedule function chunk_scan:main_slow 50t replace
execute as @r[tag=!chunk_scan.disabled] at @s positioned ~16 0 ~16 unless entity @e[distance=..75,type=marker,tag=chunk_scan.chunk] run function chunk_scan:chunk/init
