# Chunk Scan
Simple Chunk Scanning Library for Minecraft Data Packs

This Data Pack provides a generic function tag which runs at every chunk that is generated, aligned at the bottom of the world and at the mininium xz coords. Supports custom dimensions and any world height between -2048-2048.

Chunk Scan depends on [LanternLoad](https://github.com/LanternMC/load).

|Hooks|Description|
|---|---|
|`#chunk_scan:v2/generate`| Called for every chunk generated |

|Tags|Description|
|---|---|
|`chunk_scan.chunk`| Permenent markers indicating a metachunk has been generated. |
|`chunk_scan.gen`| Temporary markers indicating a regular chunk is ready to be generated. |
|`chunk_scan.init`| Temporary tag used to align markers. |
|`chunk_scan.disabled`| Players with this tag will not generate custom terrain around them |

## How to use
The preferred way to use this library is to bundle it within your data pack
1. Install [LanternLoad](https://github.com/LanternMC/load) in your datapack
2. Copy the `data/chunk_scan` folder into your data pack
3. Merge the contents of `ChunkScan/data/load/tags/functions/load.json` and your own `data/load/tags/functions/load.json`
4. Create your own generate function and add it to `data/chunk_scan/tags/v2/generate.json`. This will run in every chunk. Be sure to check conditions like the dimension you are in.

For easier mangament of dependencies, check out my project [Datapack Build Manager](https://github.com/ICY105/DatapackBuildManager).
