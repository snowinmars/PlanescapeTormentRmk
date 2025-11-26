// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGT1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGT1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #33548 /* ~"Shiva's garters! What be *this* foul-smellin' thing?"~ */
  IF ~~ THEN EXTERN ~DTHUGT2~ 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY #33549 /* ~"Mayhap we ought ta roll th' sorry corpse an' drag it back in fer a reward, eh?" He looks to his friend and waggles his eyebrows.~ */
  IF ~~ THEN REPLY #33565 /* ~"Very amusing... now get out of my way."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #33566 /* ~"Move out of my way or I'll kill the both of you."~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #33567 /* ~"Move out of my way or I'll kill the both of you."~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #33568 /* ~"I don't want any trouble... just let me pass."~ */ EXTERN ~DTHUGT2~ 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #33569 /* ~"I don't want any trouble... just let me pass."~ */ EXTERN ~DTHUGT2~ 6
  IF ~~ THEN REPLY #33570 /* ~Moan like an undead creature: "Uhhhnnn..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Taunter_1","GLOBALLaw",-1)
~ EXTERN ~DTHUGT2~ 7
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #33550 /* ~The man raises his eyebrows. "Heh! 'Get out of my way,' 'e says..."~ */
  IF ~~ THEN EXTERN ~DTHUGT2~ 2
END

IF ~~ THEN BEGIN 3 // from: 1.1 7.1
  SAY #33551 /* ~The man raises his hands. "Whoa now, cutter! We was just funnin' with ye! Go on yer way, now..."~ */
  IF ~~ THEN DO ~SetGlobal("Thug_Escape","GLOBAL",1)
~ EXTERN ~DTHUGT2~ 3
END

IF ~~ THEN BEGIN 4 // from: 1.2 7.2
  SAY #33552 /* ~The man's expression suddenly darkens; his lips curls up in a sneer. "Let's see ye back that up, corpse!"~ */
  IF ~~ THEN DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXTERN ~DTHUGT2~ 4
END

IF ~~ THEN BEGIN 5 // from:
  SAY #33553 /* ~"Aw, enough rattlin' yer bone-box, laddo. Let's let the berk be. C'mon."~ */
  IF ~~ THEN REPLY #33571 /* ~Let them leave.~ */ DO ~SetGlobal("Thug_Escape","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #33554 /* ~Both men draw their knives...~ */
  IF ~~ THEN REPLY #33572 /* ~Fight them.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33573 /* ~Flee.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #33555 /* ~"Naw, ye leatherhead! 'E's just... just..."~ */
  IF ~~ THEN REPLY #33574 /* ~Drool, eye them hungrily.~ */ EXTERN ~DTHUGT2~ 8
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #33575 /* ~"Just move out of my way or I'll kill the both of you."~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #33576 /* ~"Just move out of my way or I'll kill the both of you."~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #33577 /* ~"Just let me pass. I don't want any trouble."~ */ EXTERN ~DTHUGT2~ 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #33578 /* ~"Just let me pass. I don't want any trouble."~ */ EXTERN ~DTHUGT2~ 6
END
