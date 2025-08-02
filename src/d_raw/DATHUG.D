// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DATHUG~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3577 /* ~«Эй! Свежее мясо! Выбирай — или ты мне отдаешь свои деньги, или я забираю твою душу».~ */
  IF ~~ THEN REPLY #2862 /* ~«Попробуй».~ */ EXIT
  IF ~~ THEN REPLY #3578 /* ~«Вот все мои деньги. Не трогай меня».~ */ DO ~TakePartyGold(10000)
~ EXIT
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #3579 /* ~«Есть еще деньги? Давай-ка проверим».~ */
  IF ~~ THEN REPLY #3580 /* ~«Не в этот раз. Тебе придется взять их с моего тела».~ */ EXIT
  IF ~~ THEN REPLY #3581 /* ~«На, бери».~ */ DO ~TakePartyGold(10000)
~ EXIT
  IF ~~ THEN EXIT
END
