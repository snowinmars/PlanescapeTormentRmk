// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSPEC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSPEC~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9362 /* ~Tento obyvatel Úlu pozoruje práci dabusů. Podrbal se na hlavě a otočil se k tobě. "Ani za život Paní ti nedokážu vysvětlit, co s tím barákem vlastně dělají... ti dabusové vždycky něco strhnou, pak to zase postavěj zpátky... jen tak, bezdůvodně. Nechápu je." ~ */
  IF ~~ THEN REPLY #9363 /* ~"No, tak teda sbohem."~ */ EXIT
END
