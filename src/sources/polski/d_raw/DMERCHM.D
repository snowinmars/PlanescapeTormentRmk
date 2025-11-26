// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERCHM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERCHM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9370 /* ~Kiedy podchodzisz, mężczyzna obraca się i kłania. "Panie... bez wątpienia przyszedłeś tu, by kupić najlepsze towary, jakie są w Sigil. Nie mogłeś trafić lepiej."~ */
  IF ~~ THEN REPLY #9371 /* ~"Uch... zaczekam, aż zrobisz sobie inwentaryzację."~ */ EXIT
END
