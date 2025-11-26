// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLODGER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DLODGER~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #66627 /* ~Этот субъект удивлен твоему виду. «Как странно... Я совершенно точно помню, что дверь была заперта на замок. В любом случаю, я прошу тебя незамедлительно покинуть это помещение».~ */
  IF ~~ THEN REPLY #66629 /* ~«Конечно. Прощай».~ */ EXIT
  IF ~~ THEN REPLY #67880 /* ~«Я уйду тогда, когда захочу. Прощай».~ */ EXIT
END
