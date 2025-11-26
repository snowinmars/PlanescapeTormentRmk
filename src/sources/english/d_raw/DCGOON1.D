// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCGOON1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCGOON1~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 4 3 even though they appear after this state */
~  NumTimesTalkedTo(0)
CreatureInArea("AR0706")
~ THEN BEGIN 0 // from:
  SAY #53695 /* ~"Look, berk, you better get out of here... if you know what's good for you."~ */
  IF ~~ THEN REPLY #53696 /* ~"Farewell, then."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 4 3 even though they appear after this state */
~  NumTimesTalkedTo(1)
CreatureInArea("AR0706")
~ THEN BEGIN 1 // from:
  SAY #53697 /* ~"Maybe you don't hear too well. Get out of here. I'm not telling you again."~ */
  IF ~~ THEN REPLY #53698 /* ~"All right. I'm leaving."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 4 3 even though they appear after this state */
~  NumTimesTalkedTo(2)
CreatureInArea("AR0706")
~ THEN BEGIN 2 // from:
  SAY #53699 /* ~"You had your chance, berk. You should have left while you could." The thug attacks!~ */
  IF ~~ THEN REPLY #53700 /* ~Fight.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF WEIGHT #0 ~  Global("Lynch_Mob","GLOBAL",1)
CreatureInArea("AR0900")
~ THEN BEGIN 3 // from:
  SAY #66759 /* ~"You want to stand here jawin', or you want to save us? Get a move on!"~ */
  IF ~~ THEN REPLY #66760 /* ~"All right. Farewell."~ */ DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #1 ~  Global("Lynch_Mob","GLOBAL",0)
CreatureInArea("AR0900")
~ THEN BEGIN 4 // from:
  SAY #66761 /* ~This grizzled man gives you a look of contempt. "Whaddye want, berk? Can't ye see we're busy cleanin' out the trash that got us into Carceri? We get rid o' this sod, we're golden. We're back in the Outlands, no problem."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #66769 /* ~"What's happening is that your mob mentality is nailing this town ever more firmly to Carceri. Forgive him and work together to repel the evil that's overtaking the town, and chances are far better that you'll be 'golden'."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #66771 /* ~"What's happening is that your mob mentality is nailing this town ever more firmly to Carceri. Forgive him and work together to repel the evil that's overtaking the town, and chances are far better that you'll be 'golden'."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #66772 /* ~"Why do you think that killing him will solve your problems? Convince these people to help defend the town from the monsters. Showing your politicians that they have no power over you is the best revenge."~ */ DO ~SetGlobal("Lynch_Mob","GLOBAL",2)
~ GOTO 6
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #66773 /* ~"Why do you think that killing him will solve your problems? Convince these people to help defend the town from the monsters. Showing your politicians that they have no power over you is the best revenge."~ */ GOTO 5
  IF ~~ THEN REPLY #66774 /* ~"Stop right there. There won't be any lynchings while I'm around."~ */ DO ~SetGlobal("Lynch_Mob","GLOBAL",2)
~ GOTO 6
  IF ~~ THEN REPLY #66775 /* ~"I've got other things to do. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1 4.3
  SAY #66776 /* ~"But he... he... Crap. All right. You got it." He raises his voice so the crowd can hear him. "Let him go! We got a whole city to take care of!"~ */
  IF ~~ THEN REPLY #66777 /* ~"Thanks, friend. Good luck."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
SetGlobal("Lynch_Mob","GLOBAL",1)
AddexperienceParty(150000)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.2 4.4
  SAY #66778 /* ~"Shut yer hole, berk. We got business to take care of!" He turns to his helpers. "Nail him!"~ */
  IF ~~ THEN REPLY #66779 /* ~Attack.~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66780 /* ~Watch.~ */ EXIT
END
