// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLSCRIBE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DLSCRIBE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51723 /* ~Der Mann lächelt scheu und deutet eine Verbeugung an, als du näherkommst. "Einen Moment lang habe ich geglaubt, du wärst einer der Männer meines Arbeitgebers, als du reinkamst. War ich erleichtert, daß du es nicht bist!"~ */
  IF ~~ THEN REPLY #51724 /* ~"Warum? Warum bist du hier?"~ */ GOTO 2
  IF ~~ THEN REPLY #51725 /* ~"Das ist gut. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #51726 /* ~Der Mann nickt schuldbewußt. "Ja, ja, ich bin immer noch hier." Er zuckt mit den Schultern.~ */
  IF ~~ THEN REPLY #51727 /* ~"Warum?"~ */ GOTO 2
  IF ~~ THEN REPLY #51728 /* ~"Ja, das habe ich gemerkt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #51729 /* ~"Ich hätte meine Arbeit in der Halle der Aufzeichnungen, Unterhalle Sieben, nicht einen Augenblick länger ausgehalten, also bin ich abgehauen. Wäre ich einfach nach Hause gegangen, hätte mein Arbeitgeber einen Boten geschickt, dieser... dieser Tyrann! Deshalb verstecke ich mich hier. Ich will noch ein bißchen hier bleiben, bevor ich an meinen überfüllten kleinen Schreibtisch zurückkehre."~ */
  IF ~~ THEN REPLY #51730 /* ~"Dann leb wohl."~ */ EXIT
END
