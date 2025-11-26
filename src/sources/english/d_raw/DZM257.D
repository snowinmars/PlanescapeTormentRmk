// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM257.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM257~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #6507 /* ~The eyes of this corpse are set close together and the eyeballs themselves are slightly askew; one faces to the left and the other to the right. You can barely make out the number '257' traced into its bruised forehead - it looks like the corpse has taken several blows to the head, making the number difficult to read. ~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #6510 /* ~"Don't you get dizzy with your eyeballs facing like that?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #6511 /* ~"Don't you get dizzy with your eyeballs facing like that?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #6512 /* ~"I know you're not a zombie, you know. You're not fooling anyone."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6513 /* ~Use your Stories-Bones-Tell ability on the corpse.~ */ GOTO 2
  IF ~~ THEN REPLY #6514 /* ~"It was great talking to you. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #6515 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #6508 /* ~There is no flicker of understanding in the corpse's eyes; they stare silently off to the left and right. ~ */
  IF ~~ THEN REPLY #6516 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #6509 /* ~The spirit blasts back into the body with such violence that, with a single great muscular contraction, the corpse is hurtled backwards! The body is on its feet again in an instant, dancing and thrashing about madly, waving its arms and popping its stitches, flaps of loosened flesh flopping about as it prances to and fro, eyes goggling and rolling about in its head, giggling madly all the while...~ */
  IF ~~ THEN REPLY #6517 /* ~"Er... I have a question for you, spirit..."~ */ GOTO 3
  IF ~~ THEN REPLY #9558 /* ~Leave the spirit alone.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9553 /* ~The possessed corpse sings as it leaps and whirls about, the volume and pitch of its voice rising and falling in random patterns. "YOU are the SPIRIT I, the LIVING, answer my questions YOU SHALL!" Your confused expression seems to please it; it hooks its bony fingers into its mouth and pulls it into a ghastly grin, laughing maniacally and waggling its pasty, white tongue.~ */
  IF ~~ THEN REPLY #9559 /* ~"Very well... ask your questions."~ */ GOTO 4
  IF ~~ THEN REPLY #9560 /* ~"No. I would ask *you* a question..."~ */ GOTO 5
  IF ~~ THEN REPLY #9561 /* ~Leave the chaotic spirit.~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0 4.0 5.0
  SAY #9554 /* ~The spirit seems to become calm for a moment before exploding into a stream of mind-numbingly loud, babbled nonsense. The cacophony is almost maddening; it threatens to drive you to your knees. And as abruptly as it began... it stops. The corpse stands there, twitching quietly.~ */
  IF ~~ THEN REPLY #9562 /* ~"I didn't quite catch that. Could you repeat it for me?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Zom257_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #9563 /* ~"I do not understand. I have a question, however..."~ */ GOTO 5
  IF ~~ THEN REPLY #9564 /* ~"I do not understand you. Farewell."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.1 5.1
  SAY #9555 /* ~Again the spirit sings: "Questions OF THE living shall the DEAD answer THE; SO it was, is IT so, shall so IT BE. You my ANSWER will questions!" The look on your face seems to please it wildly; it begins to cavort so madly that you wonder if the corpse can take the abuse. You can almost hear its bones creak and fracture, tendons snapping, as it spins and hurls itself about.~ */
  IF ~~ THEN REPLY #9565 /* ~"All right... ask your questions."~ */ GOTO 4
  IF ~~ THEN REPLY #9566 /* ~"You do not understand. I had a question for *you*..."~ */ GOTO 5
  IF ~~ THEN REPLY #9567 /* ~Give up and leave the babbling spirit.~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.2 5.2
  SAY #9556 /* ~As the spirit fades away from the corpse, its jabbering mouth twists into a knowing smile. Its wild, flashing eyes bore into you with the piercing glare of a psychopath, and it whispers a single, carefully-formed word, drawn out like a string of precious pearls: "Limbo..." ~ */
  IF ~~ THEN REPLY #9568 /* ~"What?"~ */ GOTO 7
  IF ~~ THEN REPLY #9569 /* ~Ignore it, turn away.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #9557 /* ~...and with that it is gone, leaving you no better off and feeling slightly unsettled. The zombie quietly resumes its work.~ */
  IF ~~ THEN EXIT
END
