// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ985.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ985~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34964 /* ~~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #34965 /* ~~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #34968 /* ~~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34969 /* ~~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34970 /* ~~ */ GOTO 2
  IF ~~ THEN REPLY #34973 /* ~~ */ EXIT
  IF ~~ THEN REPLY #34974 /* ~~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #34966 /* ~~ */
  IF ~~ THEN REPLY #34967 /* ~~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #34971 /* ~~ */
  IF ~~ THEN REPLY #34972 /* ~~ */ EXIT
END
