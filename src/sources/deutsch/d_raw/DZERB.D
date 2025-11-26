// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZERB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DZERB~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51192 /* ~Dieses riesige Wesen ist über drei Meter groß. Berge von Muskeln stützen seine massige Statur. Es scheint sich mit zwei ähnlichen Wesen neben ihm zu unterhalten.~ */
  IF ~~ THEN REPLY #51193 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #51194 /* ~Beachte das Wesen nicht.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51195 /* ~Auf deinen Gruß hin dreht er sich um und beginnt suchend umherzuschauen. Kurz darauf blickt er nach unten und bemerkt dich. Ein Ausdruck der Verwirrung zieht über sein Gesicht. "Was du wollen von Zerb?"~ */
  IF ~~ THEN REPLY #51196 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #51197 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #51198 /* ~Er wirft dir einen bedauernden Blick zu und schüttelt den Kopf. "Zerb sprechen Sprache nicht gut. Entschuldigung, du reden Thorp." Er deutet auf eines der Wesen neben ihm.~ */
  IF ~~ THEN REPLY #51199 /* ~"In Ordnung, danke."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 4 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #51200 /* ~Du siehst Zerb. Er sieht zu dir herunter und lächelt. "Zerb grüßen dich wieder."~ */
  IF ~~ THEN REPLY #51201 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #51202 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Barsh_Abishai","GLOBAL",4)
~ THEN BEGIN 4 // from:
  SAY #51203 /* ~Du siehst Zerb. Er sieht zu dir herunter und verbeugt sich. "Zerb grüßen dich, Freund. Zerb danken dir für Leben retten." Er wendet sich ab.~ */
  IF ~~ THEN REPLY #51204 /* ~Geh weg.~ */ EXIT
END
