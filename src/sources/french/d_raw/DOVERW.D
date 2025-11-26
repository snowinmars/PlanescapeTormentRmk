// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DOVERW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DOVERW~

IF ~~ THEN BEGIN 0 // from:
  SAY #42765 /* ~Ce porche mène au petit bâtiment, le passage étant bloqué par un mur d'ordures. Les détritus sont tellement entassés qu'ils forment une masse aussi compacte que de la pierre et du mortier.~ */
  IF ~~ THEN REPLY #42766 /* ~~ */ EXIT
  IF ~~ THEN REPLY #42768 /* ~~ */ EXIT
  IF ~~ THEN REPLY #42769 /* ~~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #42772 /* ~~ */
  IF ~~ THEN EXIT
END
