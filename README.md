# JP Duty Blips

A FiveM script that provides on/off duty blips for players on specific jobs to allow for better visibility and coordination via the Map.

## Features
- Toggle on/off duty blips for players
- Configurable via `config.lua`
- Easy setup and on existing servers

## Requirements
- [ox_lib](https://github.com/overextended/ox_lib)

## Installation
1. Download or clone this repository into your server's resources folder.
2. Ensure the following dependencies are installed and started before this resource:
   - `ox_lib`
3. Add `jp-dutyblips` to your `server.cfg`:
   ```
   ensure jp-dutyblips
   ```
4. Configure the script as needed in `config.lua`.
   - Set `Config.framework` to one of: `qbx`, `qbcore`, or `esx` depending on your server framework.

## Usage
- When players toggle their duty status, their blip will change accordingly.
- All configuration options can be found and adjusted in `config.lua`.
- The script supports the following frameworks:
   - **QBX** (`qbx_core`): Uses native duty count export.
   - **QBCore** (`qb-core`): Counts on-duty players by job.
   - **ESX** (`es_extended`): Counts on-duty players by job.
   - Set the framework in `config.lua` with `Config.framework = 'qbx'`, `'qbcore'`, or `'esx'`.

## License
See [LICENSE](LICENSE) for license information.