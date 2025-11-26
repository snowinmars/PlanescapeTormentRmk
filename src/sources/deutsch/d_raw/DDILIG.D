// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDILIG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDILIG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2889 /* ~Die ernst aussehende alte Frau hat es offensichtlich eilig. Als sie bemerkt, daß du näher kommst, mustert sie dich mit einem mürrischen Blick und preßt ihre Lippen zusammen.
~ */
  IF ~~ THEN REPLY #2890 /* ~Only if you show me your boobies, honey-baby.~ */ EXIT
END
