// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSGUARD2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSGUARD2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37939 /* ~Du siehst einen Wachposten vom Harmonium. Er winkt dich fort, als du näher kommst. "Bitte geh weiter, Bürger. Hier gibt's nichts zu sehen."~ */
  IF ~~ THEN REPLY #37944 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #37945 /* ~Ignoriere den Mann.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37940 /* ~Er runzelt die Stirn. "Was gibt's denn an 'bitte geh weiter' nicht zu verstehen?" Er starrt dich an. "Hier gibt's nichts zu sehen, fort mit dir."~ */
  IF ~~ THEN REPLY #37946 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37947 /* ~"Na gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #37941 /* ~Er blickt dich höhnisch an. "Oh, du hast also Fragen. Nun, das macht wirklich einen himmelweiten Unterschied..." Er starrt dich an. "Hör mal, vielleicht habe ich einfach keine Zeit für deine Fragen. Geh weiter."~ */
  IF ~~ THEN REPLY #37948 /* ~"Es würde wirklich nicht lange dauern."~ */ GOTO 3
  IF ~~ THEN REPLY #37949 /* ~"Na gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37942 /* ~"Ich habe keine Zeit für dich, Bürger. Geh weiter." Er winkt dich fort.~ */
  IF ~~ THEN REPLY #37950 /* ~"Gut. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #37943 /* ~Du siehst einen Wachposten vom Harmonium. Er runzelt die Stirn, als du näher kommst. "Ich habe keine Zeit zum Tratschen, Bürger. Bitte geh weiter."~ */
  IF ~~ THEN REPLY #37951 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37952 /* ~"Leb wohl."~ */ EXIT
END
