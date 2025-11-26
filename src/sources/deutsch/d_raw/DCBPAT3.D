// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCBPAT3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCBPAT3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3190 /* ~Wie die letzten beiden hocke ich auch oft in dieser Bar. Bin sozusagen ein Barhocker. Ha, ha!~ */
  IF ~~ THEN REPLY #3191 /* ~Du Witzfigur.~ */ EXIT
END
