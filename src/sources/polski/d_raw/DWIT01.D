// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWIT01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DWIT01~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43023 /* ~Ten człowiek jest pochłonięty doskonaleniem rozmaitych ciosów i innych elementów walki, które ćwiczy na drewnianej kukle treningowej. Zdaje się, że nie masz co liczyć, aby znalazł czas i odezwał się do ciebie choćby jednym słowem.~ */
  IF ~~ THEN REPLY #43024 /* ~Odejdź.~ */ EXIT
END
