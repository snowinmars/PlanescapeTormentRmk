// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMENGINE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMENGINE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48686 /* ~You see a cube with two arms, two legs, and two small wings sprouting from its sides. On the front of the cube is an animated face. As you approach, the creature focuses its eyes upon you.~ */
  IF ~~ THEN REPLY #48687 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #48688 /* ~Ignore the creature.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #48689 /* ~"Greetings." The creature speaks with a monotone, sexless voice.~ */
  IF ~~ THEN REPLY #48690 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #48691 /* ~"Never mind. Farewell."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.1 5.1 6.2 7.1 8.1 9.1 10.2 11.3 12.2 13.1 14.1 15.1 16.1 18.0 19.1 21.0 26.0 27.0 28.2 29.1 30.2 31.1 34.0
  SAY #48692 /* ~The creature continues to look at you blankly. "State your question."~ */
  IF ~~ THEN REPLY #48693 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #48694 /* ~"What are you?"~ */ GOTO 6
  IF ~  !Global("Rubikon_Direct","GLOBAL",3)
~ THEN REPLY #48695 /* ~"What is this place?"~ */ GOTO 9
  IF ~  Global("Rubikon_Direct","GLOBAL",3)
~ THEN REPLY #48696 /* ~"What exactly is Rubikon capable of?"~ */ GOTO 19
  IF ~  Global("Rubikon_Direct","GLOBAL",3)
~ THEN REPLY #48697 /* ~"I want to create a dungeon to explore."~ */ GOTO 22
  IF ~  Global("Portal_Lens","GLOBAL",1)
~ THEN REPLY #48698 /* ~"I want to use the portal lens to travel somewhere."~ */ GOTO 25
  IF ~  !Global("Rubikon_Direct","GLOBAL",3)
~ THEN REPLY #54222 /* ~"How do I get out of here?"~ */ GOTO 31
  IF ~  Global("Rubikon_Direct","GLOBAL",3)
