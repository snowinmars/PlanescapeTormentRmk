// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCWASTE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCWASTE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3075 /* ~В Серую пустошь попадаешь, лишь отчаявшись. Но потом, конечно, ты теряешь даже отчаянье. Подожди немного, я внесу в игру немного настоящей философии Унылых.~ */
  IF ~~ THEN REPLY #3373 /* ~Знаешь, тебя послушать — можно и в штаны наложить.~ */ EXIT
END
