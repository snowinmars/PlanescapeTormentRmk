// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_COOK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_COOK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67945 /* ~Kuchařova tvář zrudla vztekem. "Co, neslyšel jsi mě? Vypadni! Ven z mé kuchyně!"~ */
  IF ~~ THEN REPLY #67946 /* ~Odejdi.~ */ EXIT
END
