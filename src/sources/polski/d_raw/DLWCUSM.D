// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWCUSM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWCUSM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3398 /* ~Jestem klientem w jednej z części Niższej Dzielnicy. Chodzę tu i tam, oglądając towary, a tak w ogóle to jestem puszkiem.~ */
  IF ~~ THEN REPLY #3399 /* ~Super. Dzięki, że poświęciłeś mi "chwilę."~ */ EXIT
END
