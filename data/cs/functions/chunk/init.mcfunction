summon area_effect_cloud ~ 0 ~ {Tags:["cs.chunk","cs.init"],Duration:2147483647}
execute store result entity @e[type=area_effect_cloud,tag=cs.chunk,tag=cs.init,distance=..1,limit=1] Pos[0] double 16 run data get entity @s Pos[0] 0.0625
execute store result entity @e[type=area_effect_cloud,tag=cs.chunk,tag=cs.init,distance=..1,limit=1] Pos[2] double 16 run data get entity @s Pos[2] 0.0625
execute at @e[type=area_effect_cloud,tag=cs.chunk,tag=cs.init,distance=..1,limit=1] if entity @e[type=area_effect_cloud,tag=cs.chunk,distance=..1,limit=1] run kill @s
tag @e[type=area_effect_cloud,tag=cs.chunk,tag=cs.init] remove cs.init
