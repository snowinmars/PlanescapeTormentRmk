// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGORT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DGORT~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 4 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51179 /* ~Dieses riesige Wesen ist über drei Meter groß. Berge von Muskeln stützen seine massige Statur. Es scheint sich mit zwei ähnlichen Wesen neben ihm zu unterhalten.~ */
  IF ~~ THEN REPLY #51180 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #51181 /* ~Beachte das Wesen nicht.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51182 /* ~Auf deinen Gruß hin dreht er sich um und sieht zur dir herunter. Ein Ausdruck der Verwirrung zeigt sich auf seinem Gesicht. "Gort grüßen Kleinen."~ */
  IF ~~ THEN REPLY #51183 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #51184 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #51185 /* ~Er wirft dir einen bedauernden Blick zu und schüttelt den Kopf. "Gort sprechen nicht gut deine Sprache. Tut leid, du fragen Thorp." Er deutet auf eines der Wesen neben ihm.~ */
  IF ~~ THEN REPLY #51186 /* ~"In Ordnung, danke."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 4 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #51187 /* ~Du siehst Gort. Er sieht zu dir herunter und lächelt. "Gort grüßen dich mal noch."~ */
  IF ~~ THEN REPLY #51188 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #51189 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Barsh_Abishai","GLOBAL",4)
~ THEN BEGIN 4 // from:
  SAY #51190 /* ~Du siehst Gort. Er beugt sich zu dir herunter. "Gort grüßen dich, Freund. Gort danken dir für retten Leben seins." Er wendet sich ab.~ */
  IF ~~ THEN REPLY #51191 /* ~Geh weg.~ */ EXIT
END
