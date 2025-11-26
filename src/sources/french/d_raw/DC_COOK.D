// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_COOK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_COOK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67945 /* ~Le cuistot devient rouge de colère. "Tu es sourd, ou quoi ? Hors de ma cuisine, je t'ai dit !"~ */
  IF ~~ THEN REPLY #67946 /* ~Pars.~ */ EXIT
END
