// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCUSHM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCUSHM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9350 /* ~Mężczyzna zdaje się być pochłonięty oglądaniem rozłożonych na stoiskach towarów. Nie zwraca uwagi na twoje przybycie.~ */
  IF ~~ THEN REPLY #9351 /* ~"Och... Przepraszam za najście."~ */ EXIT
END
