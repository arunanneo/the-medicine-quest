*![][image1]*

*2025-2026* 

Achievement Guide 

19th Annual Oregon Game Project Challenge 

www.ogpc.info

![][image2]

# Overview {#overview}

Achievements are broken down into multiple levels. To qualify for a higher level, a team must fully complete all requirements from the lower levels. Even if it would be possible to complete some part of a higher level without completing everything from the lower level, a team will only qualify for the lowest fully completed level. Teams will only qualify for completed levels – i.e. all requirements for the level have been met. For example, a team that has not fully completed the standard level cannot qualify for either encouraged nor extra credit levels. 

The achievements are broken into the following levels: 

* **Standard**: New teams should try to target the Standard level of every achievement. These are achievements we feel should be attainable by students of any skill level.   
* **Encouraged**: The Encouraged level is slightly more advanced than the Standard level. These are achievements that most teams should work towards, even if you can’t quite get all of them.   
* **Extra Credit**: The Extra Credit level is the most advanced. Teams targeting this level will have to go above and beyond to consistently reach the Extra Credit level.


Achievements labeled with a book symbol (📖) have a documentation requirement. The relevant criteria will also have this symbol and indicate that they contain documents that need to be present within the Game Portfolio document linked on TMS and presented on competition day.

# Achievements At a Glance {#achievements-at-a-glance}

