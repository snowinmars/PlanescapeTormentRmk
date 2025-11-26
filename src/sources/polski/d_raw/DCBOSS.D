// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCBOSS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCBOSS~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2899 /* ~Jam jest tym złym, przepotężnym konstruktem, który rządzi tą kostką modrona. Ugnij swe kolana przede mną i płacz, śmiertelniku.~ */
  IF ~~ THEN REPLY #2900 /* ~Niesamowite, zły konstrukcie. Miłego dnia... i krzyżyk na drogę.~ */ EXIT
END
