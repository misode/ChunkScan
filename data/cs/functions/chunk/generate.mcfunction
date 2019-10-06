function #cs:generate

fill ~ 0 ~ ~15 0 ~15 barrier replace bedrock
kill @s

execute positioned ~16 ~ ~ unless entity @e[type=area_effect_cloud,tag=cs.chunk,distance=..1,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:[cs.chunk],Duration:2147483647}
execute positioned ~-16 ~ ~ unless entity @e[type=area_effect_cloud,tag=cs.chunk,distance=..1,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:[cs.chunk],Duration:2147483647}
execute positioned ~ ~ ~16 unless entity @e[type=area_effect_cloud,tag=cs.chunk,distance=..1,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:[cs.chunk],Duration:2147483647}
execute positioned ~ ~ ~-16 unless entity @e[type=area_effect_cloud,tag=cs.chunk,distance=..1,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:[cs.chunk],Duration:2147483647}
