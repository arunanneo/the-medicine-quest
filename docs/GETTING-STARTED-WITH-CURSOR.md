# Getting Started with Cursor

Hey team! This guide is for team members who want to use Cursor to help build The Medicine Quest.

## What Cursor Can Help With

- **Explain code** - Ask "what does this code do?"
- **Find things** - Ask "where is the player health code?"
- **Get unstuck** - Ask for hints and direction (you'll learn more than if it does it for you!)
- **Fix bugs** - Paste an error and ask what to look for

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

## Skills (Built-in Helpers)

Cursor can use these skills when you ask for help:

| Skill | What It Does |
|-------|--------------|
| gml-help | GML syntax and functions |
| gm-events | Which event to use (Create, Step, Draw, etc.) |
| gm-debug | How to fix common problems |
| gm-objects | How to create new objects |
| gitleaks | Check for secrets before committing |

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

## Get Direction, Not Full Solutions

**You learn more when you build it yourself.** Ask Cursor to guide you instead of doing everything:

| Instead of... | Try asking... |
|---------------|---------------|
| "Add a herb counter to the HUD" | "What's the approach for showing herb count? Which object and event would I use?" |
| "Fix my collision" | "I'm stuck on collision. Can you point me to where similar code exists and what to look for?" |
| "Make the bear enemy" | "What are the steps to create an enemy? I want to try it myself with some hints." |

**Good prompts:**
- "Point me in the right direction – don't write it all for me"
- "Give me a hint, I want to figure out the rest"
- "What should I look at first? I'll try it and come back if stuck"

## Making Your Own PRs

1. **Create a branch** (from main): `git checkout main` then `git pull` then `git checkout -b yourname/feature-name`
2. **Make changes** in GameMaker and/or code
3. **Commit**: `git add .` then `git commit -m "Short description of what you did"`
4. **Push**: `git push -u origin yourname/feature-name`
5. **Open a PR** on GitHub: use the link it gives you, or go to the repo → Pull requests → New
6. **Describe what you did** in the PR so others can review

Ask a coach if you need help with git or GitHub!

## Rules

1. **Don't share passwords or tokens** - Cursor will remind you about this
2. **Read what Cursor writes** - Make sure you understand the code before using it
3. **Test after changes** - Run the game to see if it works
4. **Ask follow-up questions** - If you don't understand, just ask "can you explain that simpler?"

## OGPC: Document Your AI Usage

If you use Cursor to help with code, document it per `docs/OGPC-AI-Tools-Policy.md`: what Cursor helped with, your prompts, and what you did with the output. Judges may ask!

## Need More Help?

- Check `docs/TASKS.md` for what needs to be built
- Check `docs/DESIGN.md` for how the project is organized
- Ask Cursor: "What files handle [thing you're looking for]?"

Good luck building The Medicine Quest! 🎮
