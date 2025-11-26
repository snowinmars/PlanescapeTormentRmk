// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCARTIST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCARTIST~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51717 /* ~Dieses attraktive, blasse Mädchen lächelt dir zu und deutet auf ein Buch voller Kohlezeichnungen. "Seid gegrüßt, schön das Ihr hier seid, mein Herr. Mein Name ist Ullana. Ich bin Künstlerin von Beruf, und ich mache gerne eine schöne Zeichnung von Euch, für nur fünf einfache Kupfermünzen. Ich kann ein ernstes Porträt machen, wenn Ihr möchtet, oder eine Karikatur."~ */
  IF ~~ THEN REPLY #51718 /* ~"Nein, danke. Leb wohl."~ */ GOTO 2
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #51719 /* ~"Seid abermals gegrüßt, werter Herr. Wollt Ihr ein Porträt zeichnen lassen? Ich versichere Euch, daß Ihr mit dem Ergebnis zufrieden sein werdet..."~ */
  IF ~~ THEN REPLY #51720 /* ~"Nicht jetzt, danke. Leb wohl."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #51721 /* ~Sie lächelt, aber es ist ein trauriges Lächeln. "Dann lebt wohl. Kommt bitte wieder, wenn Ihr es Euch anders überlegt."~ */
  IF ~~ THEN REPLY #51722 /* ~Geh weg.~ */ EXIT
END
