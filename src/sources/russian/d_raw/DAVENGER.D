// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAVENGER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DAVENGER~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67881 /* ~Этот человек игнорирует тебя, его взгляд устремлен на судью на помосте. Его губы плотно стиснуты, а костяшки пальцев побелели. Он невесело посмеивается себе под нос, даже не замечая твоего присутствия.~ */
  IF ~~ THEN REPLY #67882 /* ~«Ладно, забудь об этом».~ */ EXIT
END
