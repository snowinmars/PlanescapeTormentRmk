// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSTENCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSTENCH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9338 /* ~Dieser Mann sieht dich mit seltsamen, insektenähnlichen Augen an. Sie sind *riesig*... und sehen aus, als würden sie jeden Moment herausspringen und über das Pflaster rollen. Als du näherkommst, nickt er eifrig und bewegt dabei den Kopf wie ein Vogel auf und ab... auf einmal bemerkst du den Urin- und Fäkaliengeruch, der ihn umgibt.
~ */
  IF ~~ THEN REPLY #9339 /* ~"Sei gegrüßt."~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9340 /* ~Der Mann schnieft und wischt sich die Nase am Ärmel ab. Als er den Mund zum Sprechen öffnet, siehst du sein schwarzes, verfaultes Zahnfleisch. "Geschichten gegen Bares, Sir?" Sein Atem riecht, als hätte er ein Stück vergammeltes Fleisch im Mund stecken. "Geschichten gegen Bares?"~ */
  IF ~~ THEN REPLY #9341 /* ~"Wer bist du?"~ */ EXIT
END
