// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPROPHY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DPROPHY~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9354 /* ~Diese grimmig wirkende Frau wirft dir einen kurzen Blick zu, bevor sie ihren Redeschwall auf dem Podest fortsetzt. Ihre kräftige Stimme ist auf dem gesamten Marktplatz hörbar und übertönt sogar den Lärm der Händler und den der übrigen Menschenmenge.~ */
  IF ~~ THEN REPLY #9355 /* ~Laß sie in Ruhe.~ */ EXIT
END
