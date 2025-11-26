// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DRAT~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3333 /* ~Es ist möglich, daß die Schädelratten im Spiel mit dem Charakter sprechen können. Wenn ja, dann ist dies die Vorlage dafür.~ */
  IF ~~ THEN REPLY #3334 /* ~Freut mich.~ */ EXIT
END