~ THEN REPLY #66393 /* ~"Are there any dangers associated with Rubikon that I should be aware of?"~ */ GOTO 32
  IF ~~ THEN REPLY #68063 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #48700 /* ~"We are modron."~ */
  IF ~~ THEN REPLY #48701 /* ~"Your name is Modron?"~ */ GOTO 4
  IF ~~ THEN REPLY #48702 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #48703 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #48704 /* ~"We are modron. We do not have a name. We are modron. All that you see here are modron. We are one."~ */
  IF ~~ THEN REPLY #48705 /* ~"If you don't have names, how do you tell one modron from another?"~ */ GOTO 5
  IF ~~ THEN REPLY #48706 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #48707 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #48708 /* ~There is a pause as the modron considers your question. "We know. We are modron. We are a part of the whole. Just as you recognize the hand that is part of the arm, we recognize each part of the whole."~ */
  IF ~~ THEN REPLY #48709 /* ~"What about you, the individual..."~ */ GOTO 27
  IF ~~ THEN REPLY #48710 /* ~"That's interesting. I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #48711 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #48712 /* ~"We are modron, we are quadrone."~ */
  IF ~~ THEN REPLY #48713 /* ~"What is a modron?"~ */ GOTO 7
  IF ~~ THEN REPLY #48714 /* ~"What is a quadrone?"~ */ GOTO 8
  IF ~~ THEN REPLY #48715 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #48716 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.0
  SAY #48717 /* ~"We are modron. Our race is identified as such."~ */
  IF ~~ THEN REPLY #48718 /* ~"Then what is a quadrone?"~ */ GOTO 8
  IF ~~ THEN REPLY #48719 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #48720 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.0
  SAY #48721 /* ~"Within our race, we are identified as type quadrone."~ */
  IF ~~ THEN REPLY #48722 /* ~"Then what is a modron?"~ */ GOTO 7
  IF ~~ THEN REPLY #48723 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #48724 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.2 31.0
  SAY #48725 /* ~"This is the Rubikon Dungeon Construct Project."~ */
  IF ~~ THEN REPLY #48726 /* ~"What exactly is that?"~ */ GOTO 10
  IF ~~ THEN REPLY #48727 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #48728 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #48729 /* ~The modron begins to emit a soft humming sound as it answers you. "Rubikon: Project goal is to determine the dynamics, both social and asocial, surrounding the environment commonly construed as a dungeon and to attempt to explain the aberrations that tend to occur in such environments."~ */
  IF ~~ THEN REPLY #48730 /* ~"How do you intend to do that?"~ */ GOTO 11
  IF ~~ THEN REPLY #48731 /* ~"What aberrations are you talking about?"~ */ GOTO 12
  IF ~~ THEN REPLY #48732 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #48733 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #48734 /* ~"Rubikon is capable of forming a series of rooms linked in such a fashion as to form what is commonly referred to as a *dungeon.* Each dungeon can have one of three difficulty settings: easy, normal, or hard. The dungeon is then populated with monsters, traps, and treasure, according to the difficulty level chosen. After creation the dungeon can be fully explored." The modron begins to emit a low hum.~ */
  IF ~~ THEN REPLY #48735 /* ~"What is that humming sound?"~ */ GOTO 30
  IF ~~ THEN REPLY #48736 /* ~"You said something about aberrations?"~ */ GOTO 12
  IF ~~ THEN REPLY #48737 /* ~"Interesting. I'd like to try out one of these dungeons."~ */ GOTO 13
  IF ~~ THEN REPLY #48738 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #48739 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.1 30.0
  SAY #48740 /* ~"Queries to be answered: What attracts people to dungeons? Why do people often seek to enter them if they are places of such danger? Why are dungeons there in the first place? What are the dynamics of a workable dungeon? We do not understand..." It pauses. "I... do not..."~ */
  IF ~~ THEN REPLY #48748 /* ~"Interesting. I'd like to try out one of these dungeons."~ */ GOTO 13
  IF ~~ THEN REPLY #48749 /* ~"You started to say *I* instead of *we*..."~ */ GOTO 28
  IF ~~ THEN REPLY #48750 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #48751 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.2 12.0 28.0 29.0 30.1
  SAY #48752 /* ~There is a significant pause before the modron answers you. "Request denied... Project halted due to... accident."~ */
  IF ~~ THEN REPLY #48753 /* ~"What accident?"~ */ GOTO 14
  IF ~~ THEN REPLY #48754 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #48755 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #48756 /* ~"Dungeon construct became unstable, cause uncertain. Fail-safes activated causing dungeon to collapse, cause uncertain. Portal lens malfunctioned causing contact with home plane of Mechanus to be severed, cause uncertain. Reset of dungeon necessary."~ */
  IF ~~ THEN REPLY #48757 /* ~"Then why don't you reset it?"~ */ GOTO 15
  IF ~~ THEN REPLY #48758 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #48759 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #48760 /* ~"Reset can only be initiated by project director. Project director disintegrated. Portal lens has malfunctioned and contact with Mechanus severed. Cannot acquire replacement director from Mechanus."~ */
  IF ~~ THEN REPLY #48761 /* ~"Let me get this straight. You can't reset without a director, but you can't get a director without resetting?"~ */ DO ~SetGlobal("Rubikon_Direct","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #48762 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #48763 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #48764 /* ~The modron looks worried and begins to fidget. "Assessment correct. Project halted."~ */
  IF ~~ THEN REPLY #48765 /* ~"Look, I'm an adventurer and I've been through some dungeons in my day. Why not let me be your director?"~ */ DO ~SetGlobal("Rubikon_Direct","GLOBAL",3)
~ GOTO 17
  IF ~~ THEN REPLY #48766 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #48767 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #48768 /* ~The room is suddenly filled with a buzzing sound that just as suddenly subsides. "Assistance welcome. You are now project director. Advise on next task."~ */
  IF ~~ THEN REPLY #48769 /* ~"Reset the dungeon."~ */ DO ~FixEngineRoom()
