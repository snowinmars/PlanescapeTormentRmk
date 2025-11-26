// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRTRGH1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRTRGH1~

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",0)
~ THEN BEGIN 0 // from:
  SAY #38573 /* ~"Ssss... meat creature... trocopotaca keeps us from treasure, yes? The troco must die. You keep treasure. We get body. Yesss?"~ */
  IF ~~ THEN REPLY #38588 /* ~"What is that creature?"~ */ GOTO 1
  IF ~~ THEN REPLY #38589 /* ~"Sure."~ */ GOTO 2
  IF ~~ THEN REPLY #38590 /* ~"I don't think so."~ */ GOTO 3
  IF ~~ THEN REPLY #38591 /* ~"What's with your friend?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0 4.0
  SAY #38592 /* ~"It'sss a trocopotaca. White. Hornssss. Nasssty. Trocosss eat flessssh. Our enemiesss. Kill it, yesss?"~ */
  IF ~~ THEN REPLY #38593 /* ~"What's with your friend?"~ */ GOTO 4
  IF ~~ THEN REPLY #38594 /* ~"I'll kill it."~ */ GOTO 2
  IF ~~ THEN REPLY #38595 /* ~"I'll let you do it."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1 4.1
  SAY #38596 /* ~"Yessss... good. You get treasure on body. We get meat. Go now! Kill!"~ */
  IF ~~ THEN REPLY #38597 /* ~"I'm going."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.2 4.2
  SAY #38598 /* ~"Sssss... uselessss meat creature. Go away!"~ */
  IF ~~ THEN REPLY #38599 /* ~"Very well."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 1.0
  SAY #38600 /* ~"Ha ha... coward, he isss. Afraid of troco. Ha ha. Kill it for us, yesss?"~ */
  IF ~~ THEN REPLY #38601 /* ~"What is it, anyway?"~ */ GOTO 1
  IF ~~ THEN REPLY #38602 /* ~"Fine. I'll kill it."~ */ GOTO 2
  IF ~~ THEN REPLY #38603 /* ~"No, I don't think so."~ */ GOTO 3
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",0)
~ THEN BEGIN 5 // from:
  SAY #38604 /* ~"Ha ha... coward, he isss. Afraid of troco. Ha ha. Kill it for us, yesss?"~ */
  IF ~~ THEN REPLY #38605 /* ~"I'm going, then."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",1)
~ THEN BEGIN 6 // from:
  SAY #38606 /* ~"He isss dead... it is your fault! He isss dead! Die, flesssh!" The ghoul attacks you!~ */
  IF ~~ THEN REPLY #38607 /* ~Fight.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #38608 /* ~Flee.~ */ DO ~Enemy()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",1)
~ THEN BEGIN 7 // from:
  SAY #38609 /* ~"He isss dead... it is your fault! He isss dead! Die, flesssh!" The ghoul attacks you!~ */
  IF ~~ THEN REPLY #38610 /* ~Fight.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #38611 /* ~Flee.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",2)
~ THEN BEGIN 8 // from:
  SAY #38612 /* ~"Ssss... troco is dead... you take treasure, we take meat, yessss?"~ */
  IF ~~ THEN REPLY #38613 /* ~"What is that thing?"~ */ GOTO 9
  IF ~~ THEN REPLY #38614 /* ~"It's a deal."~ */ GOTO 10
  IF ~~ THEN REPLY #38615 /* ~"Not if you die first."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #38616 /* ~"It'sss a trocopotaca. White. Hornssss. Nasssty. Trocosss eat flessssh. Our enemiesss. Tassste bad. Dead now. Our thanksss, meat creature."~ */
  IF ~~ THEN REPLY #38617 /* ~"You're welcome. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #38618 /* ~"Take it and go, then... we mussst eat."~ */
  IF ~~ THEN REPLY #38619 /* ~"Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",2)
~ THEN BEGIN 11 // from:
  SAY #38620 /* ~"Back again, meat creature? Take your coinsss and go."~ */
  IF ~~ THEN REPLY #38621 /* ~"Very well. Farewell."~ */ EXIT
END
