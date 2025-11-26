// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGP2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGP2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #25998 /* ~Ten niewielki, krępy opryszek opatulony jest w szaty o barwie czerni i czerwieni. Kiedy się doń zbliżasz, obrzuca cię spojrzeniem.~ */
  IF ~~ THEN REPLY #26001 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #26002 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #25999 /* ~Mężczyzna nie odzywa się, tylko spogląda na ciebie. Nie wygląda na to, żeby był hersztem tej niewielkiej szajki.~ */
  IF ~~ THEN REPLY #26000 /* ~"Zatem żegnaj."~ */ EXIT
END
