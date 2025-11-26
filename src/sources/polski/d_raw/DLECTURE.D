// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLECTURE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DLECTURE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50862 /* ~Osoba odwraca się i patrzy na ciebie trochę z irytacją. "Słuchałem wykładu, panie. Mam nadzieję, że masz na tyle dobrego wychowania, by zostawić mnie w spokoju i nie przeszkadzać mi. Żegnaj."~ */
  IF ~~ THEN REPLY #50863 /* ~Odejdź.~ */ EXIT
END
