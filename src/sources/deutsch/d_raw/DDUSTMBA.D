// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTMBA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTMBA~

IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2554 /* ~Du siehst einen ernsten, blassen Mann in einer schwarzen Robe. Er starrt stumm in sein Getränk.~ */
  IF ~~ THEN REPLY #2556 /* ~"Sei gegrüßt."~ */ GOTO 2
  IF ~~ THEN REPLY #2557 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2555 /* ~Du siehst einen ernsten, blassen Staubmenschen in einer schwarzen Robe. Er starrt stumm in sein Getränk.~ */
  IF ~~ THEN REPLY #2558 /* ~"Sei gegrüßt."~ */ GOTO 2
  IF ~~ THEN REPLY #2559 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #2560 /* ~Die Staubmenschen-Frau blickt auf. "Ja?"~ */
  IF ~~ THEN REPLY #2561 /* ~"Kann ich dich vielleicht was fragen?"~ */ GOTO 3
  IF ~~ THEN REPLY #2562 /* ~"Schon gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #2563 /* ~" Diesmal nicht." Der Staubmensch verstummt und starrt erneut in sein Getränk.~ */
  IF ~~ THEN REPLY #2564 /* ~"Dann leb wohl."~ */ EXIT
END
