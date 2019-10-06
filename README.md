# ChunkScan
Simple Chunk Scanning Library for Minecraft Data Packs

This Data Pack provides an generic hook which runs for every chunk that is generated in the overworld or nether. It marks chunks by replacing bedrock at y=0 completely with barriers.

|Hooks|Description|
|---|---|
|`#cs:generate`|Called for every chunk generated in overworld or nether|

|Tags|Description|
|---|---|
|`cs.chunk`|Chunk Mmarkers. Used on area effect clouds|
|`cs.disabled`|Players with this tag will not generate new terrain around them|
|`cs.init`|Temporary tag used to align chunk markers|

## How to use
The preferred way to use this library is to bundle it within your data pack
1. Copy the `data/cs` folder to your data pack
2. Add the `"cs:load"` value to `data/minecraft/tags/functions/load.json` or copy the file if you don't have it already
3. Add your function to `data/cs/tags/generate.json`
