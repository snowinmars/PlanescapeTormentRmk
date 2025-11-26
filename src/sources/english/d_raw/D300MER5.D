// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER5.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER5~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17512 /* ~"Jump, Lim-Lim, jump!" The merchant seems to suddenly notice you. "Oh, greetings! Would ye like ta purchase one a' these playful, gamboling Lim-Lims, m'lord?"~ */
  IF ~~ THEN REPLY #17537 /* ~"No, but I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #17539 /* ~"Not yet. Just what are these 'Lim-Lims'?"~ */ GOTO 3
  IF ~~ THEN REPLY #17540 /* ~"Yes."~ */ GOTO 4
  IF ~~ THEN REPLY #17541 /* ~"No thanks. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Buy_LL","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #17513 /* ~"See how they... oh, back again, m'lord? Here to purchase a Lim-Lim?"~ */
  IF ~~ THEN REPLY #17542 /* ~"No, but I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #17543 /* ~"Not yet. Just what are these 'Lim-Lims'?"~ */ GOTO 3
  IF ~~ THEN REPLY #17544 /* ~"Yes."~ */ GOTO 4
  IF ~~ THEN REPLY #17545 /* ~"No thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.0 4.3 4.5 6.1 7.1 9.0
  SAY #17515 /* ~"The only questions I'll answer, I'm afraid, are about the Lim-Lims, m'lord."~ */
  IF ~  Global("Buy_LL","GLOBAL",2)
~ THEN REPLY #17546 /* ~"Then maybe you can tell me why mine ran off."~ */ GOTO 7
  IF ~  Global("Buy_LL","GLOBAL",0)
~ THEN REPLY #17547 /* ~"Just what are they?"~ */ GOTO 3
  IF ~  Global("Buy_LL","GLOBAL",0)
~ THEN REPLY #17548 /* ~"I'd like to purchase one."~ */ GOTO 4
  IF ~~ THEN REPLY #17549 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.1
  SAY #17516 /* ~"They are from the Outlands, m'lord, neither wholly insect nor animal. They are friendly, playful, and quite loyal." He takes a sidelong glance at the Lim-Lims, then leans close to whisper: "Pretty tasty too, in a pinch."~ */
  IF ~~ THEN REPLY #17550 /* ~"Interesting. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #17551 /* ~"I'd like to purchase one."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.2 2.2 3.1
  SAY #17517 /* ~"A Lim-Lim will provide its own food, eating insects, tiny rodents and the like. They will follow you everywhere you go, are easy to clean up after, are quiet, exercise themselves with their constant flipping about, and, best of all - they leap over fifteen feet when prodded with hot coals! One'll only cost ye but forty coppers, m'lord, a mere pittance for such an entertaining pet and friend!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #17553 /* ~"Morte? What do you think?"~ */ EXTERN ~DMORTE~ 187
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17555 /* ~"What do you think, Annah?"~ */ EXTERN ~DANNAH~ 107
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17556 /* ~"I'll take one, then."~ */ DO ~TakePartyGold(40)
~ GOTO 5
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17557 /* ~"I'd best not spend the copper. I had some questions, though..."~ */ GOTO 2
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17559 /* ~"I'll keep my copper, actually. Farewell."~ */ EXIT
  IF ~  PartyGoldLT(40)
~ THEN REPLY #17560 /* ~"I don't have enough, but I have some questions..."~ */ GOTO 2
  IF ~  PartyGoldLT(40)
~ THEN REPLY #17562 /* ~"Never mind; I don't have the coin for one. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.2
  SAY #17518 /* ~"How nice, m'lord! Here ye are..."~ */
  IF ~~ THEN REPLY #17563 /* ~"My own Lim-Lim..."~ */ DO ~SetGlobal("Buy_LL","GLOBAL",1)
GiveItemCreate("LimLim",Protagonist,1,0,0)
~ EXIT
END

IF ~  Global("Buy_LL","GLOBAL",2)
~ THEN BEGIN 6 // from:
  SAY #17519 /* ~"See how they... oh, back again, m'lord? Where is your Lim-Lim?"~ */
  IF ~~ THEN REPLY #17565 /* ~"It ran off at some point. You'd said it would follow me everywhere."~ */ GOTO 7
  IF ~~ THEN REPLY #17567 /* ~"I don't want to talk about it. I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #17568 /* ~"Don't ask. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.0 6.0
  SAY #17520 /* ~"Really? How strange!"~ */
  IF ~~ THEN REPLY #17569 /* ~"I expect compensation."~ */ GOTO 8
  IF ~~ THEN REPLY #17570 /* ~"Never mind that. I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #17572 /* ~"Don't trouble yourself over it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #17521 /* ~"But m'lord... it's not my responsibility! An untrained Lim-Lim, perhaps it was stolen..."~ */
  IF ~~ THEN REPLY #17573 /* ~"Just return my forty copper coins."~ */ GOTO 11
  IF ~~ THEN REPLY #17574 /* ~"Return my forty coins, and twenty more for the wrongdoing."~ */ GOTO 11
  IF ~~ THEN REPLY #17575 /* ~"Return my forty coins, and forty more for the trouble."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 11
END

IF ~  Global("Buy_LL","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #17522 /* ~"See how they... oh, back again, m'lord?"~ */
  IF ~~ THEN REPLY #17730 /* ~"Yes. I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #17731 /* ~"Just passing by. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #17526 /* ~(Null Node)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0 8.1 8.2
  SAY #17527 /* ~"Bu-bu-but you can't! Ye can't hold me responsible, ye simply can't!"~ */
  IF ~~ THEN REPLY #17576 /* ~"I can and I will; it's only just. You had told me it would follow me everywhere."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_LL_1","GLOBALLaw",1)
~ GOTO 12
  IF ~~ THEN REPLY #17577 /* ~Truth: "It's either me or the hells to pay; make your choice."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_2","GLOBALGood",-1)
~ GOTO 12
  IF ~~ THEN REPLY #17579 /* ~Bluff: "It's either me or the hells to pay; make your choice."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_LL_1","GLOBALLaw",-1)
~ GOTO 12
  IF ~~ THEN REPLY #17580 /* ~"Forget it, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0 11.1 11.2
  SAY #17528 /* ~"Very well, I - oye! What's that over yonder?" He suddenly bolts!~ */
  IF ~~ THEN REPLY #17581 /* ~"What the..."~ */ DO ~RunAwayFromEx(Protagonist,2,FALSE)
SetGlobal("cd_int_1","LOCALS",1)
SetGlobal("Buy_LL","GLOBAL",3)
~ EXIT
END

IF ~  Global("Buy_LL","GLOBAL",3)
~ THEN BEGIN 13 // from:
  SAY #17529 /* ~"Jump, Lim-Lim, ju-gaah!" The merchant spots you and begins to flee.~ */
  IF ~~ THEN REPLY #17582 /* ~"Damn..."~ */ DO ~RunAwayFromEx(Protagonist,2,FALSE)
SetGlobal("cd_int_1","LOCALS",1)
SetGlobal("Buy_LL","GLOBAL",3)
~ EXIT
END
