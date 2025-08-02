// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTIT01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DTIT01~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43013 /* ~Этот человек пытается обчистить карманы манекена, подвешенного на раме и увешанного колокольчиками. Каждый раз, когда человек слишком грубо прикасается к манекену, тот громко звенит.~ */
  IF ~~ THEN REPLY #43014 /* ~Уйти.~ */ EXIT
END
