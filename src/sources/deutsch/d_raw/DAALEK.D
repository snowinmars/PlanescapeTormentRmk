// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAALEK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DAALEK~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33862 /* ~Du siehst einen älteren Mann mit langem, weißem Haar und wettergegerbter, gelber Haut. Er ist trotz seines offensichtlich hohen Alters noch recht groß. Er lächelt und verbeugt sich leicht.~ */
  IF ~~ THEN REPLY #33863 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #33864 /* ~Ignoriere ihn.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33865 /* ~"Gleichfalls, Schleifer. Womit kann ich dir dienen?" Er hebt seine Augenbrauen, während er auf deine Antwort wartet.~ */
  IF ~~ THEN REPLY #33866 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #33867 /* ~"Ich interessiere mich für ein paar Zauber."~ */ GOTO 5
  IF ~~ THEN REPLY #33868 /* ~"Mich interessiert, was du zu verkaufen hast."~ */ DO ~StartStore("Alekstr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #33869 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #33870 /* ~Er runzelt die Stirn. "Vergib mir, Schleifer, aber ich verkaufe Gegenstände magischer Natur, nicht Informationen. Wenn du hinter Informationen her bist, dann mußt du sie dir anderswo besorgen."~ */
  IF ~~ THEN REPLY #33871 /* ~"Ich interessiere mich für ein paar Zauber."~ */ GOTO 5
  IF ~~ THEN REPLY #33872 /* ~"Zeig mir, was du zu verkaufen hast."~ */ DO ~StartStore("Alekstr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #33873 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #33874 /* ~Null node~ */
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #33877 /* ~Du siehst Aalek, den Magiehändler. "Guten Tag, Schleifer. Nett, daß ich dich wiedersehe. Womit kann ich dir dienen?"~ */
  IF ~~ THEN REPLY #33878 /* ~"Zeig mir noch mal deine Ware."~ */ DO ~StartStore("Alekstr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #33879 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 2.0
  SAY #33880 /* ~Er nickt und sieht sich auf dem Markt um. "Vergib mir, Schleifer, ich verkaufe nur magische Gegenstände. Du solltest mit Asche reden. Sein Stand ist drüben beim Ofen, in der Nähe des Ausgangs."~ */
  IF ~~ THEN REPLY #33881 /* ~"Zeig mir, was du zu verkaufen hast."~ */ DO ~StartStore("Alekstr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #33882 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END
