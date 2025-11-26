// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMAJORD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMAJORD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #44696 /* ~Du siehst einen Würfel mit zwei Armen, zwei Beinen und zwei kleinen Flügeln, die aus den Seiten sprießen. Auf der Vorderseite des Würfels ist ein lebhaftes Gesicht. Als du dich näherst, richtet das Wesen den Blick auf dich.~ */
  IF ~~ THEN REPLY #44697 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #44698 /* ~Beachte das Wesen nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #44699 /* ~Das Wesen starrt dich ausdruckslos an. "Seid gegrüßt, Abenteurer. Willkommen in Rubikon, dem Verlies-Konstrukt. Vielen Dank, daß Ihr Rubikon für Euer Verlies-Abenteuer gewählt hast. Ihr könnt Rubikon durch diese Tür betreten."~ */
  IF ~~ THEN REPLY #44700 /* ~"Was ist Rubikon?"~ */ GOTO 2
  IF ~~ THEN REPLY #44701 /* ~"Was ist ein Verlies-Konstrukt?"~ */ GOTO 3
  IF ~~ THEN REPLY #44702 /* ~"Danke für die Auskunft, aber ich muß weiter. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #44703 /* ~Das Wesen starrt dich an, ohne zu antworten.~ */
  IF ~~ THEN REPLY #44704 /* ~"Was ist ein Verlies-Konstrukt?"~ */ GOTO 3
  IF ~~ THEN REPLY #44705 /* ~"Danke für die Auskunft, aber ich muß weiter. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0
  SAY #44706 /* ~Das Wesen blinzelt dir zu, doch man merkt ihm nicht an, ob es deine Frage gehört hat.~ */
  IF ~~ THEN REPLY #44708 /* ~"Was ist Rubikon?"~ */ GOTO 2
  IF ~~ THEN REPLY #44709 /* ~"Danke für die Auskunft, aber ich muß weiter. Leb wohl."~ */ EXIT
END
