// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBTGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBTGRD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67912 /* ~Der Wächter hält inne und sagt: "Du hast nichts gesehen, wenn dir dein leben lieb ist." Er wendet sich wieder seinem Opfer zu.~ */
  IF ~~ THEN REPLY #67913 /* ~"Leb wohl."~ */ EXIT
END
