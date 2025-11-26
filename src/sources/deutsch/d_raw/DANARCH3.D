// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANARCH3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DANARCH3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #44482 /* ~Du siehst einen klobigen Mann mit ausdruckslosem Gesicht und hängendem Kiefer. Doch seine Muskeln sind ein wahres Spektakel. Er fixiert dich mit seinen toten Augen. "Was?"~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44485 /* ~"Ich habe gehört, daß es hier eine Anarchisten-Zelle gibt. Das Erkennungswort lautet 'Eklipse'."~ */ GOTO 2
  IF ~~ THEN REPLY #44486 /* ~"Wer bist du?"~ */ GOTO 2
  IF ~~ THEN REPLY #44487 /* ~"Was ist das für ein Ort?"~ */ GOTO 2
  IF ~~ THEN REPLY #44489 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #44547 /* ~"Hä?"~ */
  IF ~~ THEN REPLY #44548 /* ~"Wer bist du noch mal?"~ */ GOTO 2
  IF ~~ THEN REPLY #44549 /* ~"Was ist das für ein Ort?"~ */ GOTO 2
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44550 /* ~"Ich habe gehört, daß es hier eine Anarchisten-Zelle gibt. Das Erkennungswort lautet 'Eklipse'."~ */ GOTO 2
  IF ~~ THEN REPLY #44551 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 0.1 0.2 1.0 1.1 1.2
  SAY #44552 /* ~"Nicht mit mir sprechen. Mit Leena sprechen." Mit seinem kräftigen Arm zeigt er auf die Aufseherin.~ */
  IF ~~ THEN REPLY #44553 /* ~"Nur ein paar Fragen?"~ */ GOTO 3
  IF ~~ THEN REPLY #44554 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #44555 /* ~"NICHT MIT MIR SPRECHEN!" Er wirkt erregt.~ */
  IF ~~ THEN REPLY #44557 /* ~"Ist ja schon gut. Leb wohl."~ */ EXIT
END
