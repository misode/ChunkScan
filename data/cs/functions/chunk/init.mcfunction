# summon a chunk marker and align it to the chunk grid
summon area_effect_cloud ~ 0 ~ {Tags:["cs.chunk","cs.init"],Duration:2000000000}
execute store result entity @e[type=area_effect_cloud,tag=cs.chunk,tag=cs.init,limit=1] Pos[0] double 16 run data get entity @s Pos[0] 0.0625
execute store result entity @e[type=area_effect_cloud,tag=cs.chunk,tag=cs.init,limit=1] Pos[2] double 16 run data get entity @s Pos[2] 0.0625
tag @e[type=area_effect_cloud,tag=cs.chunk,tag=cs.init] remove cs.init
