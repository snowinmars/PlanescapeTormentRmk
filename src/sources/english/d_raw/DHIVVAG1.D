// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAG1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAG1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48800 /* ~You see a man, who seems to be looking over the inside of the structure.~ */
  IF ~~ THEN REPLY #48801 /* ~"Greetings."~ */ GOTO 2
  IF ~~ THEN REPLY #48802 /* ~Leave the man alone.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #48803 /* ~"You again... didn't I say this place is mine? Get lost before I have to get rough with you!"~ */
  IF ~~ THEN REPLY #48804 /* ~"I'd like to see you try."~ */ GOTO 3
  IF ~~ THEN REPLY #48805 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #48806 /* ~"I found this place first. You better not try anything if you know what's good for you."~ */
  IF ~~ THEN REPLY #48807 /* ~"What are you going to do about it?"~ */ GOTO 3
  IF ~~ THEN REPLY #48808 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #48809 /* ~"You asked for it!"~ */
  IF ~~ THEN REPLY #48810 /* ~Attack him.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
