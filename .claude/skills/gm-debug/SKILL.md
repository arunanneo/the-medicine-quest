---
name: gm-debug
description: Help debugging GameMaker games. Use when troubleshooting issues, understanding error messages, or setting up debugging workflows.
allowed-tools: Read, Grep, Glob
---

# GameMaker Debugging Guide

Help debug GameMaker Studio 2 projects and troubleshoot common issues.

## Starting the Debugger

1. Click **Debug** button (bug icon) instead of Run
2. Or press **F6** to run with debugger
3. Or select **Build → Debug** from menu

## Debugger Features

### Breakpoints
- Press **F9** in code editor to toggle breakpoint
- Or click in the line number gutter
- Execution pauses when hitting breakpoint
- Yellow line shows current execution point

### Stepping Controls
| Key | Action | Description |
|-----|--------|-------------|
| F11 | Step In | Execute line, enter functions |
| F10 | Step Over | Execute line, skip function internals |
| Shift+F11 | Step Out | Run until exiting current function |
| F5 | Continue | Resume normal execution |

### Watch Variables
- Add variables to watch panel to monitor values
- Real-time updates when enabled
- Expand structs and arrays to see contents

### Call Stack
- Shows execution order
- Click entries to jump to that code location
- Useful for understanding how code was reached

## Debug Output Functions

### show_debug_message()
Prints to Output window (not visible in game):
```gml
show_debug_message("Player position: " + string(x) + ", " + string(y));
show_debug_message("Health: " + string(hearts));
```

### draw_text() for Visual Debug
Draw debug info on screen:
```gml
// In Draw or Draw GUI event
if (global.debug_mode) {
    draw_set_color(c_yellow);
    draw_text(x, y - 40, "State: " + state);
    draw_text(x, y - 30, "Speed: " + string(speed));
}
```

### Debug Overlay
Enable built-in debug overlay:
```gml
show_debug_overlay(true);  // Shows FPS, memory, etc.
```

## Common Issues & Solutions

### "Variable not set before reading"
**Cause**: Using variable before initializing it
**Fix**: Initialize in Create event
```gml
// In Create_0.gml
my_variable = 0;  // Initialize before use
```

### "Instance does not exist"
**Cause**: Referencing destroyed instance or wrong object
**Fix**: Check existence first
```gml
if (instance_exists(obj_player)) {
    target_x = obj_player.x;
}
```

### Object not visible
**Causes & Checks**:
1. `visible = false`? Set to `true`
2. Sprite assigned? Check `sprite_index`
3. Wrong layer? Check instance layer
4. Outside room? Check x, y coordinates
5. Draw event overriding? Add `draw_self();`
6. Alpha = 0? Check `image_alpha`

### Collision not working
**Causes & Checks**:
1. No collision mask? Check sprite collision settings
2. Wrong object in event? Verify collision event target
3. Positions not overlapping? Use `show_debug_message()` to log positions
4. Parent not set? Check object parent hierarchy

### Movement stuttering
**Causes**:
1. Mixing `x += speed` with `hspeed` - pick one method
2. Collision correction fighting movement
3. Delta time issues with frame-dependent code

### Alarm not triggering
**Causes**:
1. Never set: `alarm[0] = 60;` needed
2. Set to 0 or negative: must be positive
3. Wrong alarm number: check 0-11
4. Instance destroyed before alarm fires

## Debug Patterns for This Project

### Player Debug
Add to `obj_player` Draw GUI:
```gml
if (keyboard_check(ord("D"))) {  // Hold D for debug
    draw_text(10, 10, "Position: " + string(x) + ", " + string(y));
    draw_text(10, 25, "Hearts: " + string(hearts));
    draw_text(10, 40, "Move Y: " + string(move_y));
    draw_text(10, 55, "Grounded: " + string(place_meeting(x, y+1, obj_collision_parent)));
}
```

### Collision Debug
Visualize collision boxes:
```gml
// In Draw event
draw_self();
draw_set_alpha(0.3);
draw_set_color(c_red);
draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
draw_set_alpha(1);
```

### Herb Collection Debug
Track herb pickup:
```gml
// In obj_herbparent Collision with player
show_debug_message("Herb collected! Type: " + object_get_name(object_index));
show_debug_message("Total herbs: " + string(global.herb_count));
```

## Using obj_debug in This Project

The project has `obj_debug` - press **L** to toggle debug features:
- Located in `objects/obj_debug/`
- Check its events for existing debug functionality

## Performance Debugging

### Profiler
- View → Profiler during debug
- Shows time spent in each event
- Identify slow code

### Common Performance Issues
1. **Too many collision checks**: Use spatial partitioning
2. **Creating/destroying many instances**: Use object pooling
3. **Complex draw operations**: Cache to surfaces
4. **Large loops**: Spread across frames with alarms

## Error Messages Reference

| Error | Meaning |
|-------|---------|
| `Variable <name> not set` | Use before initialization |
| `DoAdd: Execution Error` | Wrong types in operation |
| `Unable to find instance` | Instance ID invalid/destroyed |
| `Array out of bounds` | Index beyond array length |
| `Division by zero` | Dividing by 0 |
| `Wrong number of arguments` | Function called incorrectly |
