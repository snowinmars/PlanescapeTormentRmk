// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGDIARY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DGDIARY~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #30104 /* ~Эта книга словно сделана из тонких как бумага серебряных листов. На обложке выгравирована женщина, а сбоку имеется небольшой замочек. Как бы ты не пытался, тебе не удается открыть замок. ~ */
  IF ~~ THEN REPLY #50095 /* ~«Что ж, все равно я не хочу это читать... ну, по крайней мере, пока».~ */ EXIT
END
