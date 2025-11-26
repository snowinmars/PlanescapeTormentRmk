// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLSCRIBE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DLSCRIBE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51723 /* ~Мужчина, застенчиво улыбаясь, кивает тебе. «Когда ты подходил, на мгновение я подумал, что ты один из людей моего работодателя. Какое же облегчение, что это не так!»~ */
  IF ~~ THEN REPLY #51724 /* ~«Почему? Почему ты здесь находишься?»~ */ GOTO 2
  IF ~~ THEN REPLY #51725 /* ~«Это хорошо. Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #51726 /* ~Мужчина виновато кивает. «Да-да, я все еще здесь», — пожимает он плечами.~ */
  IF ~~ THEN REPLY #51727 /* ~«Почему?»~ */ GOTO 2
  IF ~~ THEN REPLY #51728 /* ~«Да, я это заметил. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #51729 /* ~«Я больше не мог работать в седьмом зале записей, так что я улизнул. Но если бы я просто пошел домой, мой работодатель послал бы ко мне посыльного, этого... этого деспота! Поэтому я решил спрятаться здесь и побездельничать еще немного перед тем, как вернутся за свой тесный столик».~ */
  IF ~~ THEN REPLY #51730 /* ~«Тогда прощай». ~ */ EXIT
END
