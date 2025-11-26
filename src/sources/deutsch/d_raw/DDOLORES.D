// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDOLORES.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDOLORES~

IF ~~ THEN BEGIN 0 // from:
  SAY #34365 /* ~Diese dunkelhaarige, blaßhäutige Frau hat ein kultiviertes und vornehmes Aussehen. Als sie sich zu dir umdreht, bemerkst du, daß ihre Augen, die du bisher für grau gehalten hattest, die Farbe gebürsteten Stahls haben.~ */
  IF ~~ THEN REPLY #34366 /* ~"Sei gegrüßt..."~ */ EXIT
END
