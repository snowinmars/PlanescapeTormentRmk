// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVILM1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DVILM1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3396 /* ~Jestem jednym ze Zbieraczy z Zakopanej Wioski. Włóczę się wokoło, zbierając przedmioty i ciała, które mógłbym zanieść Farodowi.~ */
  IF ~~ THEN REPLY #3397 /* ~Brzmi ciekawie.~ */ EXIT
END
