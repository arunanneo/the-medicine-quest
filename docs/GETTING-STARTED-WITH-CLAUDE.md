# Getting Started with Claude Code

Hey team! This guide shows you how to use Claude to help build The Medicine Quest.

## What Claude Can Help With

- **Fix bugs** - Paste an error message and ask what's wrong
- **Explain code** - Ask "what does this code do?"
- **Write code** - Describe what you want and Claude can write GML for you
- **Find things** - Ask "where is the player health code?"

## How to Ask Good Questions

### Be Specific

```
❌ Bad:  "It's not working"
✅ Good: "The player falls through the floor in rm_plains"

❌ Bad:  "Help me with enemies"
✅ Good: "How do I make an enemy that walks back and forth?"
```

### Include Error Messages

When you get an error, copy the whole thing:
```
"I got this error: Script: InventoryFunctions at line 17 : Assignment operator expected"
```

### Say What You Expected vs What Happened

```
"When I press space, the player should jump, but nothing happens"
```

## Slash Commands

Type these to get instant help:

| Command | What It Does |
|---------|--------------|
| `/gml-help` | GML syntax and functions |
| `/gm-events` | Which event to use (Create, Step, Draw, etc.) |
| `/gm-debug` | How to fix common problems |
| `/gm-objects` | How to create new objects |
| `/gitleaks` | Check for secrets before committing |

## Common Questions You Can Ask

### When You're Stuck on Code

- "How do I make the player lose a heart when touching an enemy?"
- "What's wrong with this code?" (then paste your code)
- "How do I make a sprite flip when moving left?"

### When You Get an Error

- "What does this error mean?" (paste the error)
- "My game crashes when I enter rm_plains, how do I debug this?"

### When You Need to Add Something New

- "How do I create a new herb that the player can collect?"
- "How do I add a counter that shows how many herbs I've collected?"
- "How do I make a platform that moves up and down?"

### When You Don't Understand Code

- "Explain what obj_player Step event does"
- "What does `place_meeting(x, y+1, obj_collision_parent)` mean?"

## Quick Debugging Tips

### Game Won't Run?
Ask: "I'm getting this error when I run the game: [paste error]"

### Something Not Showing Up?
Ask: "I added obj_herb3 to the room but I can't see it. What could be wrong?"

### Collision Not Working?
Ask: "My player walks through walls. How do I fix collision?"

### Code Not Doing Anything?
Ask: "I put code in the Step event but nothing happens. Here's my code: [paste code]"

## Example Conversation

**You:** How do I make the player take damage when touching a bramble?

**Claude:** Add a Collision event with obj_bramble to obj_player:
```gml
hearts -= 1;
if (hearts <= 0) {
    room_goto(rm_lose);
}
```

**You:** It works but the player loses all hearts instantly!

**Claude:** That's because collision runs every frame. Add a cooldown:
```gml
// In Create event
can_take_damage = true;

// In Collision event
if (can_take_damage) {
    hearts -= 1;
    can_take_damage = false;
    alarm[1] = 60; // 1 second cooldown
}

// In Alarm 1 event
can_take_damage = true;
```

## Rules

1. **Don't share passwords or tokens** - Claude will remind you about this
2. **Read what Claude writes** - Make sure you understand the code before using it
3. **Test after changes** - Run the game to see if it works
4. **Ask follow-up questions** - If you don't understand, just ask "can you explain that simpler?"

## Need More Help?

- Check `docs/TASKS.md` for what needs to be built
- Check `CLAUDE.md` for how the project is organized
- Ask Claude: "What files handle [thing you're looking for]?"

Good luck building The Medicine Quest! 🎮
