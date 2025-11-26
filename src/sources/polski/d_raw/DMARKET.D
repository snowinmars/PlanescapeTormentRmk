// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMARKET.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMARKET~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3028 /* ~Jestem kupcem w Niższej Dzielnicy. Handluję poza targiem, zaraz na zewnątrz domu aukcyjnego.~ */
  IF ~~ THEN REPLY #3029 /* ~Mam nadzieję, że kiedyś tu coś od was KUPIĘ chłopaki.~ */ EXIT
END
