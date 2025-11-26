// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBERROG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DBERROG~

IF ~  Global("Current_Area","GLOBAL",704)
Global("Know_Berrog","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3184 /* ~You see a mousy man, with darting frightened eyes. "Please don't hurt me!" he stage-whispers. "They'll kill me if they find me!"~ */
  IF ~~ THEN REPLY #3185 /* ~"Who will kill you?"~ */ GOTO 5
  IF ~~ THEN REPLY #56942 /* ~"Who are you?"~ */ GOTO 6
  IF ~~ THEN REPLY #56943 /* ~"What are you doing here?"~ */ GOTO 7
END

IF ~  Global("Current_Area","GLOBAL",900)
Global("Know_Berrog","GLOBAL",0)
Global("Cart_Trap","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #56944 /* ~You see a mousy man with an innocent face and tears streaming down his cheeks. He's trapped underneath a wagon, and it seems to be crushing the life from him slowly. His eyes rise to you in pained appeal. "Please, mate... you got to get this thing off me. I can't die here..."~ */
  IF ~~ THEN REPLY #56945 /* ~"All right, I'll get it off."~ */ GOTO 10
  IF ~~ THEN REPLY #56946 /* ~"Forget it."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Berrog_1","GLOBALGood",-1)
~ GOTO 11
END

IF ~  Global("Current_Area","GLOBAL",900)
Global("Know_Berrog","GLOBAL",1)
Global("Cart_Trap","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #56947 /* ~You see Berrog Quickshoes, the would-be deva rescuer, trapped underneath a wagon that has lost an axle. "Please, mate... you got to get this thing off me."~ */
  IF ~~ THEN REPLY #56948 /* ~"All right, I'll get it off."~ */ GOTO 10
  IF ~~ THEN REPLY #56949 /* ~"Forget it."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Berrog_1","GLOBALGood",-1)
~ GOTO 11
END

IF ~~ THEN BEGIN 3 // from:
  SAY #56951 /* ~Null Node~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #56952 /* ~Null Node~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 6.1 7.2 8.2
  SAY #56954 /* ~"The guards. They're after me. I think I offended someone with a question, or said something to the wrong person. I was just offering an opinion, but it seems like you have to speak in a certain way here. It's all corrupt!"~ */
  IF ~~ THEN REPLY #56956 /* ~"Who are you, anyway?"~ */ GOTO 6
  IF ~~ THEN REPLY #56957 /* ~"What are you doing here?"~ */ GOTO 7
  IF ~~ THEN REPLY #56958 /* ~"Where are you from?"~ */ GOTO 8
  IF ~~ THEN REPLY #56960 /* ~"Then go."~ */ GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 0.1 5.0 7.1 8.0
  SAY #56962 /* ~"I'm Berrog Quickshoes, traveler and problem-solver. I guess you could call me a thief, but I prefer to call myself an engineer - traps and puzzles and so forth. I only use my skills for good ends - I hate to harm anyone. I guess that they use engines for different purposes here." He shudders.~ */
  IF ~~ THEN REPLY #56965 /* ~"What are you doing here?"~ */ GOTO 7
  IF ~~ THEN REPLY #56966 /* ~"Who's going to kill you?"~ */ GOTO 5
  IF ~~ THEN REPLY #56968 /* ~"Then go."~ */ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 0.2 5.1 6.0 8.1
  SAY #56969 /* ~"I came to Curst because I'd heard there was a deva trapped here, and since I have some archon friends back in Mount Celestia, I thought I could be of assistance. This town, though... this place is a cesspool and I can't trust anyone! How can people live like this? I need to get out of here!"~ */
  IF ~~ THEN REPLY #56970 /* ~"Tell me of Mount Celestia."~ */ GOTO 8
  IF ~~ THEN REPLY #56971 /* ~"Who are you, anyway?"~ */ GOTO 6
  IF ~~ THEN REPLY #56972 /* ~"Who's going to kill you?"~ */ GOTO 5
  IF ~~ THEN REPLY #56973 /* ~"Then go."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 5.2 7.0
  SAY #56974 /* ~His eyes go dreamy. "All things have their place there, and all things are beautiful. Hosts of winged archons wheel in the skies, in exquisite patterns that could break your heart. The fruit grows larger, the game bigger, and all homes are open. Yet we strive to better ourselves constantly, testing our virtue and moving ourselves ever closer to goodness... I should get home as soon as I can..."~ */
  IF ~~ THEN REPLY #56975 /* ~"Who are you, anyway?"~ */ GOTO 6
  IF ~~ THEN REPLY #56976 /* ~"What are you doing here?"~ */ GOTO 7
  IF ~~ THEN REPLY #56977 /* ~"Who's trying to kill you?"~ */ GOTO 5
  IF ~~ THEN REPLY #56978 /* ~"Then go."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 5.3 6.2 7.3 8.3
  SAY #56979 /* ~He looks at you with disbelief in his eyes. "Thank you! You'll not see me again!" He scampers away.~ */
  IF ~~ THEN REPLY #56980 /* ~"Farewell."~ */ DO ~SetGlobal("Know_Berrog","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.0 2.0
  SAY #56981 /* ~"Wait! Is... is that other fellow still trapped on the other side?"~ */
  IF ~  Global("Burgher_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #56982 /* ~"He's still there."~ */ GOTO 12
  IF ~  Global("Burgher_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #56983 /* ~"He's already died."~ */ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 1.1 2.1 13.1
  SAY #56992 /* ~"Please... please..." He turns his face into the mud and weeps quietly.~ */
  IF ~~ THEN REPLY #56993 /* ~Leave.~ */ EXIT
  IF ~~ THEN REPLY #56994 /* ~Kill him.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Berrog_2","GLOBALGood",-3)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0
  SAY #56995 /* ~"You... you have to find a way to save him, too. Better him than me. I think he was the mayor of this burg... or whatever they have here."~ */
  IF ~~ THEN EXTERN ~DBURGHER~ 28
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY #56996 /* ~"Then lift, mate..."~ */
  IF ~~ THEN REPLY #56997 /* ~Heave it off.~ */ DO ~FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
IncrementGlobalOnceEx("GLOBALGood_Berrog_1","GLOBALGood",1)
IncrementGlobal("Curst_Counter","GLOBAL",1)
AddexperienceParty(225000)
SetGlobal("Cart_Trap","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #56998 /* ~"Forget it. Maybe I'll come back later."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Berrog_1","GLOBALGood",-1)
~ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 13.0 18.1
  SAY #56999 /* ~He crawls up as you heave the wagon aside. "My thanks, mate. I've had... enough of this burg. I'm back to Mount Celestia. I hope your good deeds stand you in... good stead wherever you're going." He gazes off toward the deva standing on the balcony. "I can't believe I came here to see... that."~ */
  IF ~~ THEN REPLY #57000 /* ~"Good intentions and all that... Farewell."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #57001 /* ~"Aieee! There's someone on the other side! You're killing me!"~ */
  IF ~~ THEN REPLY #57002 /* ~"Who are you?"~ */ DO ~SetGlobal("Know_Berrog","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #57003 /* ~"What are you doing down there?"~ */ GOTO 17
  IF ~~ THEN REPLY #57004 /* ~Keep lifting: "Too bad."~ */ DO ~Kill(Myself)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ EXTERN ~DBURGHER~ 18
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #57005 /* ~"My name... is Berrog Quickshoes... I came to Curst to free the deva... creature of good... but I was misinformed. I should never have come..."~ */
  IF ~~ THEN REPLY #57006 /* ~"What are you doing down there?"~ */ GOTO 17
  IF ~~ THEN REPLY #57007 /* ~Lift the cart off the Burgher: "Probably not."~ */ DO ~Kill(Myself)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ EXTERN ~DBURGHER~ 18
  IF ~~ THEN REPLY #57008 /* ~Lift the cart off Berrog.~ */ EXTERN ~DBURGHER~ 23
  IF ~~ THEN REPLY #57009 /* ~"Perhaps I had better come back later... Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1 16.0
  SAY #57010 /* ~"I was... fleeing the city... when it began to slide. I was near... him... and he grabbed me. The wagon fell from the sky, and he tried to shove me under it... while he escaped. But I still ask that you ... find a way to free him as well."~ */
  IF ~~ THEN EXTERN ~DBURGHER~ 24
END

IF ~~ THEN BEGIN 18 // from:
  SAY #57012 /* ~"You gain nothing by freeing me... I confess to that. But surely... the tide of goodness will swing... if you save me without thought of gain... better still to save us both."~ */
  IF ~~ THEN REPLY #57013 /* ~Lift the cart off the Burgher: "Yes, but he's useful."~ */ DO ~Kill(Myself)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ EXTERN ~DBURGHER~ 18
  IF ~~ THEN REPLY #57014 /* ~Lift the cart off Berrog: "He's not worth it."~ */ DO ~Kill("Burgher")
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
IncrementGlobalOnceEx("GLOBALGood_Berrog_1","GLOBALGood",1)
IncrementGlobal("Curst_Counter","GLOBAL",1)
AddexperienceParty(125000)
SetGlobal("Cart_Trap","GLOBAL",1)
~ GOTO 14
  IF ~  NumInPartyGT(2)
CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #57015 /* ~"How about if I lift this off both of you? My companions and I can do it if we throw ourselves into it."~ */ EXTERN ~DBURGHER~ 26
  IF ~~ THEN REPLY #57016 /* ~"I'll try to figure out a way. Farewell."~ */ EXIT
END
