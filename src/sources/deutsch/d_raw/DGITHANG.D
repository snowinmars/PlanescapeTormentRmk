// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGITHANG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DGITHANG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2915 /* ~Ich bin ein githyankischer Schwindler, der versucht, den Spieler in eine Falle zu locken.~ */
  IF ~~ THEN REPLY #2916 /* ~Nun, dann werde ich zusehen, daß ich mich von dir fernhalte. Leb wohl.~ */ EXIT
END
