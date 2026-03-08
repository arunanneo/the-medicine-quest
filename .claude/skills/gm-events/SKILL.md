---
name: gm-events
description: Reference for GameMaker object events. Use when you need to understand which event to use, event execution order, or how specific events work.
allowed-tools: Read, Glob
---

# GameMaker Events Reference

Complete reference for GameMaker Studio 2 object events and when to use them.

## Event Execution Order

Each step (frame), events execute in this order:
1. Begin Step
2. Alarm events
3. Keyboard/Mouse/Gamepad events
4. Step
5. Collision events
6. End Step
7. Draw events (Pre-Draw → Draw Begin → Draw → Draw End → Post-Draw → Draw GUI)

## Lifecycle Events

### Create Event (`Create_0.gml`)
- **When**: Instance first created, before any other event
- **Use for**: Initialize variables, set starting values, configure instance
- **Example**:
```gml
move_speed = 4;
health = 100;
can_jump = true;
```

### Destroy Event (`Destroy_0.gml`)
- **When**: Instance is destroyed via `instance_destroy()`
- **Use for**: Spawn particles, drop items, add score, create explosion
- **Note**: Does NOT run on room end or game end

### Clean Up Event (`CleanUp_0.gml`)
- **When**: After ANY removal (destroy, room end, game end)
- **Use for**: Free data structures, surfaces, buffers
- **Example**:
```gml
if (ds_exists(my_list, ds_type_list)) {
    ds_list_destroy(my_list);
}
```

## Step Events

### Begin Step (`Step_1.gml`)
- **When**: Start of each frame, before other step logic
- **Use for**: Input reading, state changes before main logic

### Step Event (`Step_0.gml`)
- **When**: Every frame, main game loop
- **Use for**: Movement, AI, game logic, continuous checks
- **Example**:
```gml
// Movement
var move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
x += move_x * move_speed;
```

### End Step (`Step_2.gml`)
- **When**: End of each frame, after collisions
- **Use for**: Cleanup, final position adjustments, camera updates

## Input Events

### Keyboard Events
| Event | File Pattern | When Triggers |
|-------|--------------|---------------|
| Key Down | `Keyboard_*.gml` | Every frame key is held |
| Key Pressed | `KeyPress_*.gml` | Once when key first pressed |
| Key Released | `KeyRelease_*.gml` | Once when key released |

Common key codes: `vk_left`, `vk_right`, `vk_up`, `vk_down`, `vk_space`, `vk_enter`, `ord("A")`

### Mouse Events
| Event | File Pattern | When Triggers |
|-------|--------------|---------------|
| Button | `Mouse_*.gml` | While button held over instance |
| Pressed | `Mouse_*_Pressed.gml` | Once on click over instance |
| Released | `Mouse_*_Released.gml` | Once on release over instance |
| Enter | `Mouse_Enter.gml` | Mouse enters instance bounds |
| Leave | `Mouse_Leave.gml` | Mouse leaves instance bounds |

Global mouse events trigger regardless of cursor position.

## Alarm Events (`Alarm_*.gml`)

- 12 independent alarms (0-11)
- Count down each step when set
- Event triggers when alarm reaches 0
- Set with: `alarm[0] = 60;` (60 frames = 1 second at 60 FPS)

**Common Uses**:
- Delayed actions
- Repeating timers
- Cooldowns
- Spawning intervals

```gml
// In Create
alarm[0] = room_speed * 2;  // 2 seconds

// In Alarm 0
instance_create_layer(x, y, "Instances", obj_enemy);
alarm[0] = room_speed * 2;  // Reset for repeat
```

## Collision Events (`Collision_*.gml`)

- Triggers when collision masks overlap
- Named by object collided with: `Collision_obj_player.gml`
- Use parent objects to catch all children
- `other` keyword refers to colliding instance

```gml
// In obj_enemy Collision with obj_player
other.health -= 10;
instance_destroy();
```

## Draw Events

### Draw Event (`Draw_0.gml`)
- **When**: Each frame during render
- **Use for**: Custom sprite drawing, shapes, effects
- **Note**: Adding code disables automatic sprite drawing

```gml
draw_self();  // Draw sprite normally
draw_text(x, y - 32, string(health));  // Add health text
```

### Draw GUI (`Draw_64.gml`)
- **When**: After all world drawing
- **Use for**: HUD, menus, UI elements
- **Coordinates**: Screen-based (0,0 = top-left of view)

```gml
draw_set_color(c_white);
draw_text(10, 10, "Score: " + string(global.score));
draw_text(10, 30, "Health: " + string(health));
```

### Other Draw Events
| Event | Purpose |
|-------|---------|
| Pre-Draw | Before any drawing (setup) |
| Draw Begin | Before normal draw events |
| Draw End | After normal draw events |
| Post-Draw | After all world drawing |
| Draw GUI Begin/End | Before/after GUI drawing |

## Room Events

### Room Start (`Other_4.gml`)
- **When**: Room begins (after all instances created)
- **Use for**: Room setup, initialize room-specific systems

### Room End (`Other_5.gml`)
- **When**: Before leaving room
- **Use for**: Save room state, cleanup

## Other Events

| Event | When |
|-------|------|
| Outside Room | Instance leaves room bounds |
| Intersect Boundary | Instance touches room edge |
| Game Start | Game first starts (only one instance receives) |
| Game End | Game closing |
| Animation End | Sprite animation completes cycle |
| Animation Update | Sprite frame changes |
| Animation Event | Broadcast message from sprite |

## Async Events

For operations that complete later:
- Image Loaded
- Sound Loaded
- HTTP
- Dialog
- Save/Load
- System Event

## File Naming Convention

In this project, event files use this pattern:
- `Create_0.gml` - Create event
- `Step_0.gml` - Step event
- `Step_2.gml` - End Step event
- `Draw_0.gml` - Draw event
- `Draw_64.gml` - Draw GUI event
- `Alarm_0.gml` - Alarm 0 event
- `Collision_obj_player.gml` - Collision with player
- `KeyPress_76.gml` - Key press (76 = 'L')
