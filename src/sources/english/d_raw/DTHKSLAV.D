// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHKSLAV.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHKSLAV~

IF ~  NumTimesTalkedTo(0)
Global("Current_Area","GLOBAL",900)
Global("Slaver_Gone","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #50969 /* ~You see a burly thokola ex-slaver. It's covered in the blood of the monsters of Carceri. "We kill monsters, eh? Not so bad... kill instead of slaving. We like, eh?"~ */
  IF ~~ THEN REPLY #50970 /* ~"Keep up the good work."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Current_Area","GLOBAL",900)
Global("Slaver_Gone","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #50971 /* ~"Ha! We like to kill, eh?"~ */
  IF ~~ THEN REPLY #50972 /* ~"Keep it up... almost there..."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Current_Area","GLOBAL",900)
Global("Slaver_Gone","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #50973 /* ~You see a burly thokola slaver. Its eyes are dead and filled with hate as it stares at you. It grunts at nearly everything you say, but offers no response.~ */
  IF ~~ THEN REPLY #50974 /* ~"Farewell, then..."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Current_Area","GLOBAL",900)
Global("Slaver_Gone","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY #50975 /* ~The thokola just grunts at you.~ */
  IF ~~ THEN REPLY #50976 /* ~"Farewell, then."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Current_Area","GLOBAL",701)
~ THEN BEGIN 4 // from:
  SAY #50977 /* ~You see a burly thokola slaver. Its eyes are dead and filled with hate as it stares at you. It grunts at nearly everything you say, but offers no response.~ */
  IF ~~ THEN REPLY #50978 /* ~"Farewell, then..."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Current_Area","GLOBAL",701)
~ THEN BEGIN 5 // from:
  SAY #50979 /* ~The thokola just grunts at you.~ */
  IF ~~ THEN REPLY #50980 /* ~"Farewell, then."~ */ EXIT
END
