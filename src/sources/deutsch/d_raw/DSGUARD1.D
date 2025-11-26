// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSGUARD1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSGUARD1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37925 /* ~Du siehst einen Wachposten vom Harmonium. Er sieht dich argwöhnisch an, als du näher kommst.~ */
  IF ~~ THEN REPLY #37930 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #37931 /* ~Ignoriere den Mann.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37926 /* ~Er nickt dir zu. "Guten Tag, Bürger."~ */
  IF ~~ THEN REPLY #37932 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37933 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #37927 /* ~Er schüttelt den Kopf. "Ich bin im Dienst, Bürger. Da habe ich keine Zeit für Fragen. Bitte wende dich damit doch an jemand anderen."~ */
  IF ~~ THEN REPLY #37934 /* ~"Es würde wirklich nicht lange dauern."~ */ GOTO 3
  IF ~~ THEN REPLY #37935 /* ~"Na gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37928 /* ~Er runzelt die Stirn. "Ich habe keine Zeit für Fragen, Bürger. Bitte geh weiter."
~ */
  IF ~~ THEN REPLY #37936 /* ~"Gut. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #37929 /* ~Du siehst einen Wachposten vom Harmonium. Er runzelt die Stirn, als du näher kommst. "Guten Tag noch einmal, Bürger."~ */
  IF ~~ THEN REPLY #37937 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37938 /* ~"Leb wohl."~ */ EXIT
END
