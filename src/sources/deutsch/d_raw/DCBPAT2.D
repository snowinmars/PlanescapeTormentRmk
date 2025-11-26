// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCBPAT2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCBPAT2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3188 /* ~Ich bin ebenfalls zu Gast in diesem feinen Etablissement.~ */
  IF ~~ THEN REPLY #3189 /* ~Muß ja wirklich nett sein dort.~ */ EXIT
END
