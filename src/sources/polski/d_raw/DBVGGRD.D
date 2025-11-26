// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBVGGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DBVGGRD~

IF ~  !Dead("Barr")
~ THEN BEGIN 0 // from:
  SAY #56938 /* ~Strażnik pobieżnie ci się przygląda ze znudzonymi, na wpół przymkniętymi oczami. "Jak chcesz skorzystać z bramy, musisz rozmówić się z Barrem, śmiałku..." Kiwa głową w kierunku Barra, stojącego przed bramą. "...jak nie, to daj mi żyć, dobra?" Odwraca wzrok od ciebie.~ */
  IF ~~ THEN REPLY #56939 /* ~Odejdź.~ */ EXIT
END

IF ~  Dead("Barr")
~ THEN BEGIN 1 // from:
  SAY #56940 /* ~Strażnik ziewa, w trakcie gdy ci się przygląda. "Mam nadzieję, że nie chodziło ci o bramę... teraz, gdy Barr nie żyje, nikt nie wie, jak ona działa." Odwraca wzrok od ciebie.~ */
  IF ~~ THEN REPLY #56941 /* ~Odejdź.~ */ EXIT
END
