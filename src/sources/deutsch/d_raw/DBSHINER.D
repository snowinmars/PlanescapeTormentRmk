// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBSHINER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBSHINER~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51711 /* ~Der junge Mann lächelt, als du sein Zelt betrittst, und bedeutet dir, dich zu setzen. "Ihre Stiefel putzen und wachsen, mein Herr? Ein wunderbarer Glanz für nur zwei einfache Kupfermünzen..."~ */
  IF ~~ THEN REPLY #51712 /* ~"Nein, danke. Leb wohl."~ */ GOTO 2
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #51713 /* ~"Ich heiße Euch abermals willkommen, mein Herr. Wollt Ihr vielleicht Eure Stiefel putzen lassen? Putzen und Wachsen für ein Paar einfache Kupfermünzen..."~ */
  IF ~~ THEN REPLY #51714 /* ~"Nein, danke. Leb wohl."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #51715 /* ~"Auf Wiedersehen, mein Herr... Kommt wieder, wenn Eure Stiefel geputzt werden müssen."~ */
  IF ~~ THEN REPLY #51716 /* ~Geh weg.~ */ EXIT
END
