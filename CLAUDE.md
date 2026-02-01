# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

**The Medicine Quest** is a 2D platformer game built with **GameMaker Studio 2** (IDE version 2024.14.2.213). The player character Johnny must collect herbs to heal his grandfather while navigating platforms, avoiding enemies, and overcoming hazards.

## Documentation

| Document | Description |
|----------|-------------|
| [docs/DESIGN.md](./docs/DESIGN.md) | Game design document and OGPC portfolio |
| [docs/TASKS.md](./docs/TASKS.md) | Prioritized task list for competition |
| [docs/OGPC-Competition-Manual.md](./docs/OGPC-Competition-Manual.md) | OGPC 2025-26 rules and requirements |
| [docs/OGPC-Achievements-Guide.md](./docs/OGPC-Achievements-Guide.md) | Achievement criteria for judging |
| [docs/OGPC-AI-Tools-Policy.md](./docs/OGPC-AI-Tools-Policy.md) | AI usage documentation requirements |

### OGPC Competition

- **Theme (2025-26):** Journeys
- **Main Event:** May 9th, 2026 at Western Oregon University
- **Division:** Check with team (MS or HS based on age/grade)

### Game Vision (from Design Doc)

- **3 biomes/levels**: Plains (easy parkour), Forest (combat + trading), Snowy Mountain (hardest - powdered snow hazards)
- **Goal**: Collect 3 hidden herb ingredients per level to craft medicine for Grandpa Smith
- **Win/Lose**: Get all ingredients → grandfather survives; miss ingredients → he dies
- **Team**: Axolotl Studios (independent team for OGPC competition)
- **Art tools**: Paint 3D, Piskel
- **Music**: Original piano pieces by team members Eshan and Kirin

## Development Commands

This is a GameMaker Studio 2 project with no CLI build tools. All development is done through the GameMaker IDE:

- **Open project**: Open `the-medicine-quest.yyp` in GameMaker Studio 2
- **Run game**: Press F5 or click Run in GameMaker IDE
- **Debug mode**: Press Ctrl+F6 or use Debug menu
- **In-game debug**: Press L key during gameplay (via `obj_debug`)
- **Test room**: Use `rm_test` for quick iteration

**Target platforms**: Mac, Windows, OperaGX (web)

## Architecture

### Object Hierarchy (Parent-Child Pattern)

The codebase uses GameMaker's object inheritance system. Parent objects define shared behavior:

- **`obj_collision_parent`** → Base for all solid/collidable objects (platforms, ground)
  - `obj_ground_collison`, `obj_floating_block` inherit from this

- **`obj_herbparent`** → Base for collectible herbs (handles player collision)
  - `obj_herb1`, `obj_herb2` inherit from this

- **`obj_enemy_parent`** → Base for enemies
  - Enemies apply damage and knockback on player collision

- **`obj_buttonparent`** → Base for UI buttons (mouse interaction events)
  - Menu buttons (`obj_playbutton`, `obj_creditsbutton`, etc.) inherit from this

### Core Systems

| Object | Purpose |
|--------|---------|
| `obj_player` | Player character with movement (4 px/frame), jumping (16 px/frame), health system (4 hearts) |
| `obj_manager` | Game state manager - handles audio, room flow, depth sorting |
| `obj_menusound` | Audio playback for menu/game music |
| `obj_log_spawner` | Spawns log obstacles with delay timing |
| `obj_floating_block` | Moving platform obstacles |
| `obj_liquid_death` | Water hazard (instant death) |

### Room Flow

1. `rm_menu` → Title screen
2. `rm_test` → Development testing
3. `rm_plains` → Main game level (Plains Biome)
4. `rm_credits` → Credits with scrolling sequence
5. `rm_lose` → Game over
6. `rm_win` → Victory

### Code Organization

GameMaker uses event-driven scripts per object:
- `Create_0.gml` - Initialization
- `Step_0.gml` - Per-frame logic (60 FPS)
- `Draw_0.gml` / `Draw_64.gml` - Rendering / GUI rendering
- `Collision_<object>.gml` - Collision handlers
- `Alarm_*.gml` - Delayed/timed actions

Most code is generated from Drag-and-Drop with `@DnDAction` annotations.

## Naming Conventions

- Objects: `obj_<name>` (e.g., `obj_player`, `obj_herbparent`)
- Sprites: `spr_<name>` (e.g., `spr_johnnyidle`, `spr_herb1`)
- Rooms: `rm_<name>` (e.g., `rm_plains`, `rm_menu`)
- Sounds: `snd_<name>` (e.g., `snd_music_game`)
- Tilesets: PascalCase (e.g., `Plains`, `Forest`, `Meadow`)
- Fonts: `fnt_<name>` (e.g., `fnt_title`)

## Player Mechanics Reference

```gml
// Key player variables (from obj_player/Create_0.gml)
move_speed = 4;      // Horizontal movement speed
jump_speed = 16;     // Jump velocity
max_hearts = 4;      // Maximum health
hearts = max_hearts; // Current health
```

- Movement: Arrow keys (left/right)
- Jump: Spacebar (only when grounded)
- Collision: Uses `obj_collision_parent` for platform detection
- Sprite flipping: `image_xscale` changes based on movement direction
