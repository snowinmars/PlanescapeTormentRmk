// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYOBOY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DYOBOY~

IF ~  Global("YoBoy","AR0600",0)
~ THEN BEGIN 0 // from:
  SAY #46037 /* ~Этот молодой мускулистый «громила», будучи достаточно крупным и хорошо вооруженным, чтобы быть опасным, все же кажется слишком чистым для обычного уличного хулигана. У него огромный топор в одной руке и стальной коробок в другой. Когда ты приближаешься к нему, он надувается и сердито смотрит на тебя. «На что уставился, 'бедолага'? 'Отвали', пока я тебя 'доходягой' не сделал!»~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN EXTERN ~DANNAH~ 216
  IF ~  !NearbyDialog("DAnnah")
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #46097 /* ~«Ты кажешься слишком ухоженным для бандита».~ */ GOTO 2
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #46098 /* ~«Остынь... Я просто хочу задать пару вопросов...»~ */ GOTO 2
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #46099 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #46042 /* ~Он поглядывает на кинжалы Анны, но ничего не отвечает.~ */
  IF ~~ THEN REPLY #46043 /* ~«Ты что-то уж *сильно* ухожен для бандита».~ */ GOTO 2
  IF ~~ THEN REPLY #46044 /* ~«Остынь... Я просто хочу задать пару вопросов...»~ */ GOTO 2
  IF ~~ THEN REPLY #46045 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.2 1.0 1.1 12.0 12.1 14.0
  SAY #46046 /* ~«Перестань трещать своей 'костяной шкатулкой', недоумок! Это *моя* территория, так что убирайся отсюда быстро, если не хочешь, чтобы мои 'знатоки' порвали тебя на клочки!»~ */
  IF ~  NearbyDialog("Dannah")
~ THEN EXTERN ~DANNAH~ 217
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DAnnah")
!Global("YoBoy","AR0600",3)
~ THEN REPLY #46100 /* ~«Просто интересно, что в том твоем коробке».~ */ GOTO 4
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #46101 /* ~«Нет, пожалуй, я просто поброжу здесь поблизости».~ */ GOTO 3
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #46102 /* ~«Хорошо, я ухожу. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.2 6.2 7.2 8.3
  SAY #46051 /* ~Его лицо багровеет от злобы, он скрежещет зубами. «Ну все, ты таки допросился! Взять его, знатоки!» Он поднимает топор и бросается в атаку!~ */
  IF ~~ THEN REPLY #46052 /* ~Сражаться.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #46053 /* ~Сбежать.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #46054 /* ~Он поднимает бровь и глядит на коробок, пожимая плечами. «Не знаю, у меня не выходит открыть эту 'чертову' штуку... Кажется, это 'чертова' говорящая голова, но я ее уронил, и она замолкла. Я надеялся продать ее в антикварной лавке, но Вриша ее 'черта с два' возьмет. Нужно? Отдаю за сотню медяков».~ */
  IF ~~ THEN REPLY #46055 /* ~«Погоди, откуда он у тебя?»~ */ GOTO 5
  IF ~  Global("Mertwyn","GLOBAL",1)
~ THEN REPLY #46056 /* ~«Это же голова от того тела из Фестхолла, так ведь?»~ */ GOTO 6
  IF ~  PartyGoldGT(99)
~ THEN REPLY #46057 /* ~«Конечно, я его беру».~ */ DO ~TakePartyGold(100)
GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ GOTO 11
  IF ~~ THEN REPLY #46058 /* ~«Нет, спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #46059 /* ~На миг лицо молодой громилы принимает робкое выражение; это выглядит смехотворно, учитывая его массивную фигуру. «Я его... нашел. Как будто это тебя касается, 'бедолага'! Он тебе нужен или нет? Гони сто монет, или я просто оставлю себе эту 'чертову' штуковину».~ */
  IF ~  Global("Mertwyn","GLOBAL",1)
~ THEN REPLY #46060 /* ~«Это же голова от того тела из Фестхолла, так ведь?»~ */ GOTO 6
  IF ~  PartyGoldGT(99)
~ THEN REPLY #46061 /* ~«Конечно, я его беру».~ */ DO ~TakePartyGold(100)
GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ GOTO 11
  IF ~~ THEN REPLY #46062 /* ~«Нет, спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0
  SAY #46063 /* ~Он рычит на тебя. Плюясь во все стороны, он выкрикивает: «Да с какого 'черта' мне знать! Какая разница?! Я просто нашел эту 'чертову' штуковину... а то, что я нахожу, я не выкидываю. Она моя по праву! Хочешь? *Купи*. Сто 'звенелок', 'пень'».~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #46064 /* ~«Конечно, я его беру».~ */ DO ~TakePartyGold(100)
GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #46065 /* ~«Как насчет того, чтобы поспорить на нее?»~ */ GOTO 7
  IF ~~ THEN REPLY #46066 /* ~«Как насчет того, чтобы я просто избил тебя до потери сознания и забрал его?»~ */ GOTO 3
  IF ~~ THEN REPLY #46067 /* ~«Нет, спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #46068 /* ~«А?»~ */
  IF ~~ THEN REPLY #46069 /* ~«Спорим на нее. Правила такие: берешь топор и бьешь меня, куда тебе захочется. Если потом я смогу подняться и забрать коробок, он мой... в ином случае, можешь забрать с меня все, что захочешь».~ */ GOTO 8
  IF ~  PartyGoldGT(99)
