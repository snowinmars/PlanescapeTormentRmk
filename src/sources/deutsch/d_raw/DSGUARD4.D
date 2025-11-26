// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSGUARD4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSGUARD4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #61227 /* ~Du siehst einen Harmonium-Wächter. Er scheint seine Umgebung aufmerksam zu beobachten.~ */
  IF ~~ THEN REPLY #61228 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #61229 /* ~Beachte den Mann nicht.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61230 /* ~Er guckt dich kurz an und schaut dann weg. Sonst zeigt er keinerlei Reaktion auf deine Gegenwart.~ */
  IF ~~ THEN REPLY #61231 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #61232 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #61233 /* ~Er schüttelt den Kopf und winkt dir, zu gehen. "Nein." Er scheint dich zu ignorieren.~ */
  IF ~~ THEN REPLY #61234 /* ~"Es wird nur einen kurzen Moment deiner Zeit beanspruchen."~ */ GOTO 3
  IF ~~ THEN REPLY #61235 /* ~"Na gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #61236 /* ~Er schüttelt den Kopf und winkt dir, zu gehen. "Nein." Er scheint dich noch immer zu ignorieren.~ */
  IF ~~ THEN REPLY #61237 /* ~"Na gut. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #61238 /* ~Du siehst eine Wache des Harmonium. Sie reagiert nicht auf deine Gegenwart, obwohl du dir sicher bist, daß sie dich bemerkt hat.~ */
  IF ~~ THEN REPLY #61239 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #61240 /* ~"Leb wohl."~ */ EXIT
END
