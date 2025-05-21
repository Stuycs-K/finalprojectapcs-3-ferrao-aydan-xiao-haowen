
# Technical Details:
We will be doing the Neon White spinoff making the player a small cube. At this moment, we plan on having 5ish levels. Each level will have enemies that move in straight line patterns, and basic platforming mechanics. There will also be cards that give you weapons such as a normal gun or a sword. Each level will end with a boss that will allow you to beat the level. We plan on having a title screen that you can press esc to go back to. For now there won’t be a level select screen because it’s processing. The player will move with WASD and attack with the mouse once they weapon from the cards on the ground. The weapon will act like a hit scan vector. We plan on creating 3 types of enemies, melee enemies, ranged enemies, and big boy enemies, and each boss will be unique to the level. No boss bar for now

Technical Details: For the actual weapons, we plan on the PVectors we learned about to calculate the actual rays that we need to calculate the hitscan weapons firing, enemy attacks, and basically all interactions between each character. We start off with a katana, which will just be a gun with a small range. When we fire, the ray will check for the first thing it hits, if it's a wall, it will not register. If it hits an enemy, they will turn into a card.
Timer at the top of the screen when you finish the game.

Planned cards
Yellow card: pistol 1 pellet with 1 damage
Red card: shotgun 5 pellets with 1 damage
Blue card: sniper 1 pellet with 5 damage
Green card: uzi with 1 pellet 1 damages
Purple: Grenades that can boost you(if we have extra time) or explode an enemy


# Project Design

We will be updating this UML chart as we start each section of the project but this is a very preliminary class breakdown:
[Chart] (https://lucid.app/lucidchart/401401a4-e652-4dc1-8976-b34f544322b0/edit?beaconFlowId=3BCE03189E315A6C&invitationId=inv_6787129b-a0f5-45ba-897f-db44a7bc0a4f&page=0_0#)


# Intended pacing:

Since Haowen is more familiar with game mechanics, he will work on the level design. Creating the platforms of each level, and designing the actual levels. Aydan will begin with creating the player and hopefully getting the cameras working with the player. Aydan should be able to complete his portion quicker so he will also create the enemies interface and weapons abstract class. Then, at least we plan on Haowen taking the 5 weapons, and Aydan taking the 3 enemies to try and fix the attacking + camera issues that will most definitely occur. After that, putting it together will be both Aydan and Haowen.

Planned timeline: [Timeline] (https://lucid.app/lucidspark/44df384e-0c93-43f9-a075-62d0a98d42f0/edit?page=0_0#)
