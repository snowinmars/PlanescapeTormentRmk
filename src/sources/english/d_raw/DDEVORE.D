// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDEVORE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDEVORE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48410 /* ~You see a short man, his eyes smoldering with repressed resentment. He's barking out orders at his workers, and impatiently turns to you. "What do you want?"~ */
  IF ~~ THEN REPLY #48411 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #48412 /* ~"What is this place?"~ */ GOTO 4
  IF ~~ THEN REPLY #48413 /* ~"What can you tell me of Curst?"~ */ GOTO 5
  IF ~  Global("Anarchist_Treasure","GLOBAL",1)
~ THEN REPLY #48414 /* ~"I spoke with Grimscalp. He said that you had something of his."~ */ DO ~SetGlobal("Anarchist_Treasure","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 6
  IF ~~ THEN REPLY #48415 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Anarchist_Treasure","GLOBAL",2)
~ THEN BEGIN 1 // from: 8.0
  SAY #48416 /* ~"I got nothing for you, friend, nothing. Let me just run this operation in peace, all right? Something happens, you just come on back here and we'll take care of you, but for right now, we shouldn't be seen together."~ */
  IF ~~ THEN REPLY #48417 /* ~"All right. Farewell."~ */ JOURNAL #47845 /* ~Devore, the warehouse merchant, has said that if something goes down I should return to his warehouse. In return, I've agreed to leave him alone.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #48418 /* ~"What, you again? What do you want?"~ */
  IF ~~ THEN REPLY #48419 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #48420 /* ~"What is this place?"~ */ GOTO 4
  IF ~~ THEN REPLY #48421 /* ~"What can you tell me of Curst?"~ */ GOTO 5
  IF ~  Global("Anarchist_Treasure","GLOBAL",1)
~ THEN REPLY #48422 /* ~"I spoke with Grimscalp. He said that you had something of his."~ */ DO ~SetGlobal("Anarchist_Treasure","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 6
  IF ~~ THEN REPLY #48423 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 2.0 7.0
  SAY #48424 /* ~"I'm Devore. This is my warehouse. These are my employees. This is my time that you're wasting."~ */
  IF ~~ THEN REPLY #48425 /* ~"All right. I had a few more questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #48426 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 2.1 7.1
  SAY #48427 /* ~He sighs with exasperation. "It's a warehouse. We store things - weapons, gold, alcohol, fabric, food - just about anything a body needs. You have heard of warehouses, right?"~ */
  IF ~~ THEN REPLY #48428 /* ~"Sure. I had a few more questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #48429 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 2.2 7.2
  SAY #48430 /* ~"It's a town where people try to make a living. We're all getting by doing what we can, and sometimes we're interrupted by adventurer types who seem to think that all we do all day is wait around for them to ask questions."~ */
  IF ~~ THEN REPLY #48431 /* ~"All right, I had a few more questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #48432 /* ~"I get the hint. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.3 2.3 7.3
  SAY #48433 /* ~"Grimscalp? You mean he didn't die? The last I saw him, he was dragging himself toward... oh, I get it. He sent you to intimidate me into giving up his share of the loot. Or to ask nicely for it... or is there something going on with the Anarchists in Sigil? He always played a deep game. It was only chance that we... I mean, THEY, heh heh heh... managed to stick a few knives in him. I'll go get his loot. I'll be right back."~ */
  IF ~~ THEN REPLY #48434 /* ~"Hurry."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveGoldForce(250)
GiveItemCreate("OgrGaunt",Protagonist,1,0,0)
~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 3.0 4.0 5.0
  SAY #48435 /* ~He sighs. "What?"~ */
  IF ~~ THEN REPLY #48436 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #48437 /* ~"What is this place?"~ */ GOTO 4
  IF ~~ THEN REPLY #48438 /* ~"What can you tell me of Curst?"~ */ GOTO 5
  IF ~  Global("Anarchist_Treasure","GLOBAL",1)
~ THEN REPLY #48439 /* ~"I spoke with Grimscalp. He said that you had something of his."~ */ DO ~SetGlobal("Anarchist_Treasure","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 6
  IF ~~ THEN REPLY #48443 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #48440 /* ~He returns with a sack of coins and pair of brutal-looking gauntlets. He looks around nervously, and says, "Here. Take these. Now go on, get out of here."~ */
  IF ~~ THEN REPLY #48441 /* ~"I had a few more questions for you..."~ */ GOTO 1
  IF ~~ THEN REPLY #48442 /* ~"Farewell."~ */ EXIT
END
