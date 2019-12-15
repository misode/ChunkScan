
fill ~ 0 ~ ~15 0 ~15 barrier replace bedrock
kill @s

execute positioned ~16 ~ ~ if block ~ ~ ~ minecraft:bedrock run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[cs.chunk],Duration:2147483647}
execute positioned ~16 ~ ~ if block ~ ~ ~ minecraft:bedrock run fill ~ 0 ~ ~15 0 ~15 minecraft:barrier replace minecraft:bedrock

execute positioned ~-16 ~ ~ if block ~ ~ ~ minecraft:bedrock run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[cs.chunk],Duration:2147483647}
execute positioned ~-16 ~ ~ if block ~ ~ ~ minecraft:bedrock run fill ~ 0 ~ ~15 0 ~15 minecraft:barrier replace minecraft:bedrock

execute positioned ~ ~ ~16 if block ~ ~ ~ minecraft:bedrock run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[cs.chunk],Duration:2147483647}
execute positioned ~ ~ ~16 if block ~ ~ ~ minecraft:bedrock run fill ~ 0 ~ ~15 0 ~15 minecraft:barrier replace minecraft:bedrock

execute positioned ~ ~ ~-16 if block ~ ~ ~ minecraft:bedrock run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[cs.chunk],Duration:2147483647}
execute positioned ~ ~ ~-16 if block ~ ~ ~ minecraft:bedrock run fill ~ 0 ~ ~15 0 ~15 minecraft:barrier replace minecraft:bedrock

function #cs:generate
