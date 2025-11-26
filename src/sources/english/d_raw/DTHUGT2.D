// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGT2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGT2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #33556 /* ~"Oye! Look at *dat!*"~ */
  IF ~~ THEN EXTERN ~DTHUGT1~ 0
END

IF ~~ THEN BEGIN 1 // from:
  SAY #33557 /* ~"Hrm... looks like one o' da Dusties corpses done ran off!" The man chortles evilly.~ */
  IF ~~ THEN EXTERN ~DTHUGT1~ 1
END

IF ~~ THEN BEGIN 2 // from:
  SAY #33558 /* ~"An' why *should* we, eh?"~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #33579 /* ~"Because if you don't, I'll kill the both of you."~ */ EXTERN ~DTHUGT1~ 3
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #33580 /* ~"Because if you don't, I'll kill the both of you."~ */ EXTERN ~DTHUGT1~ 4
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #33581 /* ~"Because I don't want any trouble... just let me pass."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #33582 /* ~"Because I don't want any trouble... just let me pass."~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from:
  SAY #33559 /* ~"Aye, cutter... jestin', just jestin'."~ */
  IF ~~ THEN REPLY #33583 /* ~"Well... I'll kill you both just the same."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Taunter_1","GLOBALGood",-1)
SetGlobal("Thug_Escape","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #33584 /* ~Let them leave.~ */ DO ~SetGlobal("Thug_Escape","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #33560 /* ~Both men draw their knives...~ */
  IF ~~ THEN REPLY #33585 /* ~Fight them.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33586 /* ~Flee.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #33561 /* ~"No trouble?! Well that's too bad, 'cause-"~ */
  IF ~~ THEN DO ~SetGlobal("Thug_Escape","GLOBAL",1)
~ EXTERN ~DTHUGT1~ 5
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY #33562 /* ~"No trouble?! Well that's too bad, 'cause ye just ran right smack inta some!"~ */
  IF ~~ THEN DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXTERN ~DTHUGT1~ 6
END

IF ~~ THEN BEGIN 7 // from:
  SAY #33563 /* ~"Eh..." The man looks to his friend. "Oye, laddo, ye don't think 'e's actually..."~ */
  IF ~~ THEN EXTERN ~DTHUGT1~ 7
END

IF ~~ THEN BEGIN 8 // from:
  SAY #33564 /* ~The man takes a step backwards. "Ill luck ta mess with a Dustie's deader, laddo... let's go..." Both men turn to hurry off.~ */
  IF ~~ THEN DO ~SetGlobal("Thug_Escape","GLOBAL",2)
~ EXIT
END
