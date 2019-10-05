execute if block ~ 0 ~ bedrock run function cs:chunk/init
execute positioned ~-8 0 ~-8 as @e[type=area_effect_cloud,tag=cs.chunk,sort=nearest,limit=1] at @s if block ~ 0 ~ bedrock run function cs:chunk/generate
