// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSOFF1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSOFF1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3174 /* ~"Prosím! Zachraň mě! Zkoušejí mě zabít jenom proto, že dělám svou práci! Nechtěl jsem nikomu ublížit! Copak nevidí, že takoví jako oni tohle město ničí?" Vzlyká. "Prosím... musíš něco udělat!"~ */
  IF ~~ THEN REPLY #3175 /* ~"Myslím, si, že udělám následující. Podívám se na tvou smrt."~ */ EXIT
  IF ~~ THEN REPLY #66758 /* ~"Udělám, co budu moci."~ */ EXIT
END
