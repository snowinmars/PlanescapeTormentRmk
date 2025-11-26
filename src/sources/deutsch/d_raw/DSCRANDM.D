// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCRANDM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCRANDM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3073 /* ~Als du dich der Frau näherst und mit ihr reden willst, lodern Ignus Augen auf. Bevor du ihn bremsen kannst, hat er sie bereits umarmt. Sie erwidert die Umarmung und verliert sich in den Flammen. Dabei schreit sie kein einziges Mal. Ihr letzter Anblick brennt sich in dein Gedächtnis ein: In ihren Augen glüht die Leidenschaft und eine alles verschlingende Liebe. Von ihr bleibt nichts übrig, nicht einmal ein Häufchen Asche.~ */
  IF ~~ THEN EXIT
END
