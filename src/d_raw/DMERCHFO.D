// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERCHFO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERCHFO~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9368 /* ~Эта женщина с простоватым лицом кричит в толпу, окружающую ее. Когда ты подходишь, она улыбается и протягивает горсть чего-то вроде дохлых крыс и птиц. «Проголодался, голубчик?»~ */
  IF ~~ THEN REPLY #9369 /* ~«Не сегодня, спасибо».~ */ EXIT
END
