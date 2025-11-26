// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJANSEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DJANSEN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67910 /* ~Этот человек весь в синяках и крови. Его лицо распухло от жестоких побоев, проведенных стражей Проклятого. Он не отвечает, только выплевывает зуб и кровавый сгусток.~ */
  IF ~~ THEN REPLY #67911 /* ~«Ладно, прощай». ~ */ EXIT
END
