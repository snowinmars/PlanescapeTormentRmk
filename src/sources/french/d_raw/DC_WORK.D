// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_WORK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_WORK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67978 /* ~L'ouvrier ne t'accorde que quelques secondes de son temps. "Écoute, mon boulot va pas se faire tout seul si je cause avec les passants. Laisse-moi bosser en paix, tu veux ?" Il se remet à l'ouvrage.~ */
  IF ~~ THEN REPLY #67979 /* ~Pars.~ */ EXIT
END
