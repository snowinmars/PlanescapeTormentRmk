// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAG1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAG1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48800 /* ~Ты видишь мужчину, который смотрит внутрь здания.~ */
  IF ~~ THEN REPLY #48801 /* ~«Приветствую».~ */ GOTO 2
  IF ~~ THEN REPLY #48802 /* ~Оставить мужчину в покое.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #48803 /* ~«Опять ты... я тебе, что, не говорил, что это мое место? Потеряйся, или я буду жесток с тобой!»~ */
  IF ~~ THEN REPLY #48804 /* ~«Хочется посмотреть на эту попытку».~ */ GOTO 3
  IF ~~ THEN REPLY #48805 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #48806 /* ~«Я первым нашел это место. Тебе лучше не пытаться, раз ты не знаешь, что хорошо для тебя».~ */
  IF ~~ THEN REPLY #48807 /* ~«И что ты собираешься делать?»~ */ GOTO 3
  IF ~~ THEN REPLY #48808 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #48809 /* ~«Ты сам напросился!»~ */
  IF ~~ THEN REPLY #48810 /* ~Атаковать его.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
