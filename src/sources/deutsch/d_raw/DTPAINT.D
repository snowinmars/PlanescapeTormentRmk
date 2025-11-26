// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTPAINT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DTPAINT~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36403 /* ~Du siehst ein schlankes Tiefling-Mädchen, das mit dem Rücken zu dir steht. Dir fällt auf, daß ihre Hände und der hochkant vor ihr liegende Tisch mit einer frischen Schicht von etwas beschmiert sind, das aussieht wie rosa Farbe. Sie scheint deine Annäherung nicht zu bemerken.~ */
  IF ~~ THEN REPLY #36406 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #36407 /* ~Beachte das Mädchen nicht, und geh weiter.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36404 /* ~Als sie deine Stimme hört, dreht sie ihren Kopf, um dich zu betrachten. Ihr Gesicht ist auffallend hübsch, auch wenn es ein bißchen dreckig und mit rosa Farbtropfen gesprenkelt ist. Sie lächelt dich schelmisch an und wendet ihre Aufmerksamkeit dann wieder ihrer behelfsmäßigen Leinwand zu.~ */
  IF ~~ THEN REPLY #36408 /* ~"Ich hätte ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36409 /* ~Laß das Mädchen in Ruhe weitermalen.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from: 1.0
  SAY #36405 /* ~Das Tiefling-Mädchen scheint voll und ganz in ihr Kunstwerk vertieft zu sein. Sie ignoriert dich vollständig.~ */
  IF ~~ THEN REPLY #36410 /* ~Laß das Mädchen in Ruhe weitermalen.~ */ EXIT
END
