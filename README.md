# ChunkScan
Simple Chunk Scanning Library for Minecraft Data Packs

This Data Pack provides a generic function tag which runs at every chunk that is generated in the overworld, nether, and end (other dimensions can be added to this list). It marks chunks with a light block at world height limit. Supports non-standard dimension sizes.

|Hooks|Description|
|---|---|
|`#cs:generate`|Called for every chunk generated in overworld or nether|

|Tags|Description|
|---|---|
|`chunk_scan.chunk`|Chunk Mmarkers. Used on area effect clouds|
|`chunk_scan.disabled`|Players with this tag will not generate new terrain around them|
|`chunk_scan.init`|Temporary tag used to align chunk markers|
|`chunk_scan.base_marker`|Tags entity that marks world y-minimum|
|`chunk_scan.height_marker`|Tags entity that marks world y-maximum|
|`chunk_scan.std_h`|Tags 'base_marker' entity, indicates world uses standard height [0,255]|
|`chunk_scan.ext_h`|Tags 'base_marker' entity, indicates world uses extended height [-64,319]|

## How to use
The preferred way to use this library is to bundle it within your data pack
1. Copy the `data/chunk_scan` and `data/load` to the `data` folder of your data pack
2. Add the `"load:#load:__init"` value to `data/minecraft/tags/functions/load.json` or copy the file if you don't have it already
3. Add your function to `data/chunk_scan/tags/generate.json`
4. To start chunk scan in a custom dimension, run `execute in <dimension> run function chunk_scan:dimension/init`