[**Overview	2**](#overview)

[**Achievements At a Glance	3**](#achievements-at-a-glance)

[**Programming	4**](#programming)

[Maintenance of Code	4](#maintenance-of-code)

[CS Fundamentals 📖	5](#cs-fundamentals-📖)

[Bug Smashing 📖	6](#bug-smashing-📖)

[Dynamic Aspects	7](#dynamic-aspects)

[Object Permanence	8](#object-permanence)

[**Game Design	9**](#game-design)

[Design Doc 📖	9](#design-doc-📖)

[Mechanics 📖	10](#mechanics-📖)

[Target Audience 📖	11](#target-audience-📖)

[Evolution of Design 📖	12](#evolution-of-design-📖)

[Performance Review	13](#performance-review)

[**Art and Assets	14**](#art-and-assets)

[Artistic Expression 📖	14](#artistic-expression-📖)

[Hey DJ 📖	15](#hey-dj-📖)

[Cohesive Look and Feel	16](#cohesive-look-and-feel)

[High Fidelity	17](#high-fidelity)

[Setting the Scene 📖	18](#setting-the-scene-📖)

[**Theme And Story	19**](#theme-and-story)

[Thematically Inclined	19](#thematically-inclined)

[Intentional Design📖	20](#intentional-design📖)

[Campfire Stories 📖	21](#campfire-stories-📖)

[Scratching the Surface 📖	22](#scratching-the-surface-📖)

[Research & Development 📖	23](#research-&-development-📖)

[**Management	24**](#management)

[Team Players 📖	24](#team-players-📖)

[Public Relations	25](#public-relations)

[Project Management	26](#project-management)

[Checking the Boxes	27](#checking-the-boxes)

[Hype Train	28](#hype-train)

[**Changes and Amendments	29**](#changes-and-amendments)

# Programming {#programming}

## **Maintenance of Code** {#maintenance-of-code}

Code should be easy to follow, saved in a central location with backups, and have development over time. No spaghetti code\! 

### Standard

* Code is clean: labeled properly and named descriptively  
* Save multiple copies of the project, or project is saved to the cloud/online

### Encouraged

* Code is navigable and logically separated into functional sections  
* Git/version control history shows at least a 5 commits/patches over time

### Extra Credit

* General best practices[^1] were followed and the code would allow for future development  
* Git/version control history shows 10 or more commits, ideally smaller or even daily commits

Explanation 

This achievement focuses on your use of source control, or a method of backing up code, and cleanliness of code. These are both fundamental to maintaining a good codebase and allow others to easily step in and orient themselves with new code. 

Source control is a critical part of keeping track of your work, how it looks over time, and knowing who made each change. Almost every professional development group uses it to keep track of their code. Solutions like Dropbox, Google Drive, and OneDrive are an acceptable version control starting point and ensure that your game will carry on if your laptop were to break\! For advanced teams, Git and Mercurial are professional grade source control solutions that are still approachable for students and have many free services to host your code. There is a lot of documentation on these options so feel free to explore and give them a try\!

## **CS Fundamentals 📖** {#cs-fundamentals-📖}

How did you leverage Computer Science fundamentals such as conditionals, loops, and data structures to implement a mechanic?

### Standard

* 📖 Document at least 2 samples of the game's loops and conditionals   
* 📖 Document the game's usage of least 1 standard data structure (such as a list, map, dictionary, stack, or queue)  
* Team is prepared to describe how the game uses loops, conditionals, and data structures and how they work

### Encouraged

* 📖 Document the game's usage of least 2 different standard data structures (such as a list, map, dictionary, stack, or queue)  
* 📖 Document high level descriptions of all major mechanics' implementations, preferably as pseudocode or a block diagram  
* Team is prepared to discuss their implementations of the game's mechanics

### Extra Credit

* 📖 Document how and where your game implements and uses an algorithm  
* Player state is stored in a non-global data structure  
* Codebase uses classes or similar data/functionality grouping structures where appropriate

Explanation 

Loops and conditionals are a basic part of keeping a project's code a reasonable length and easy to read. As a codebase grows, the use of consistent tools makes it easier to find bugs quickly without needing to treat each section differently. In addition to consistent code fundamentals, diagraming can also make it easier to understand how the code is intended to work and find issues in advance. 

Documenting how your game is implemented is key for a growing codebase. This documentation can be used to help bring another person onto your team without needing to verbally describe everything, and keeps the existing team members on the same page for how each section is intended to work.

For higher tiers, make sure to use loops, conditionals, and data structures frequently and consistently. Diagram more difficult sections of code and avoid global variables\!

## **Bug Smashing 📖** {#bug-smashing-📖}

Show how problems were fixed, avoided, and purged\!

### Standard

* 📖 Document an example of a logic bug (not typo or compiler error) that your team encountered and describe how it was fixed or worked around  
* Game demonstration does not crash, freeze, or otherwise completely break

### Encouraged

* Talk about a proactive strategy you used to avoid bugs  
* Gameplay demonstration is free of major/obvious bugs  
* 📖 Document your testing process to search for bugs

### Extra Credit

* Show your team's system to keep track of bugs you’ve noticed  
* Game executed flawlessly during demonstration  
* 📖 Document how your team leveraged a standard testing framework[^2]

Explanation 

A bug describes a mistake in the logic of your code (more than a typo). If you forget a semicolon and your code stops compiling, this is known as a "syntax error". A logic bug is specifically when your code runs, but does not behave as you intended. These bugs often require the programmer to make changes to their code: adding an if statement to handle a specific case, verifying your math is correct, or correcting overstepping the end of an array. 

A well-built game should perform well, even when being watched\! Glitching through walls, breaking the physics engine, failing to pick up an item on keypress, or causing the game to stop responding or even crash are all to be avoided\!

Comprehensive testing strategies help prevent bugs from reaching the player and ruining the game’s experience. Testing helps to locate bugs early in development and ensure everything is working as intended. For higher tiers, we’re looking for clearly defined systems for finding, tracking, and smashing bugs. These systems will (hopefully) help your team produce a cleaner product that will run smoother when demoing for the judges.

## **Dynamic Aspects** {#dynamic-aspects}

Games make use of time and other modular elements to enhance gameplay.

### Standard

* Game features more than one version of at least one asset to represent different states and dynamically swaps those assets at least once (for example, player can pick up and wear a yellow shirt)   
* Animate something with a state machine (for example, swap 2 walking sprites)

### Encouraged

* Game features a time related system which meaningfully affects gameplay (for example, day/night, weather cycles, etc.)  
* Game swaps/combines/modifies assets or modifies mechanics based on time system (for example, day/night cycles,  seasons, in one level; music speeding up as the countdown nears zero; etc.)

### Extra Credit

* Choose at least one of these three:  
  * Game features a full-featured time system integrated into major mechanics of the game   
  * Game generates content procedurally   
  * Game has dynamic or procedural level generation

Explanation 

Introducing an in-game day/night cycle, weather pattern, or other similar time-based event system is one way to vary gameplay, introduce some interesting programming challenges, and encourage advanced planning. Many popular games make use of weather, time of day, sandstorms, snow, fog, and other such atmospheric cycles. Think of games such as Stardew Valley with its weather and day/night cycles, Pokémon games such as Sword and Shield with berries respawning after 24 hours, or Pokémon Go with the various Eevee evolutions. While it would be tempting to simply swap assets for darker ones on a given map, we're looking for a real-time change (since this is a programming achievement\!). Think about how a level or map could change, what events could be introduced, or how you can change assets at runtime through code.

For the highest tier, there are a few options to explore procedural content or level generation. Minecraft is a great example of procedural content generation in many ways. For level generation, a unique game world is generated for each playthrough. For procedural content: clouds, plants, music, and even textures can be generated to be unique for each save. Alternatively, implement a time system that affects multiple major mechanics of your game.

## **Object Permanence** {#object-permanence}

Menus allow players to interact with additional game content and access saved data.

### Standard

* Game starts up with a menu that allows players to:  
  * Start a new game  
  * View the game's credits.

### Encouraged

* Game has a start menu with additional options to:  
  * Use saved data (view a leaderboard, resume a saved game, or see other saved statistics)  
  * Change options/settings (at least 2 functional, such as volume, difficulty, or keybindings)

### Extra Credit

* Game has at least 1 persistent record such as a save system, leaderboard, settings, or other game related data that can be accessed between runs  
* Game has a pause menu with resume, and at least 4 functional game settings (volume, difficulty, keybindings, etc)

Explanation 

Menus are often the first way a player will experience your game. While easy to take for granted, it is important to ensure the menus operate smoothly and behave as a first-time player would expect.

For additional options/settings, controls like volume, brightness, difficulty, graphics, or key bindings are all good starting points. A pause menu with the option to resume the game, change volume, and quit the game would suffice but we encourage extra settings so players have the opportunity to make sure the game is set up how they want to play. The credits should include information about both your team and your game, and give you an opportunity to give thanks for others who may have helped during development.

For higher tiers, save something locally to your machine\! While not every game will have a saving system, it should be possible to at least save your user's settings so they do not have to configure them for every run.

# Game Design {#game-design}

## **Design Doc 📖** {#design-doc-📖}

Write a design document. What are your milestones? What is being communicated to the player? What is the general direction and mood of the game? 

### Standard

* 📖 Team created a game design doc that describes the game at a high level  
* 📖 Design doc lists milestones (that can hopefully be completed by the main event\!)  
* 📖 Design doc contains basic info such as win condition, genre, and target audience

### Encouraged

* Design doc has been updated at least once to show changes in the development process  
* 📖 Design doc has multiple milestones set  
* 📖 Design doc communicates key game mechanics, the main character, and the setting

### Extra Credit

* 📖 Design doc has been maintained through development with multiple updates and a changelog  
* 📖 Design doc has UI mockups  
* 📖 Design doc has all core game mechanics, all important characters, and info on all levels or scenes

Explanation 

Design documents are an important tool in software development to help keep the team focused on a clear and unified vision. If one of your team members doesn’t understand what the team is trying to make, it could lead to arguments or other slow-downs as you try to get everyone aligned. Additionally, design documents help drive everyone towards milestones which allows your team to demonstrate mechanics even before your game is completed, which can be critical to receive feedback early in the development cycle\! 

As you work on your game, you’ll probably find that things will change: requirements will be replaced or removed, your story will develop, and you’ll probably miss some deadlines. For higher tiers of this achievement, show how your document changed, and covers most (if not all) of your game. The design document needs to be maintained, and complete\! It should be included in your team's Game Portfolio.

## **Mechanics 📖** {#mechanics-📖}

Game tasks the player with completing various goals however the specific processes and environments in which the player accomplishes those goals can vary greatly.

### Standard

* Player is given more than one mechanic for interacting with the game (for example, teleportation, rewinding time, picking up items, jumping, sprinting, etc.)  
* Game has at least one, well-crafted and well-designed environment (for example, level, biome, map, etc.)

### Encouraged

* Game has notably different mechanics implemented into the game (jump and double jump are not notably different)  
* 📖 Game design doc describes multiple settings that could showcase mechanics. Examples:  
  * Ice level that changes how the player moves  
  * Dark dungeon that requires torches or light sources  
  * Space station with low gravity 

### Extra Credit

* Game has at least one novel or unique mechanic (other than move, jump, pick up item, sprint, etc.)  
* Player can have a unique experience between playthroughs

Explanation 

The main objective for this achievement is that your game has more than one setting for players to explore implemented into the game, and more than one way to explore each setting. This variation helps keep your players engaged through the whole experience of your game. Even the most interesting story can feel boring if only a single mechanic is used for hours on end.

Your varied settings could be independent levels, separate areas in one level, or the same area in a level but different textures and/or models. Mario Odyssey demonstrates this concept well by implementing desert levels (quicksand), ice levels (sliding with movement and needing cold weather clothes), and water levels (geysers). There are great examples of the environment impacting the mechanics. Various mechanics could be gliding, persuading, crafting, eating, staying on rhythm, or other ways your player can interact with the world\!

For higher tiers, focus on finding a unique mechanic that your game can highlight. Finding a fun way for a player to interact with your game is key to holding interest\!

## **Target Audience 📖** {#target-audience-📖}

Who is the target audience/demographic? What concessions had to be made for them? Does the game adapt to the player? 

### Standard

* 📖 Document at least one target audience (kids like me, adults, my friends, etc.)  
* 📖 Document at least one feature or design consideration to better fit the target audience

### Encouraged

* 📖 Document at least one specific and well-defined target audience (for example, middle-aged grand strategy gamers, teenage casual gamers, elementary age Roblox fanatics, etc.)  
* Team held design reviews to ensure game continued to be fun/engaging for the target audience  
* Game has been playtested by the target audience(s)

### Extra Credit

* 📖 Document playtesting feedback by members of the target audience(s) who are not team members  
* Game mechanics, controls, color scheme, etc. all fit the needs of the target audience(s)  
* Game has settings (difficulty, color blind mode, etc.) intended to better adapt to different audiences

Explanation 

Every single game has a target audience: the people by which the game was designed to be played. A few examples would be “elementary school students learning to type,” “commuters with long public transit rides,” or “11 to 18-year-olds who socialize through games." To make your game appeal to the audience you have chosen, you will have to make some decisions about what is appropriate for those players. For example, a commuter likely wants games that can be quickly picked up and put down without long play sessions or loading screens. In contrast, people trying to socialize in-game may desire a more immersive experience. Keeping your target audience in mind, helps avoid adding features or requirements to your game that your players dislike. While there is no right or wrong target audience choice, you need to make a convincing argument for your audience and related choices. 

For higher tiers, make sure as much of your game as possible is built around your target audience. Simply saying you have a target audience doesn’t mean much if there are no design considerations that go into the game's implementation.

## **Evolution of Design 📖** {#evolution-of-design-📖}

How was the game initially conceptualized? What changed when real people playtested? What was axed due to time or other constraints?

### Standard

* 📖 Document meeting notes indicating changes in mechanics, assets, or other aspects of gameplay  
* Game has been playtested (play from the beginning to the end) 

### Encouraged

* 📖 Document images showing early game builds with features, assets, characters, etc., that were dropped due to scope or time issues (take screenshots every now and then\!)  
* 📖 Team conducts a playtesting session and documents feedback and observations

### Extra Credit

* At least one playtesting session was recorded (Screen capture is perfect)  
* 📖 Game has been playtested by non-teammates on at least two separate occasions with team documenting feedback after each session

Explanation 

Playtesting is an important part of any game creation process. It allows your team to verify that the game you designed is fun, engaging, and communicates what you were trying to communicate. Additionally, it helps identify where players may be confused or lost, even if it was clear to you as the creator. 

A good playtesting session should show you areas that need improvement, things you’ve done well, and any additions you may need and haven’t considered. It’s a great way to get some feedback on your game before you have a panel of judges looking over your work and giving you a score\! 

For higher tiers, make sure to show how your game evolved. Playtesting sessions often provide useful feedback to shape your game and recording a session can highlight where the player had issues. Playtesting is also more useful if the person doing the playtesting is not on your team\! 

## 

## **Performance Review** {#performance-review}

How does the game communicate with the player? How is the player taught new mechanics?

### Standard

* Game has at least 1 indicator for the player’s state (health bar, experience, resources, score, etc.)  
* Game provides periodic feedback to the player (getting points, leveling up, etc.)

### Encouraged

* Game has at least 2 indicators for the player’s state   
* Game provides instruction on how to use new mechanics as they’re introduced

### Extra Credit

* Game provides specific and continuous feedback to the player in more than 2 ways beyond numbers or bars.  
  * Examples include, but are not limited to: camera shake, sound effects, environmental changes, NPC reactions, etc.  
* Game includes audio or visual feedback cues that indicate a player's performance when interacting with the game's mechanics[^3]

Explanation 

It is important for your game to effectively communicate information to your players so they understand how well they’re doing. Health, money, and carry weight are all important pieces of information to the player but aren’t usually visible in the game world. While numbers or displays may be sufficient to show these values to a user, more complex or subtle cues can provide a more immersive experience. 

Similarly, your game needs to communicate effectively to players about what they can do and how well they’re doing it. Your game should teach players about mechanics and how to use them as they’re introduced. This usually means that you start the player off with a few simple features/mechanics, allow the player to get used to them, and then add more until the player has full control of every mechanic.

# Art and Assets {#art-and-assets}

## **Artistic Expression 📖** {#artistic-expression-📖}

Make your game visually unique and give it your own flair\! 

### Standard

* Create 5 or more custom visual assets  
* 📖 Create a game logo and icon (not part of the 5 or more count)  
* 📖 Cite all sources for assets not created by the team (those from creative commons, libraries, your game engine, AI tools)

### Encouraged

* Create more than 10 custom visual assets  
* Create title art or a splash screen (not part of the more than 10 count)  
* 📖 Document the tools and processes used for creating visual assets

### Extra Credit

* 📖 Have a reviewer, ideally someone outside your team, assist with an Art Critique[^4] and document their feedback as well as any changes your team made to address feedback

Explanation 

Graphical assets include everything from character sprites to plant models, particle effects to skybox/backgrounds, and even UI elements such as buttons. These assets do not necessarily need to be implemented into the game to count, but they should be intended to be included. Only assets created by the team will count for this achievement. Any public domain, creative commons, or outside the team assets used must be cited\! Editing an asset made by someone outside your team does not count toward this achievement. Remember, you cannot pay for assets (nor commission).

In addition to the assets in the game, creating a logo and title screen art are great ways to get people excited for your game. Though often simple images, the creative process to create a logo and icon are often challenging and require multiple passes before everyone is happy\! 

## **Hey DJ 📖** {#hey-dj-📖}

Create a unique auditory experience to provide depth and immersion for your game.

### Standard

* Record at least 5 voice lines or sound effects made by the team (footsteps, light switch, running water, crunching leaves, etc.)  
* 📖 Cite all sources for assets not created by the team (creative commons libraries or your game engine)

### Encouraged

* Create one original music track (at least 30 seconds) to be included into the game as background music, title music, etc  
* 📖 Document the tools and processes used for creating sounds effects and music

### Extra Credit

* Create 3 or more music tracks (\~30 seconds each)  
* 📖 Have a reviewer, ideally someone outside your team, provide feedback for at least one of your music tracks and document their feedback, as well as what changes (if any) your team made to address feedback. This feedback should be focused on how the track could be tailored to fit your specific game.

Explanation 

The music and sounds of your game help draw a player in and create a layer of immersion that isn’t possible via any other method. Hearing your character walk across leaves, that satisfying thunk after pulling the correct lever, dings and bells for finding important objects, or playing emotional music all help enhance the scene and pull your players in.

Only assets created by the team will count for this achievement, however, any public domain or creative commons assets used must be cited\! 

For higher tiers, create multiple music tracks that are intended for use within the game. These can be title screen tracks, background music for a level, victory anthems, or any other musical applications that enhance your game.

## 

## **Cohesive Look and Feel** {#cohesive-look-and-feel}

Everything fits together nicely, and nothing stands out.

### Standard

* Have at least one color palette (consistent set of colors used everywhere)  
* Have at least one soundscape (consistent set of sounds used everywhere)

### Encouraged

* Assets are all of a consistent scale, resolution, and style; no assets are unintentionally jarring  
* Sounds and music are a consistent volume, quality, and style; no sounds feel out of place or break player immersion  
* Most player actions have sounds and animations associated with them

### Extra Credit

* Audio and visual assets have depth that fit in with the game’s setting and world  
* Elements in the game’s world have visual cues to indicate interactivity or facilitate immersion  
* All player actions have sounds and animations

Explanation 

No one wants to play a game where half the assets are high resolution and interesting to look at while the other half are blurry and hard to identify. Similarly, nobody enjoys playing a game if the ambient sounds are quiet, but flipping a switch is so loud that you throw your headphones. While there is certainly a time and place for jarring visual or auditory experiences, it must be intentional\! 

In addition, color matters too. One (or more) color palettes can improve your player's ability to identify items in game and help scenes to feel cohesive. Choose a type of color palette (Monochrome, Analogous, Complementary for example) and be ready to explain your choice. Displaying your palette along with your concept art is a good idea and can help build a cohesive brand.

For higher tiers, make sure player actions have sounds associated with them and make sure all assets fit into your world and soundscape. 

## 

## **High Fidelity** {#high-fidelity}

Game uses particle/atmospheric effects and animated graphics to enhance the game.

### Standard

* Create one particle or atmospheric effect (rain, fog, smoke, sparks, etc.)  
* Choose one:   
  * Create at least one animation sprite sheet (4 or more frames)  
  * Create at least one rigged and animated model 

### Encouraged

* Create 2+ particle or atmospheric effects  
* Choose one:   
  * Create 2 or more animation sprite sheets (4 or more frames each)  
  * Create 2 or or more rigged and animated models

### Extra Credit

* All particle or atmospheric effects used in the game are created by the team to enhance the look and feel of the game  
* All animation sprite sheets or rigged and animated models are created by the team

Explanation 

Have you ever sent something up in a satisfying puff of smoke, or had sparkles float around after you've cast a spell? These kinds of effects provide feedback for the player and make the game feel more immersive. 

Animated graphics help make movements and actions feel more realistic. Animated graphics refers to objects and/or characters with multiple frames. Just moving a sprite is not sufficient. It could be a tree swaying back and forth in the background, a walking animation, a bird flapping across the sky, something growing or hopping, or twirling. They can be simple, as long as they have more than one frame. 

It should be noted that any kind of gore effects or animations not only won’t count toward this achievement but could disqualify your entry\! Remember to keep your games E10+ qualifying. 

For higher tiers, make more effects and animations though some can still be added from open-source libraries. For the highest tier, all effects and animations must be created by the team.

## **Setting the Scene 📖** {#setting-the-scene-📖}

Players are given multiple, unique experiences in intentionally crafted environments

### Standard

* 📖 Document the artistic direction for at least 1 Setting in your game.  
  * This should include the intended color scheme, thematic elements (wintery, spooky, vibrant, etc), and how music and art can be used together for a consistent experience. 

### Encouraged

* 📖 Document the artistic direction for 2 or more Settings in your game.  
* 📖 Document how each Setting has multiple unique artistic aspects that are distinct from other Settings  
  * Examples include having different color schemes, themes, musical aspects

### Extra Credit

* Audio and visual assets and design are consistently tied together for all settings  
  * These assets match the unique style of the current Setting (for example, spooky room plays spooky music, springtime on the farm has upbeat music and lush plant life)

Explanation 

The setting of a game is very important (especially when the theme could be interpreted as a setting). The player should be able to easily understand and feel immersed in whatever setting your game creates. Whether it takes place underground, in space, or on a boat, make sure the setting contributes to the player's experience. As these settings are defined, they'll also take on a larger role in describing the artistic approach of your game. If your setting is a school, for example, it would be expected to have the school colors be consistent in the scenes. An underwater setting can go beyond simply being blue tinted, and can instead explore the colors of various fish and plants\!

Incorporating different environments into the game can be challenging depending on your genre, but this does present unique ways for your team to express themselves\! Even card games can have unique table designs and card art\! Exploring these directions can lead to interesting gameplay effects. Maybe you end up with an icy cave setting for your card game, which inspires your team to add gameplay mechanics around cards being periodically frozen if they aren't moved\! This can be a great avenue for inspiration and exploration.

# Theme And Story {#theme-and-story}

## **Thematically Inclined** {#thematically-inclined}

OGPC provides a theme, you make it your own\!

### Standard

* The season’s theme is present in the game.

### Encouraged

* The season’s theme is clearly connected to the story or mechanics.

### Extra Credit

* The season’s theme is consistently tied to multiple aspects of the game – music, mechanics, setting, visuals, etc.

Explanation 

The theme ought to be evident in every aspect of your game from sound effects to core mechanics. Game objects, dialog, sprites/models, music, and level design all need to be consistent with one another and relate to the theme. A cohesive theme ties your game together and makes it more interesting and immersive.

This is not to say that your game can’t have aspects that vary from the provided theme, just be sure that everything is consistent within your game's universe. You can have lots of fun here, we encourage students to find creative interpretations of the theme, just be sure that everything is integrated and consistent. The game should be truly integrated with the theme across setting, story, music, visuals, and mechanics. 

For higher tiers, tie the theme into most (or hopefully all) of your game. The theme should not be an interchangeable "coat of paint" on top of your game. Make sure it is well integrated into game design and mechanics. 

## 

## **Intentional Design📖** {#intentional-design📖}

Plan out the theme, progression, player choices, and potential endings.

### Standard

* 📖 Create a rough storyboard for at least 1 scene in the game 

### Encouraged

* 📖 Create a storyboard for the player’s full path through the game (high level overview for the entire game)

### Extra Credit

* 📖 Create detailed[^5] storyboards for all important moments in the game: opening, climax, key turning points, etc. which include:   
  * Major characters involved  
  * Mechanics that the player is expected to interact with  
  * Description of the scene's importance to the overall story

Explanation 

A storyboard is a very important part of your design process and story development. A storyboard helps you plan how a scene looks, who moves where, and what parts of the story are progressed. Your storyboards should include descriptions that describe what is happening, and why the scene is important. A copy of the storyboards should be present in your Game Portfolio.

For higher tiers, include more about your story. The more important moments you can include the better\! For the highest tier, make sure that all of your important moments have detailed storyboards. Planning out the game's major moments ahead of time is incredibly useful for ensuring the game remains consistent for the player and that each scene has a clear purpose for being included.

## 

## **Campfire Stories 📖** {#campfire-stories-📖}

Every good story needs a cast and a good ending.

### Standard

* 📖 Create an outline that shows the major events of the story  
* 📖 The story has multiple characters 

### Encouraged

* 📖 The game has a fleshed-out story with multiple sections  
* 📖 At least 1 character is developed

### Extra Credit

* 📖 Story has a clear beginning, middle, climax, and end.   
* 📖 Story has at least 1 secondary or supporting character who is developed equally with the main character

Explanation 

Everyone loves a game with a captivating story and a satisfying ending. Well-developed characters and fleshed out stories will draw your players in and make them want to come back to your game again and again. Planning ahead and tackling your story early in your game’s development will help the team stay on track and help ensure all team members are on the same page. 

You should have an outline for your story which acts as an overview of your story including major plot points and other key decisions. There’s no strict length or word count, as long as you’ve covered everything important and can walk a judge through your story. 

Good stories also generally have multiple characters. Sometimes it’s an old friend or enemy, maybe a love interest, or a close family member, but there should be at least one other character in the story. The who, what, when, where, and how of your story are completely up to you as long as your story starts somewhere, has some progression, and ends somewhere else, developing characters through your plot points. 

For higher tiers, make sure your story builds towards a climactic event and finishes by concluding your major plots. Include a supporting character which your story spends some time on. They can’t just be a quick blip on the radar, they need to recur and have a decent place in the story. To be clear, supporting characters are not an enemy type. They are characters in your story, they might be an enemy, they might be a companion, they might just be a narrative voice like in Bastion, but they need to have character development.

## **Scratching the Surface 📖** {#scratching-the-surface-📖}

Games are much more immersive when there is a deep story and fleshed-out world to explore. Everything for this achievement must be expressed via gameplay as dialog, narration, carvings, graffiti, audio logs, books, etc.

### Standard

* 📖 Write a background for at least 1 location or character and explain how it is presented to the player  
* 📖 Write at least 1 bit of backstory for the world or environment of the game and explain how it is presented to the player

### Encouraged

* 📖 Write a background for multiple locations or characters and explain how they are presented to the player  
* 📖 Write multiple bits of backstory for the world or environment and explain how they are presented to the player

### Extra Credit

* 📖 Create a reference guide (printed or uploaded to TMS) for important elements of the story including:  
  * An illustrated glossary of all characters and locations  
  * Characters and locations that were not implemented in your game  
  * Ability, power, and item descriptions

Explanation 

Players love games with rich lore and an expansive universe to explore. Hints of the universe continuing around the events of your story help to build immersion and keep players coming back to discover more. 

Think about the characters in your game and write some detailed backstories for them. Consider where and when your game takes place and write some history. Think about how you want to portray these histories to the player, whether books, notes, or graffiti, and make sure the player is capable of piecing together at least a little bit of your stories\! 

For higher tiers, create a reference guide to the story, background, and characters present in the game. This reference guide should not be your design doc, this should be a fun supplement to your game that a player would be interested in exploring. The goal is to provide additional context and flavor for your game, as well as expand on details that didn't quite make it into the playable game itself.

## **Research & Development 📖** {#research-&-development-📖}

Research the season’s theme and document how that exploration impacted game development.

### Standard

* **📖** Conduct research on the season’s theme and write a paragraph (at least 150 words) describing what you found, including at least 1 source.  
  * Focus on describing specific details from the research that can be explored further and how they could apply to your team's project.

### Encouraged

* **📖** Document how your team's research can tie into and influence your game in specific ways. Explore how what you learned can guide the music and art direction, as well as game mechanics.  
* Team clearly communicates how they explored the theme and how their understanding of it developed through their research and development

### Extra Credit

* **📖** Document additional research your team took as a result of the theme exploration research. Explore which topics were particularly interesting, and how could learning more about them enhance your game?  
* Team is prepared to provide a clear presentation on their understanding of the theme and how it applies to their project  
* Show how the team's understanding of the theme changed as the game's development progressed

Explanation 

In most creative fields, it is rare to encounter a scenario where the first design that comes to mind is truly the best. Painters practice, books are edited, and even video games change over time as they explore their theme and test out how they can best express their creative vision. A critical step in designing a successful project is to research the themes that are present in order to understand how they can best be expressed. For example, a farming game that has made no attempt to learn about plants, soil, and weather has the potential to miss out on entire systems that add depth and creativity. Each one of those topics can again be expanded to learn about an entire new domain\! While not every project needs to be grounded in reality, this additional exploration during development opens doors that can lead to fun innovations. Be prepared to share how your research helped elevate your project.

# Management {#management}

## **Team Players 📖** {#team-players-📖}

The team interacted in a respectful manner, communicated well, and overcame challenges together.

### Standard

* Team members met (in person or virtually via Zoom, Hangouts, Discord, etc.) at least once a month for a group work session  
* Team describes a challenge they faced while working together as a team

### Encouraged

* 📖 Team members met (in person or virtually via Zoom, Hangouts, Discord, etc.) at least once a month and kept a detailed record of what was worked on at each meeting 

### Extra Credit

* 📖 Team members met (in person or virtually via Zoom, Hangouts, Discord, etc.) at least once a week and kept a detailed record of what was worked on at each meeting

Explanation

Communication as a team is vital to creating a positive team environment as well as a polished game. Having trouble figuring out what to work on next? Send a message or email out to the group. Not sure how this bug is happening, or why Gimp isn’t working? Send out a message to everyone. Found a cute cat picture you want to share with everyone? Make sure your whole team gets to see it\! There are many free tools you can use such as Slack, Remind, or even just email. Pick a tool and use it through the development cycle to stay connected with your team.

For higher tiers, make sure you communicate as often as possible. Using review sessions and weekly check-ins can help keep the team organized and on schedule and answer questions that might be blocking progress.

## **Public Relations** {#public-relations}

Be professional\! Be ready to pitch your game and make it memorable.

### Standard

* Team members all wear coordinated clothing (printed, matching colors, or matching styles / themes)  
* Appoint a team spokesperson who is ready to introduce your team and present your “elevator pitch”  
* Create something for your table that clearly identifies your team (sign, banner, flag with your team name, etc.)

### Encouraged

* Create a development blog/vlog/social media page that contains 5 or more posts focused on at least 2 different aspects of the development process (coding, art, etc.)  
* Make your table appealing to visitors with at least 1 item of interest that will make someone want to stop by your table (a candy bowl, “swag” like stickers or pins, a small model of a game character)

### Extra Credit

* Discuss how your game was advertised to the public before OGPC (playtest party, public blog, public release, posters in the school?)  
  * Tell us how you engaged beyond the OGPC community about your game

Explanation 

You know what looks cool? A whole team in matching outfits\! While some teams do make T-shirts for their team, you do not have to buy new clothes for your team to look coordinated. You can all wear jeans and black t-shirts, or dress pants/skirts with white shirts. You could even dress up like characters in your game. You decide on your team’s look and make sure everyone matches.

You don’t have to spend much money to really bring the team spirit. You can paint or cut out a banner, you can design a brochure on the computer, or even have fun with handmade pins\! Big shows like PAX and E3 are full of handouts to get people to remember the games and visit booths. Screenshots, descriptions, team information, game logo and your team logo are all good things to add to your items.

For higher tiers, describe how you marketed your game to the public before OGPC. From advertising within your school, communities, or other circles, getting public attention is a great way to get early feedback on how your game will be received and presents opportunities to make it even better\!

## **Project Management** {#project-management}

Use tools to help manage work: issue tracking, milestones, task management and more.

### Standard

* Team uses some form of task management tool (Trello, Jira, Asana, Excel, GitHub Projects) and is prepared to present a dashboard (or equivalent) during judging

### Encouraged

* Task management uses some form of grouping (tasks and subtasks)  
* Tasks are assigned owners and state is tracked as work is completed  
* Include bug management with tasks

### Extra Credit

* Task management is broken into sprints or other milestones  
* Add weights/priority to tasks

Explanation 

Project management isn’t easy, but it's a crucial step in keeping a game on schedule and having it ready to compete with at the Main Event. Tools such as Trello or Jira (feel free to use whatever tool works best for your team) can make this process easier/faster and having everything in an electronic format makes it easier for everyone to be checking in even if they're working on tasks from home.

For higher tiers, group your tasks (the more tiers the better), track completion of individual tasks and sprints, use weights on your tasks, and track your bugs. This might seem like a lot at first, but it is how real-world projects are managed\! The grouping of tasks, weighting of tasks, and tracking of tasks makes sure that work gets done and that nothing is being forgotten about. This process also helps prioritize which tasks to take on next to make sure your team is on track. Generally, there are fewer milestones than there are tasks: think of "complete all character animations" or "complete rough draft of story" as milestones and "make a walking animation" or "record a dialog line" as smaller tasks. Assign time estimates for all of your smaller tasks, add them up to see how long you expect your milestones to take.

## **Checking the Boxes** {#checking-the-boxes}

Complete TMS. All of it. I dare you.

### Standard

* Fill out at least these fields on TMS: "About this Entry", Game name, Team member list  
* Include a basic description of the game  
* Leave no remaining placeholder images (team members, team logo, game poster)

### Encouraged

* Fill out all game entry page details on TMS  
* Include a playable link or download link to your game  
* All team members are linked to game entry  
* Include more than one sentence for the About section and the Instructions section

### Extra Credit

* Game entry on TMS has 10 or more images (screenshots showing off different aspects of the game, mock “box art”, concept art, images of the team at work, etc.) and all images include descriptions  
* Include a full game description (200 or more words, think Steam store page), instructions, etc.  
* All team members have appropriate roles set in TMS and have profile images, and a team group image is included

Explanation 

The Team Management System at https://tms.ogpc.info/ allows you to publish your game to the world on the OGPC site. It provides a platform for you to describe your game, your team, and how your game was created. Best of all, it allows others to play your game and check out other games.

No game on Steam or Epic would sell well without all the details filled out. TMS has sections for team logo, game logo, team group photo, and game screenshots. Make sure you add logos/screenshots/images wherever there’s space\! Not only is it worth the achievement, our awards presentation gets generated directly from TMS, so you don’t want to be the team with “NO PICTURE” next to its name\!

For higher tiers, you’ve got space for pictures on TMS, but you can also upload your game or link to it so people can play it. It’s so much fun to be able to play everyone else’s game, so make sure you give teams the chance to play yours. 

## **Hype Train** {#hype-train}

The Game Trailer is well put together, and acts as an effective marketing piece to highlight the game's mechanics, theme, and story. The trailer should be designed to entice a viewer into wanting to play or know more about your project.

### Standard

* Trailer video is submitted to TMS  
* Trailer is scripted, well-practiced, and within the time limits (see Competition Manual)

### Encouraged

* Trailer video has well-balanced, normalized audio (nothing is ear-blastingly loud or unintelligibly quiet)  
* Trailer includes in-game footage  
* Trailer is edited (no mistakes, blunders, or awkward gaps)

### Extra Credit

* Create at least one additional trailer, promotional video, or behind the scenes video (at least 1 minute long)  
* Videos have reasonable special effects (titles, fades, transitions, etc.)

Explanation 

Do you drool over videos for the newest games on Steam and YouTube? It’s time to make your own\! Capture some gameplay, add some titles, maybe even create a custom scene. Watch a few game trailers to see what you like about them, and then make something similar for your game. Some movie maker software even makes it easy to combine clips with music in different styles. Make sure to use music and voice clips that you have permission to use (same rules as your game assets) and don’t forget to cite them at the end. Even better, use your own content\!

For higher tiers, make sure that everything fits together well, use clips of gameplay from your videos with your voices, and even use a storyboard for the videos just like for your game’s story. If you feel really ambitious, make an additional video for your game in a different style than the required videos. Trailers, promotional videos, and behind the scenes videos generate hype and help draw people into your game. Everyone loves learning a little more about their favorite games\!

# Changes and Amendments {#changes-and-amendments}

The Oregon Game Project Challenge reserves the right to change, amend, modify, suspend, continue, or terminate any or all rules and regulations of the main event, including achievements, either in an individual case or in general, at any time without notice.

Change Log:

November 2025 – First release updated for 2025-2026 challenge year

[^1]:  Code should be easy to read with simple, descriptive names and easy to follow logic. This also includes comments, tabbing, semicolons, and functions that are as simple as possible (avoid putting all logic into single functions that do everything\!). Visual coding languages (such as Scratch) should be grouped into logical sections and be labeled. 

[^2]:  Standard testing frameworks are tools that are commonly used to write and execute unit tests for software projects. These include tools such as Jasmine (many languages), Crispy (GameMaker), Pytest (Python), or Jest (JavaScript) depending on what language you use. Some engines provide their own frameworks, such as Unity Test Framework.

[^3]:  For higher tiers, feedback provided to your player should be delivered in a manner that fits the theme of your game. For example, a common technique in farming games is to change the color of the soil when a plant has been watered recently. In addition, the feedback should relate to how well the player is using the mechanics and provides indication or reward for excellent execution. For example, a perfectly timed double jump could create a special particle effect, maybe the player goes slightly farther, or even makes a “hya\!” sound\!

[^4]:  An Art Critique is a collaborative process which reviews artistic works to explore how they can be improved. It is critical that this process is done with care, as one's artwork is often a deeply personal expression. This process must be approached with the intention of focusing on how the artwork can be tailored to fit the overall project's theme and to ensure a consistent stylistic approach.

[^5]: Detailed storyboards should include a brief description of each major scene. These descriptions should include the main characters involved, the scene's significance to the overall story, and how the player is expected to interact within the scene. The intention is to ensure that each scene fits in with the overall vision of the game's story or experience.

[image1]: <data:image/png;base64,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>

[image2]: <data:image/png;base64,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>