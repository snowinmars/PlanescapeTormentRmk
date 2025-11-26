// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAPPRENT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DAPPRENT~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51175 /* ~Er scheint sich auf seine Aufgabe zu konzentrieren. Es ist wahrscheinlich das Beste, ihn nicht zu stören.~ */
  IF ~~ THEN REPLY #51176 /* ~Geh weg.~ */ EXIT
END
