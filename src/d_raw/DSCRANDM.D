// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCRANDM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCRANDM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3073 /* ~Когда ты подходишь к женщине, чтобы поговорить с ней, глаза Игнуса наполняются огнем, и, до того, как ты успеваешь остановить его, он обнимает ее. Она обнимает его в ответ, теряясь в его пламени. Она даже не кричит. Последнее ее мгновение четко вжигается в твою память: ее глаза полны огненной страсти и всепоглощающей любви. От нее ничего не осталось — даже пепла.~ */
  IF ~~ THEN EXIT
END
