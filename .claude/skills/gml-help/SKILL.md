---
name: gml-help
description: Get help with GML (GameMaker Language) syntax, functions, and patterns. Use when writing or debugging GML code, understanding GameMaker concepts, or learning best practices.
allowed-tools: Read, Grep, Glob, WebFetch
---

# GML Help - GameMaker Language Reference

Provide assistance with GML (GameMaker Language) code for GameMaker Studio 2.

## GML Fundamentals

### Variable Scopes
- **Instance variables**: `variable_name` - Belong to the instance, persist until instance destroyed
- **Local variables**: `var variable_name` - Only exist within current event/script
- **Global variables**: `global.variable_name` - Accessible everywhere, persist entire game

### Data Types
- **Real numbers**: `42`, `3.14`, `-100`
- **Strings**: `"Hello World"`
- **Booleans**: `true`, `false`
- **Arrays**: `my_array = [1, 2, 3]` or `my_array[0] = value`
- **Structs**: `my_struct = { x: 10, y: 20 }`
- **undefined**: Represents no value

### Control Flow
```gml
// Conditionals
if (condition) {
    // code
} else if (other_condition) {
    // code
} else {
    // code
}

// Switch
switch (variable) {
    case value1:
        // code
        break;
    case value2:
        // code
        break;
    default:
        // code
}

// Loops
for (var i = 0; i < 10; i++) { }
while (condition) { }
do { } until (condition);
repeat (count) { }
```

### Common Functions

**Movement & Position:**
- `x`, `y` - Instance position
- `hspeed`, `vspeed` - Horizontal/vertical speed
- `speed`, `direction` - Speed and angle
- `move_towards_point(x, y, speed)`
- `point_distance(x1, y1, x2, y2)`
- `point_direction(x1, y1, x2, y2)`

**Collisions:**
- `place_meeting(x, y, obj)` - Check collision at position
- `instance_place(x, y, obj)` - Get instance at position
- `collision_line(x1, y1, x2, y2, obj, prec, notme)`
- `move_and_collide(dx, dy, objects, max_bounces, ...)`

**Instances:**
- `instance_create_layer(x, y, layer, object)`
- `instance_destroy()` - Destroy current instance
- `instance_exists(obj)` - Check if object exists
- `with (obj) { }` - Execute code as another instance

**Sprites & Drawing:**
- `sprite_index` - Current sprite
- `image_index` - Current frame
- `image_xscale`, `image_yscale` - Sprite scale
- `image_angle` - Rotation
- `draw_sprite(sprite, subimg, x, y)`
- `draw_text(x, y, string)`

**Input:**
- `keyboard_check(key)` - Key held
- `keyboard_check_pressed(key)` - Key just pressed
- `keyboard_check_released(key)` - Key just released
- `mouse_x`, `mouse_y` - Mouse position
- `mouse_check_button(button)`

**Audio:**
- `audio_play_sound(sound, priority, loop)`
- `audio_stop_sound(sound)`
- `audio_is_playing(sound)`

**Rooms:**
- `room_goto(room)` - Change room
- `room_restart()` - Restart current room
- `room` - Current room index

**Math:**
- `abs(x)`, `sign(x)`, `clamp(val, min, max)`
- `min(a, b)`, `max(a, b)`
- `random(n)`, `irandom(n)`, `random_range(a, b)`
- `sin()`, `cos()`, `tan()`, `arctan2()`

### Alarms
```gml
// Set alarm (in Create or other event)
alarm[0] = 60;  // 60 steps (1 second at 60 FPS)

// In Alarm 0 event - code runs when alarm reaches 0
// Reset alarm for repeating:
alarm[0] = 60;
```

### Parent Objects
Use parent objects for shared behavior:
- Child objects inherit all events from parent
- Check collision with parent to catch all children: `place_meeting(x, y, obj_enemy_parent)`

## Project-Specific Patterns

This project uses Drag-and-Drop generated code with `@DnDAction` annotations.

### Player Variables (from obj_player)
```gml
move_speed = 4;      // Horizontal movement
jump_speed = 16;     // Jump velocity
max_hearts = 4;      // Max health
hearts = max_hearts; // Current health
```

### Common Patterns in This Project
- Collision detection: `obj_collision_parent` for all platforms
- Herb collection: `obj_herbparent` handles player collision
- Health system: `hearts` variable, damage on enemy collision

## Reference

GameMaker Manual: https://manual.gamemaker.io/monthly/en/
