// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYBGANG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DYBGANG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #46105 /* ~Ten mężczyzna o gniewnym wyrazie twarzy wygląda raczej na kogoś, kto nie tyle jest złoczyńcą, co na kogoś, kto stara się usilnie na takiego wyglądać. "'Szpicuj się', 'trepie'. Możesz rozmawiać sobie z wysoko postawionymi krwawnikami, ale ja z tobą nie 'zaśpiewam' ani słówka..."~ */
  IF ~~ THEN REPLY #46106 /* ~"Dobra, dobra. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #46107 /* ~Odejdź.~ */ EXIT
END
