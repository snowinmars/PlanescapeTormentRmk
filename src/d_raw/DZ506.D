// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ506.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ506~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #6551 /* ~Татуировка гибели Гросука~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #6554 /* ~Узы страха~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #6555 /* ~~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #6556 /* ~~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6557 /* ~~ */ GOTO 2
  IF ~~ THEN REPLY #6558 /* ~~ */ EXIT
  IF ~~ THEN REPLY #6559 /* ~~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #6552 /* ~Защита Магуса~ */
  IF ~~ THEN REPLY #6560 /* ~~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #6553 /* ~Книга Финама~ */
  IF ~~ THEN REPLY #6561 /* ~~ */ EXIT
END
