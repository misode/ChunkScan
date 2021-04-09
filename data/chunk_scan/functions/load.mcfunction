
schedule function chunk_scan:main 4t replace
scoreboard objectives add chunk_scan.data dummy
scoreboard players set chunk_scan load 5

execute in minecraft:overworld run function chunk_scan:dimension/init
execute in minecraft:the_nether run function chunk_scan:dimension/init
execute in minecraft:the_end run function chunk_scan:dimension/init
