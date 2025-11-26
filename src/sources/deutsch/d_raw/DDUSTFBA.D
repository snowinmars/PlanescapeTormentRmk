// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTFBA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTFBA~

IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2543 /* ~Du siehst eine ernste, blasse Frau in einer schwarzen Robe. Sie starrt stumm in ihr Getränk.~ */
  IF ~~ THEN REPLY #2545 /* ~"Sei gegrüßt."~ */ GOTO 2
  IF ~~ THEN REPLY #2546 /* ~Laß sie in Ruhe.~ */ EXIT
END

IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2544 /* ~Du siehst eine ernste, blasse Staubmenschen-Frau in einer schwarzen Robe. Sie starrt stumm in ihr Getränk.~ */
  IF ~~ THEN REPLY #2547 /* ~"Sei gegrüßt."~ */ GOTO 2
  IF ~~ THEN REPLY #2548 /* ~Laß sie in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #2549 /* ~Die Staubmenschen-Frau blickt auf. "Ja?"~ */
  IF ~~ THEN REPLY #2550 /* ~"Kann ich dich vielleicht was fragen?"~ */ GOTO 3
  IF ~~ THEN REPLY #2551 /* ~"Macht nichts. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #2552 /* ~"Diesmal nicht." Die Staubmenschen-Frau verstummt und starrt erneut in ihr Getränk.~ */
  IF ~~ THEN REPLY #2553 /* ~"Dann leb wohl."~ */ EXIT
END
