
schedule function chunk_scan:main 2t replace
execute as @r[tag=!chunk_scan.disabled] at @s positioned ~-16 0 ~-16 as @e[distance=0..,type=marker,tag=chunk_scan.gen,sort=nearest,limit=1] at @s run function chunk_scan:chunk/generate
