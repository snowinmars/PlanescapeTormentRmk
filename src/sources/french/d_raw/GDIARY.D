// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GDIARY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~GDIARY~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #30104 /* ~Ce livre semble fait de feuilles en argent aussi minces que du papier. En couverture, une gravure représente une femme et, sur la tranche se trouve une petite serrure. Malgré tes tentatives pour l'ouvrir, la serrure résiste.~ */
  IF ~~ THEN REPLY #50095 /* ~"Oh, de toute façon, je ne voulais pas le lire… du moins, pas encore."~ */ EXIT
END
