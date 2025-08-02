// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERCHF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERCHF~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9372 /* ~Когда ты подходишь, эта женщина осматривает тебя, упирает руки в бока и насмешливо говорит: «Не красавчик? Может, у тебя найдется пара монет и ты захочешь чего-нибудь купить у странствующей жестянщицы, а?»~ */
  IF ~~ THEN REPLY #9373 /* ~«Неинтересно... замухрышка».~ */ EXIT
END