GenerateModronMaze()
~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #48770 /* ~"Initializing reset..." The room is filled with a low thrumming sound that can be felt rather than heard. "Collapsing existing dungeon..." The sound rises in power until the floor begins to vibrate. "Initializing new dungeon..." The sound rises in volume until you think your head is about to explode. Suddenly the room goes quiet. "Reset complete. Dungeon construct status: Easy. Awaiting further instructions, Director."~ */
  IF ~~ THEN REPLY #48771 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #48772 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 2.3
  SAY #48773 /* ~"Rubikon is capable of forming a series of rooms linked in such a fashion as to form what is commonly referred to as a *dungeon.* Each dungeon can have one of three difficulty settings: easy, normal, or hard. The dungeon is then populated with monsters, traps, and treasure, according to the difficulty level chosen. After creation the dungeon can be fully explored." The modron pauses. "Alternate capabilities are available via the portal lens."~ */
  IF ~~ THEN REPLY #48774 /* ~"What alternate capabilities?"~ */ DO ~SetGlobal("Portal_Lens","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #48775 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #48776 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #48777 /* ~"Rubikon can form a gateway to other locations by temporarily attaching itself to known, existing portals. This effect is known as a *portal lens.* This allows use of the portal from within Rubikon without traveling to the portal location."~ */
  IF ~~ THEN REPLY #48778 /* ~"So, if I know of a portal I can go to its destination from here?"~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #48779 /* ~"Correct, director."~ */
  IF ~~ THEN REPLY #48780 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #48781 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 2.4
  SAY #48782 /* ~"Select a difficulty level."~ */
  IF ~  Global("MazeDifficulty","GLOBAL",0)
~ THEN REPLY #48783 /* ~"It's set for easy already, so just create a new dungeon."~ */ DO ~GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",0)
~ THEN REPLY #48784 /* ~"It's set for easy now, change it to normal."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",1)
GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",0)
~ THEN REPLY #48785 /* ~"It's set for easy now, change it to hard."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",2)
GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",1)
~ THEN REPLY #48786 /* ~"It's set for normal already, so just create a new dungeon."~ */ DO ~GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",1)
~ THEN REPLY #48787 /* ~"It's set for normal, change it to easy."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",0)
GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",1)
~ THEN REPLY #48788 /* ~"It's set for normal, change it to hard."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",2)
GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",2)
~ THEN REPLY #48789 /* ~"It's set for hard already, so just create a new dungeon."~ */ DO ~GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",2)
~ THEN REPLY #48790 /* ~"It's set for hard, change it to normal."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",1)
GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",2)
~ THEN REPLY #48791 /* ~"It's set for hard, change it to easy."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",0)
GenerateModronMaze()
~ GOTO 23
  IF ~~ THEN REPLY #48792 /* ~"Never mind, leave it as is."~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1 22.2 22.3 22.4 22.5 22.6 22.7 22.8
  SAY #48793 /* ~"Collapsing current dungeon..." The room fills with a low thrumming sound. "Initializing new dungeon..." The floor begins to vibrate and then all is quiet. "Dungeon created. Awaiting further instructions, Director."~ */
  IF ~~ THEN REPLY #48794 /* ~"That is all for now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.9
  SAY #48795 /* ~"Leaving current settings intact. Awaiting further instructions, Director."~ */
  IF ~~ THEN REPLY #48796 /* ~"That's all for now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 2.5
  SAY #48797 /* ~"State your destination, Director."~ */
  IF ~  Global("AR0100_Visited","GLOBAL",1)
~ THEN REPLY #48905 /* ~"The Hive, near the Flophouse."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0100",[2068.468],0)
~ EXIT
  IF ~  Global("AR0200_Visited","GLOBAL",1)
~ THEN REPLY #48906 /* ~"The Hive, near the Mortuary."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0200",[1748.1940],0)
~ EXIT
  IF ~  Global("AR0300_Visited","GLOBAL",1)
~ THEN REPLY #48907 /* ~"The Hive, near the marketplace."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0300",[1676.1336],0)
~ EXIT
  IF ~  Global("AR0400_Visited","GLOBAL",1)
~ THEN REPLY #48908 /* ~"The Hive, near the Smoldering Corpse bar."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0400",[1965.1662],0)
~ EXIT
  IF ~  Global("AR0500_Visited","GLOBAL",1)
