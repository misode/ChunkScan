
scoreboard objectives add chunk_scan.delay dummy

schedule function chunk_scan:v2.0/tick_2 2t replace
schedule function chunk_scan:v2.0/tick_20 20t replace
