// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRTRGH2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRTRGH2~

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",0)
~ THEN BEGIN 0 // from:
  SAY #38622 /* ~"Kill the troco for usss, yesss, and you take itsss money. We take itsss food. You like, yesss?"~ */
  IF ~~ THEN REPLY #38623 /* ~"What is that creature?"~ */ GOTO 1
  IF ~~ THEN REPLY #38636 /* ~"Sure."~ */ GOTO 4
  IF ~~ THEN REPLY #38637 /* ~"I don't think so."~ */ GOTO 3
  IF ~~ THEN REPLY #38638 /* ~"What's with your friend?"~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0
  SAY #38624 /* ~"Trocopotaca. You like? We not like, no... sssscary and mean monssster. They not like usss. Thissss one... it guard body we want. You kill it?"~ */
  IF ~~ THEN REPLY #38625 /* ~"What's with your friend?"~ */ GOTO 2
  IF ~~ THEN REPLY #38632 /* ~"I'll kill it."~ */ GOTO 4
  IF ~~ THEN REPLY #38635 /* ~"I'll let you do it."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.3 1.0
  SAY #38626 /* ~"Not friend! Braggart! Big ghoul! Afraid of nothing, he saysss! You see him getting clossse to troco? No! He coward! You kill it and show him who brave isss!"~ */
  IF ~~ THEN REPLY #38627 /* ~"What is it, anyway?"~ */ GOTO 1
  IF ~~ THEN REPLY #38628 /* ~"Fine. I'll kill it."~ */ GOTO 4
  IF ~~ THEN REPLY #38631 /* ~"No, I don't think so."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.2 2.2
  SAY #38629 /* ~"Sssss... worthlesssss flessh! Go!"~ */
  IF ~~ THEN REPLY #38630 /* ~"Very well."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1 2.1
  SAY #38633 /* ~"My thanksss... you take money when it diessss."~ */
  IF ~~ THEN REPLY #38634 /* ~"That's the plan."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",0)
~ THEN BEGIN 5 // from:
  SAY #38639 /* ~"Why you not kill troco? Troco needssss to die! Kill it!"~ */
  IF ~~ THEN REPLY #38640 /* ~"I'm going, then."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",1)
~ THEN BEGIN 6 // from:
  SAY #38641 /* ~"What... what bringsss you back here, foolish meat? Dieee!" The ghastly creature leaps at you!~ */
  IF ~~ THEN REPLY #38642 /* ~Fight.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #38643 /* ~Flee.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",1)
~ THEN BEGIN 7 // from:
  SAY #38644 /* ~"What... what bringsss you back here, foolish meat? Dieee!" The ghastly creature leaps at you!~ */
  IF ~~ THEN REPLY #38645 /* ~Fight.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #38646 /* ~Flee.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",2)
~ THEN BEGIN 8 // from:
  SAY #38647 /* ~"You take your treasssure, yesss? Take it and go, meat thing."~ */
  IF ~~ THEN REPLY #38648 /* ~"What is that thing?"~ */ GOTO 9
  IF ~~ THEN REPLY #38651 /* ~"It's a deal."~ */ GOTO 10
  IF ~~ THEN REPLY #38652 /* ~"Not if you die first."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #38649 /* ~"Trocopotaca, yesss? You like? We not like, no... sssscary and mean monssster. They not like usss. Dead now, yesss?"~ */
  IF ~~ THEN REPLY #38650 /* ~"You're welcome. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #38653 /* ~"Take it and go, then... we mussst eat."~ */
  IF ~~ THEN REPLY #38654 /* ~"Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",2)
~ THEN BEGIN 11 // from:
  SAY #67831 /* ~"Back so ssssoon? Go. We eat."~ */
  IF ~~ THEN REPLY #67832 /* ~"Very well. Farewell."~ */ EXIT
END
