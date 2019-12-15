execute store result entity @s Pos[0] double 16 run data get entity @s Pos[0] 0.0625
execute store result entity @s Pos[2] double 16 run data get entity @s Pos[2] 0.0625
execute at @s run fill ~ 0 ~ ~15 0 ~15 minecraft:barrier replace minecraft:bedrock
tag @s remove cs.init