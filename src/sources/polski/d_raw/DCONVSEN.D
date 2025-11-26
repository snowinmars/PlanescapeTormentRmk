// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCONVSEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCONVSEN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #46332 /* ~Osoba ta odwraca się, gdy im przeszkadzasz, i kłania się grzecznie. "Wybacz, szanowny panie, byłem akurat w połowie rozmowy. Jeśli nie masz nic przeciwko... żegnaj." Wykonuje uprzejmy pół-ukłon i powraca do swoich spraw.~ */
  IF ~~ THEN REPLY #46333 /* ~Odejdż.~ */ EXIT
END