~ THEN REPLY #48909 /* ~"Lower Ward."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0500",[1698.1937],0)
~ EXIT
  IF ~  Global("AR0600_Visited","GLOBAL",1)
~ THEN REPLY #48910 /* ~"Clerk's Ward."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0600",[1865.1806],0)
~ EXIT
  IF ~  Global("AR1400_Visited","GLOBAL",1)
~ THEN REPLY #48911 /* ~"Weeping Stone Catacombs."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR1400",[1993.1747],0)
~ EXIT
  IF ~~ THEN REPLY #48912 /* ~"Never mind. That's all for now. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 26 // from:
  SAY #48913 /* ~You see the modron engineer. "Greetings."~ */
  IF ~~ THEN REPLY #48914 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #48915 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 5.0
  SAY #48916 /* ~"I..." The modron looks confused and pauses for a second. A heated buzzing sound fills the room but quickly passes. "We are modron. We are part of the whole. The whole is modron. There is no other."~ */
  IF ~~ THEN REPLY #48917 /* ~"That's interesting. I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #48918 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 12.1
  SAY #48919 /* ~The modron gives you a concerned look then glances about the room. "You are in error. We are modron. We are the whole... We will not discuss this."~ */
  IF ~~ THEN REPLY #48920 /* ~"All right. I'd like to try out one of these dungeons you mentioned."~ */ GOTO 13
  IF ~~ THEN REPLY #48921 /* ~"I know what I heard. You started to say *I* and..."~ */ GOTO 29
  IF ~~ THEN REPLY #48922 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #48923 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY #48924 /* ~The modron frowns at you. You hear a hint of anger in its voice as it answers you. "No. We are modron. We are a part of the whole. We will not discuss this further." An angry buzzing fills the room then subsides.~ */
  IF ~~ THEN REPLY #48925 /* ~"All right. I'd like to try out one of these dungeons you mentioned."~ */ GOTO 13
  IF ~~ THEN REPLY #48926 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #48927 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 11.0
  SAY #48928 /* ~"Rubikon is a worthy accomplishment and..." It pauses for a moment. "I... We... are content."~ */
  IF ~~ THEN REPLY #48929 /* ~"You said something about aberrations?"~ */ GOTO 12
  IF ~~ THEN REPLY #48930 /* ~"Interesting. I'd like to try out one of these dungeons."~ */ GOTO 13
  IF ~~ THEN REPLY #48931 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #48932 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 2.6
  SAY #66394 /* ~The modron hesitates before answering. "Exit unavailable, project halted..." The room is filled with a confused buzzing sound that suddenly stops.~ */
  IF ~~ THEN REPLY #66395 /* ~"What project? What are you talking about?"~ */ GOTO 9
  IF ~~ THEN REPLY #66396 /* ~"I see. I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #66397 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 2.7
  SAY #68064 /* ~"Yes, Director. Do not become separated from any companions while in the maze. If the maze were to be reset, or a new difficulty setting chosen, anyone left in the maze would be killed."~ */
  IF ~~ THEN REPLY #68065 /* ~"I see... I will not reform my party while in the maze. Anything else?"~ */ JOURNAL #68071 /* ~While in the modron maze, I cannot reform my party. If the maze were ever reset or the difficulty level changed, anyone left in the maze would be killed.~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #68066 /* ~"Yes, Director. Do not drop items or equipment in the maze. If the maze were to be reset, or a new difficulty setting chosen, any items left in the maze would be destroyed."~ */
  IF ~~ THEN REPLY #68067 /* ~"I see... I will not drop anything important in the maze. Anything else?"~ */ JOURNAL #68072 /* ~While in the modron maze, do not drop anything of importance. If the maze were ever reset or the difficulty level changed, anything left in the maze would be destroyed.~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #68068 /* ~He pauses to think a moment. "No, Director."~ */
  IF ~~ THEN REPLY #68069 /* ~"I see. I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #68070 /* ~"Very well, farewell."~ */ EXIT
END
