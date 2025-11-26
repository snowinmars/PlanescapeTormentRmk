// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_NOTLK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_NOTLK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67920 /* ~"Cokolwiek byś miał do powiedzenia, wiedz, że nic a nic mnie to nie interesuje.
Daj mi święty spokój."~ */
  IF ~~ THEN REPLY #67921 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END
