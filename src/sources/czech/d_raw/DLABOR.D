// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLABOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DLABOR~

IF ~  !Global("Craddock_Quest","GLOBAL",4)
~ THEN BEGIN 0 // from:
  SAY #9348 /* ~Vidíš hubeného, unaveně vypadajícího muže. Jeho oblečení páchne špínou a potem a on sám vypadá udýchaně. Tvému příchodu nevěnuje ani tu nejmenší pozornost... vypadá jako jeden z pomocníků na tržišti.~ */
  IF ~~ THEN REPLY #9349 /* ~Odejdi od něj.~ */ EXIT
END

IF ~  Global("Craddock_Quest","GLOBAL",4)
~ THEN BEGIN 1 // from:
  SAY #22651 /* ~Jak se blížíš, ten muž vzhlédne... je to jeden z mužů, se kterými jsi pracoval, když jsi zastupoval Jhelaie. "Hele, nazdar... fajn tě zas vidět." Sníží hlas. "Drž se dál od Craddocka... pekelně rychle se rozpálí, to si piš."~ */
  IF ~~ THEN REPLY #22652 /* ~"Díky za varování. Sbohem."~ */ EXIT
END