~ THEN REPLY #46070 /* ~«Неважно. Я просто куплю его».~ */ DO ~TakePartyGold(100)
GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ GOTO 11
  IF ~~ THEN REPLY #46071 /* ~«Забудь. Я просто изобью тебя до потери сознания и заберу его».~ */ GOTO 3
  IF ~~ THEN REPLY #46072 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #46073 /* ~Он смотрит весьма скептически сначала на свой топор, потом на тебя.~ */
  IF ~  HPGT(Protagonist,15)
~ THEN REPLY #46074 /* ~«Что, боишься, что я что-то типа 'бессмертного', которому твой топор нипочем? *Погляди* на меня».~ */ DO ~Damage(Protagonist,LOWER,15)
SetAnimState(Myself,ANIM_MIMEATTACK1)
SetAnimState(Protagonist,ANIM_MIMEGETHIT)
AddexperienceParty(1000)
~ GOTO 10
  IF ~  HPLT(Protagonist,16)
~ THEN REPLY #46075 /* ~«Что, боишься, что я что-то типа 'бессмертного', которому твой топор нипочем? *Погляди* на меня».~ */ DO ~Damage(Protagonist,LOWER,15)
SetAnimState(Myself,ANIM_MIMEATTACK1)
SetAnimState(Protagonist,ANIM_MIMEGETHIT)
~ GOTO 9
  IF ~  PartyGoldGT(99)
~ THEN REPLY #46076 /* ~«Неважно. Я просто куплю его».~ */ DO ~TakePartyGold(100)
GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ GOTO 11
  IF ~~ THEN REPLY #46077 /* ~«Забудь. Я просто изобью тебя до потери сознания и заберу его».~ */ GOTO 3
  IF ~~ THEN REPLY #46078 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #46079 /* ~Бандит вонзает в тебя свой тяжелый топор, его лезвие рассекает плоть и кости в одном мощном ударе, убивая тебя.~ */
  IF ~~ THEN REPLY #46080 /* ~Пасть во тьму...~ */ DO ~SetGlobal("YoBoy","AR0600",2)
TakePartyGold(10000)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #46081 /* ~Бандит вонзает в тебя свой тяжелый топор, его лезвие рассекает плоть и кости в одном мощном ударе. Ты, шатаясь, выкашливаешь из легких кровь, затем ухмыляешься молодому крепышу. Он шокированно глядит, как ты направляешься к нему за стальным коробком.~ */
  IF ~~ THEN REPLY #46082 /* ~«Теперь я заберу коробок. Жаль, что ты не догадался, что я что-то типа 'бессмертного', которому твой топор не страшен, а? Счастливо».~ */ DO ~GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ EXIT
  IF ~~ THEN REPLY #46083 /* ~Забрать коробок и оставить его стоять здесь в растерянности.~ */ DO ~GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.2 5.1 6.0 7.1 8.2
  SAY #46084 /* ~Крепкий молодой бандит хватает твои монеты и сует тебе коробок. «А теперь проваливай. 'Черта с два' я хочу с тобой дальше болтать, 'пень'».~ */
  IF ~~ THEN REPLY #46085 /* ~«Да-да, как скажешь. Прощай».~ */ EXIT
  IF ~~ THEN REPLY #46086 /* ~Уйти.~ */ EXIT
END

IF ~  Global("YoBoy","AR0600",1)
~ THEN BEGIN 12 // from:
  SAY #46087 /* ~Молодой громила презрительно усмехается, когда ты подходишь к нему. «Снова ты?! 'Отвали', 'пень'!»~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #46088 /* ~«Ты кажешься слишком ухоженным для бандита».~ */ GOTO 2
  IF ~~ THEN REPLY #46089 /* ~«Остынь... Я просто хочу задать пару вопросов...»~ */ GOTO 2
  IF ~~ THEN REPLY #46090 /* ~Уйти.~ */ EXIT
END

IF ~  Global("YoBoy","AR0600",3)
~ THEN BEGIN 13 // from:
  SAY #46091 /* ~Молодой громила презрительно усмехается, когда ты подходишь к нему. «Тряси своим 'чертовым' 'костяным коробком' сколько хочешь, 'пень'. Я с тобой не буду 'трепаться'».~ */
  IF ~~ THEN REPLY #46092 /* ~«Как скажешь. Прощай».~ */ EXIT
  IF ~~ THEN REPLY #46093 /* ~Уйти.~ */ EXIT
END

IF ~  Global("YoBoy","AR0600",2)
~ THEN BEGIN 14 // from:
  SAY #61592 /* ~Молодой громила презрительно усмехается, когда ты подходишь к нему. «Снова ты?! 'Проваливай'... — внезапно он прерывается и прищурено смотрит на тебя, почесывая затылок. — Слушай... разве я не... но...»~ */
  IF ~~ THEN REPLY #61593 /* ~«Да-да, я знаю. У меня несколько вопросов...»~ */ DO ~SetGlobal("YoBoy","AR0600",1)
~ GOTO 2
  IF ~~ THEN REPLY #61594 /* ~«Да, так и есть — и сейчас ты за это поплатишься».~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #61595 /* ~Уйти.~ */ DO ~SetGlobal("YoBoy","AR0600",1)
~ EXIT
END
