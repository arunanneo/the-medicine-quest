---
name: gm-objects
description: Guide for creating and organizing GameMaker objects. Use when creating new objects, setting up inheritance hierarchies, or understanding object structure.
allowed-tools: Read, Glob, Grep
---

# GameMaker Objects Guide

Best practices for creating and organizing objects in GameMaker Studio 2.

## Object Structure

Each object in GameMaker consists of:
- **Object file**: `objects/obj_name/obj_name.yy` (metadata)
- **Event files**: `objects/obj_name/Event_N.gml` (code)
- **Sprite**: Optional visual representation
- **Parent**: Optional inheritance from another object
- **Properties**: Visibility, solid, persistent, physics

## Naming Conventions (This Project)

| Type | Prefix | Example |
|------|--------|---------|
| Objects | `obj_` | `obj_player`, `obj_enemy_parent` |
| Sprites | `spr_` | `spr_johnnyidle`, `spr_herb1` |
| Rooms | `rm_` | `rm_plains`, `rm_menu` |
| Sounds | `snd_` | `snd_music_game` |
| Fonts | `fnt_` | `fnt_title` |
| Tilesets | PascalCase | `Plains`, `Forest` |

## Parent-Child Pattern

Use parent objects to share behavior across similar objects.

### Benefits
- Write code once, inherit everywhere
- Check collisions with parent to catch all children
- Easily add new variants

### This Project's Hierarchy
```
obj_collision_parent
├── obj_ground_collision
├── obj_floating_block
└── (other solid objects)

obj_herbparent
├── obj_herb1
├── obj_herb2
└── (future herbs)

obj_enemy_parent
└── (enemy types)

obj_buttonparent
├── obj_playbutton
├── obj_creditsbutton
├── obj_helpbutton
└── obj_exitbutton
```

### Creating a Parent Object

1. Create the parent with shared behavior:
```gml
// obj_enemy_parent Create event
health = 100;
damage = 10;
move_speed = 2;
```

2. Add shared events (collision, etc.):
```gml
// obj_enemy_parent Collision with obj_player
with (other) {
    hearts -= other.damage;
}
```

3. Create children and set parent in object properties

4. Override in children as needed:
```gml
// obj_enemy_fast Create event (child)
event_inherited();  // Run parent's Create
move_speed = 5;     // Override speed
```

## Creating New Objects

### For This Project (Drag-and-Drop Style)

Objects use DnD-generated code with annotations:
```gml
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1B955AD9
move_speed = 4;
```

### Essential Object Types

**Player Object**
```gml
// Create
move_speed = 4;
jump_speed = 16;
max_hearts = 4;
hearts = max_hearts;

// Step
var move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
// ... movement logic
```

**Enemy Object**
```gml
// Create
health = 50;
damage = 1;
direction = choose(0, 180);
speed = 2;

// Collision with player
with (other) {
    hearts -= other.damage;
}
// Optional: knockback, invincibility frames
```

**Collectible Object**
```gml
// Collision with player
// Add to inventory/counter
global.herb_count += 1;
// Play sound
audio_play_sound(snd_pickup, 1, false);
// Destroy self
instance_destroy();
```

**Hazard Object**
```gml
// Collision with player
with (other) {
    hearts -= 1;  // or instant death
    // Optional: knockback
}
```

**Manager Object**
```gml
// Create (in first room or persistent)
global.score = 0;
global.herb_count = 0;

// Manages game state, audio, transitions
```

## Object Properties

### Key Properties in .yy File

```json
{
  "parentObjectId": {
    "name": "obj_herbparent",
    "path": "objects/obj_herbparent/obj_herbparent.yy"
  },
  "solid": false,
  "visible": true,
  "persistent": false,
  "spriteId": {
    "name": "spr_herb1",
    "path": "sprites/spr_herb1/spr_herb1.yy"
  }
}
```

### Property Meanings
- **solid**: Affects built-in collision (rarely used with custom collision)
- **visible**: Whether Draw event runs
- **persistent**: Survives room changes
- **spriteId**: Default sprite (can be changed with `sprite_index`)

## Common Patterns

### State Machine
```gml
// Create
state = "idle";

// Step
switch (state) {
    case "idle":
        // idle behavior
        if (see_player) state = "chase";
        break;
    case "chase":
        // chase behavior
        break;
    case "attack":
        // attack behavior
        break;
}
```

### Object Pooling
```gml
// Instead of create/destroy, deactivate/reactivate
instance_deactivate_object(obj_bullet);
instance_activate_object(obj_bullet);
```

### Singleton Pattern
For manager objects that should only exist once:
```gml
// Create
if (instance_number(object_index) > 1) {
    instance_destroy();
}
```

## Adding Objects to Rooms

### Via Room Editor
1. Open room in IDE
2. Select Instances layer
3. Drag object from Asset Browser

### Via Code
```gml
instance_create_layer(x, y, "Instances", obj_enemy);
// or
instance_create_depth(x, y, depth, obj_enemy);
```

## This Project's Key Objects

| Object | Purpose |
|--------|---------|
| `obj_player` | Main character Johnny |
| `obj_manager` | Game state, audio control |
| `obj_collision_parent` | Base for platforms |
| `obj_herbparent` | Base for collectible herbs |
| `obj_enemy_parent` | Base for enemies |
| `obj_buttonparent` | Base for menu buttons |
| `obj_floating_block` | Moving platforms |
| `obj_liquid_death` | Water hazard |
| `obj_debug` | Debug features (L key) |
