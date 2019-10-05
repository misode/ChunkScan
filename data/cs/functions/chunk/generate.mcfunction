
# provide a generic hook
function #cs:generate

# mark the chunk as generated
scoreboard players add chunks cs.data 1
fill ~ 0 ~ ~15 0 ~15 barrier replace bedrock
kill @s

# spread outwards
execute positioned ~16 ~ ~ if block ~ ~ ~ bedrock unless entity @e[type=area_effect_cloud,tag=cs.chunk,distance=..1,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:[cs.chunk],Duration:2000000000}
execute positioned ~-16 ~ ~ if block ~ ~ ~ bedrock unless entity @e[type=area_effect_cloud,tag=cs.chunk,distance=..1,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:[cs.chunk],Duration:2000000000}
execute positioned ~ ~ ~16 if block ~ ~ ~ bedrock unless entity @e[type=area_effect_cloud,tag=cs.chunk,distance=..1,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:[cs.chunk],Duration:2000000000}
execute positioned ~ ~ ~-16 if block ~ ~ ~ bedrock unless entity @e[type=area_effect_cloud,tag=cs.chunk,distance=..1,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:[cs.chunk],Duration:2000000000}
