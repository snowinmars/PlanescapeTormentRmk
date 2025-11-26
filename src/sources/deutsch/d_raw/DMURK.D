// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMURK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMURK~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58784 /* ~Du siehst einen Kaufmann. An ihm ist nichts Bemerkenswertes. Er lächelt und nickt, als du näherkommst.~ */
  IF ~~ THEN REPLY #58785 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #58786 /* ~Ignoriere ihn.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58789 /* ~Er nickt dir kurz zu. "Guten Tag. Ich bin Murk, haste Interesse an ein paar Waren?"~ */
  IF ~~ THEN REPLY #58790 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58791 /* ~"Was hast du denn alles?"~ */ GOTO 3
  IF ~~ THEN REPLY #58792 /* ~"Nein, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58793 /* ~Er schüttelt den Kopf und runzelt die Stirn. "Ich verkaufe keine Informationen. Wenn du Fragen hast, dann stell sie anderswo."~ */
  IF ~~ THEN REPLY #58794 /* ~"Schon gut, was hast du denn alles?"~ */ GOTO 3
  IF ~~ THEN REPLY #58795 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 4.0
  SAY #58796 /* ~Seine Augen leuchten auf, und er setzt ein gemeines Grinsen auf. "Naja,... ich habe hier gerade eine schöne Auswahl an Handschuhen und Äxten. Das einzige, was noch besser ist, als jemanden mit deinen eigenen Händen zu Hackfleisch zu verarbeiten, ist, ihn in kleine zuckende Stücke zu zerschneiden."~ */
  IF ~~ THEN REPLY #58797 /* ~"Zeig mir deine Waren."~ */ DO ~StartStore("CrstG1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58798 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #58799 /* ~Du siehst Murk, den Kaufmann. Er nickt dir zu, als du näherkommst. "Hallo, da bist du ja wieder. Was kann ich für dich tun?"~ */
  IF ~~ THEN REPLY #58800 /* ~"Was hast du denn alles?"~ */ GOTO 3
  IF ~~ THEN REPLY #58801 /* ~"Zeig mir deine Waren."~ */ DO ~StartStore("CrstG1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58802 /* ~"Leb wohl."~ */ EXIT
END
