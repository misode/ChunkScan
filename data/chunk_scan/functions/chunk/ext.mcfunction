
execute unless block ~ 319 ~ #chunk_scan:marker run function chunk_scan:chunk/init
execute positioned ~-8 0 ~-8 as @e[distance=0..,type=area_effect_cloud,tag=chunk_scan.chunk,sort=nearest,limit=1] run function chunk_scan:chunk/ext_generate
scoreboard players set $temp chunk_scan.data 1
