// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHIVEF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHIVEF~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #7 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,1)
~ THEN BEGIN 0 // from:
  SAY #33304 /* ~Глаза женщины наполняются страхом при твоем приближении. «Уйди от меня! Прочь! Оставь меня в покое, или я закричу! Клянусь!»~ */
  IF ~~ THEN REPLY #33305 /* ~Позволить ей уйти.~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,2)
~ THEN BEGIN 1 // from:
  SAY #33306 /* ~При твоем приближении женщина начинает озираться по сторонам, пытаясь выявить кого-нибудь крадущегося. «Я... я ничего не знаю, рубака, пожалуйста, оставь меня в покое!»~ */
  IF ~~ THEN REPLY #33307 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,3)
~ THEN BEGIN 2 // from:
  SAY #33308 /* ~«Иди-ка ты донимать кого-нибудь еще, неудачник! У меня нет времени для таких как ты...»~ */
  IF ~~ THEN REPLY #33309 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,4)
~ THEN BEGIN 3 // from:
  SAY #33310 /* ~Женщина от страха не может вымолвить ни слова.~ */
  IF ~~ THEN REPLY #33311 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #11 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,5)
~ THEN BEGIN 4 // from:
  SAY #33312 /* ~Осознав, что ты направляешься к ней, женщина бледнеет и начинает искать свой кинжал. «Не хочу иметь с тобой ничего общего! Уходи!»~ */
  IF ~~ THEN REPLY #33313 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #12 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 5 // from:
  SAY #33314 /* ~«Ты — тот пень, который ищет Фарода! Еще не нашел его? Если нет, то можешь попробовать поискать к северу отсюда на площади Старьевщиков».~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33315 /* ~«Значит, туда и направлюсь. Прощай».~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33448 /* ~«Я его уже нашел, но все равно спасибо. Прощай».~ */ EXIT
END

IF WEIGHT #13 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 6 // from:
  SAY #33316 /* ~«Если ты окажешься в Баре собирателей пыли, пень, не удивляйся, если они примут тебя за своего!» Женщина хмыкает и начинает хихикать.~ */
  IF ~~ THEN REPLY #33317 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #14 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 7 // from:
  SAY #33318 /* ~Женщина смакует нечто, напоминающее крысу на палочке. Заметив, что ты наблюдаешь за ней, она подозрительно сужает глаза. «Если тебе они нравятся, поговори с Креденом, и хватит на меня пялится! Он стоит у Офиса по контролю паразитов и эпидемий».~ */
  IF ~~ THEN REPLY #33319 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #15 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 8 // from:
  SAY #33320 /* ~«Если ты встретишь кучку бегающих и воющих сумасшедших, держись от них подальше! Эти Голодные Псы меня так пугают...»~ */
  IF ~~ THEN REPLY #33321 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #16 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,1)
~ THEN BEGIN 9 // from:
  SAY #33322 /* ~«Я ничем не могу помочь тебе... так что оставь меня в покое».~ */
  IF ~~ THEN REPLY #33323 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #17 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,2)
~ THEN BEGIN 10 // from:
  SAY #33324 /* ~Женщина поднимает брови при твоем приближении. «Я занимаюсь своими делами, пень... и тебе следует заниматься тем же — держись подальше от проблем, ладно? Пока-пока».~ */
  IF ~~ THEN REPLY #33325 /* ~«Прощай».~ */ EXIT
END

IF WEIGHT #18 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,3)
~ THEN BEGIN 11 // from:
  SAY #33326 /* ~При твоем приближении женщина начинает хмуриться. «У меня нет времени болтать с какими-то проходимцами, пень. И тем более это не самое безопасное занятие в Улье. Гуляй себе мимо».~ */
  IF ~~ THEN REPLY #33327 /* ~«В таком случае, прощай».~ */ EXIT
END

IF WEIGHT #19 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,4)
~ THEN BEGIN 12 // from:
  SAY #33328 /* ~Женщина жалобно вздыхает. «Нет ничего хуже жизни в Улье. Тебя могут прописать в книгу мертвых только за то, что ты глянула в сторону какого-нибудь пня».~ */
  IF ~~ THEN REPLY #33329 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #20 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0100")
~ THEN BEGIN 13 // from:
  SAY #33330 /* ~«Похоже, тебе не помешает немного отдохнуть в Ночлежке, рубака. Если интересно, она посреди этой части Улья».~ */
  IF ~~ THEN REPLY #33331 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #21 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0200")
~ THEN BEGIN 14 // from:
  SAY #33332 /* ~«Если ты окажешься в Баре собирателей пыли, пень, не удивляйся, если они примут тебя за своего!» Женщина хмыкает и начинает хихикать.~ */
  IF ~~ THEN REPLY #33333 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #22 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0300")
~ THEN BEGIN 15 // from:
  SAY #33334 /* ~Женщина смакует нечто, напоминающее крысу на палочке. Заметив, что ты наблюдаешь за ней, она подозрительно сужает глаза. «Если тебе они нравятся, поговори с Креденом, и хватит на меня пялится! Он стоит у Офиса по контролю паразитов и эпидемий».~ */
  IF ~~ THEN REPLY #33335 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #23 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0400")
~ THEN BEGIN 16 // from:
  SAY #33336 /* ~«Если ты встретишь кучку бегающих и воющих сумасшедших, держись от них подальше! Эти Голодные Псы меня так пугают...»~ */
  IF ~~ THEN REPLY #33337 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #24 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 17 // from:
  SAY #33338 /* ~«Ты — тот пень, который ищет Фарода! Еще не нашел его? Если нет, то можешь попробовать поискать к северу отсюда на площади Старьевщиков».~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33339 /* ~«Значит, туда и направлюсь. Прощай».~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33340 /* ~«Я его уже нашел, но все равно спасибо. Прощай».~ */ EXIT
END

IF WEIGHT #25 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 18 // from:
  SAY #33344 /* ~«Если не хочешь нарваться на неприятности, держись подальше от выжженной улицы, что к северо-западу отсюда».~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33345 /* ~«Да, я уже был там. Прощай».~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33346 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #26 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 19 // from:
  SAY #33347 /* ~«Где-то поблизости бродит бедняга по имени Вонючка... если увидишь его рядом, и в кармане водится пара-тройка монет, то он сочинит тебе отличный рассказ».~ */
  IF ~  Global("Reekwind","GLOBAL",0)
~ THEN REPLY #33348 /* ~«Наверное, мне стоит поискать его. Прощай».~ */ EXIT
  IF ~  GlobalGT("Reekwind","GLOBAL",0)
~ THEN REPLY #33349 /* ~«Да, я уже виделся с ним. Прощай».~ */ EXIT
END

IF WEIGHT #27 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 20 // from:
  SAY #33351 /* ~«Ты уже был в «Тлеющем Трупе»? Неплохая таверна, только горящий человек немного меня нервирует».~ */
  IF ~  GlobalGT("Ignus","GLOBAL",0)
~ THEN REPLY #33352 /* ~«Его здесь больше нет. Прощай».~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",1)
~ THEN REPLY #33449 /* ~«Ага, только я уже был там. Прощай».~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",0)
~ THEN REPLY #33350 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #28 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,1)
~ THEN BEGIN 21 // from:
  SAY #33353 /* ~«Привет, знаток, — женщина дарит тебе робкую улыбку. — Слушай... Я тут хотела немного выпить, развеяться... как насчет присоединиться?»~ */
  IF ~~ THEN REPLY #33354 /* ~«Может, в другой раз... сейчас я очень занят. Прости».~ */ EXIT
  IF ~~ THEN REPLY #33472 /* ~«Нет. Прощай».~ */ EXIT
END

IF WEIGHT #29 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,2)
~ THEN BEGIN 22 // from:
  SAY #33355 /* ~«Я не могу представить, что буду растить здесь ребенка. Быть может, когда-нибудь моя семья сможет покинуть это ужасное место».~ */
  IF ~~ THEN REPLY #33356 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #30 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,3)
~ THEN BEGIN 23 // from:
  SAY #33357 /* ~Женщина улыбается тебе. «Нет, я не могу помочь тебе... если бы могла, то обязательно помогла бы».~ */
  IF ~~ THEN REPLY #33358 /* ~«Все равно спасибо. Прощай».~ */ EXIT
END

IF WEIGHT #31 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0100")
~ THEN BEGIN 24 // from:
  SAY #33359 /* ~«Похоже, тебе не помешает немного отдохнуть в Ночлежке, рубака. Если интересно, она посреди этой части Улья».~ */
  IF ~~ THEN REPLY #33360 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #32 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0100")
~ THEN BEGIN 25 // from:
  SAY #33362 /* ~«Ты — тот пень, который ищет Фарода! Еще не нашел его? Если нет, то можешь попробовать поискать к северу отсюда на площади Старьевщиков».~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33363 /* ~«Значит, туда и направлюсь. Прощай».~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33364 /* ~«Я его уже нашел, но все равно спасибо. Прощай».~ */ EXIT
END

IF WEIGHT #33 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0100")
~ THEN BEGIN 26 // from:
  SAY #33365 /* ~«Я вчера видела человека по имени Порфирон, всего в татуировках. Он сказал, что он какой-то там монах, воитель... только не хочет драться».~ */
  IF ~  Global("Porphiron ","GLOBAL",0)
~ THEN REPLY #33366 /* ~«Возможно, я поищу его. Прощай».~ */ EXIT
  IF ~  GlobalGT("Porphiron ","GLOBAL",0)
~ THEN REPLY #33361 /* ~«Да, я уже виделся с ним. Прощай».~ */ EXIT
END

IF WEIGHT #34 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0200")
~ THEN BEGIN 27 // from:
  SAY #33367 /* ~«Если ты ищешь дорогу куда-нибудь, рубака, найди указатель у Бара собирателей пыли».~ */
  IF ~~ THEN REPLY #33368 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #35 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0200")
~ THEN BEGIN 28 // from:
  SAY #33370 /* ~«Если не хочешь нарваться на неприятности, держись подальше от выжженной улицы, что к северо-западу отсюда».~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33371 /* ~«Да, я уже был там. Прощай».~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33372 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #36 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0200")
~ THEN BEGIN 29 // from:
  SAY #33373 /* ~«Много народу ходит поминать своих усопших в Мемориал тленных... там есть тленный, который может вписать в Мемориал любое имя для тебя, или сказать, умер ли тот, кого ты ищешь».~ */
  IF ~  Global("Death_of_Names","GLOBAL",1)
~ THEN REPLY #33374 /* ~«Да, его зовут «Смерть-Имен». Прощай».~ */ EXIT
  IF ~  Global("Death_of_Names","GLOBAL",0)
~ THEN REPLY #33369 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #37 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,7)
CreatureInArea("AR0200")
~ THEN BEGIN 30 // from:
  SAY #33375 /* ~«Тленные сторонятся ото всех таверн в Улье... кроме Собирателей Пыли. Там вообще трудно кого-нибудь встретить, *кроме* мертвяков».~ */
  IF ~~ THEN REPLY #33376 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #38 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0300")
~ THEN BEGIN 31 // from:
  SAY #33377 /* ~Женщина смакует нечто, напоминающее крысу на палочке. Заметив, что ты наблюдаешь за ней, она подозрительно сужает глаза. «Если тебе они нравятся, поговори с Креденом, и хватит на меня пялится! Он стоит у Офиса по контролю паразитов и эпидемий».~ */
  IF ~~ THEN REPLY #33378 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #39 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0300")
~ THEN BEGIN 32 // from:
  SAY #33380 /* ~«Где-то поблизости бродит бедняга по имени Вонючка... если увидишь его рядом, и в кармане водится пара-тройка монет, то он сочинит тебе отличный рассказ».~ */
  IF ~  Global("Reekwind","GLOBAL",0)
~ THEN REPLY #33381 /* ~«Наверное, мне стоит поискать его. Прощай».~ */ EXIT
  IF ~  GlobalGT("Reekwind","GLOBAL",0)
~ THEN REPLY #33379 /* ~«Да, я уже виделся с ним. Прощай».~ */ EXIT
END

IF WEIGHT #40 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0300")
~ THEN BEGIN 33 // from:
  SAY #33382 /* ~«Как давно ты бывал на рынке, рубака? Здесь есть все, что нужно телу».~ */
  IF ~~ THEN REPLY #33383 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #41 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,7)
CreatureInArea("AR0300")
~ THEN BEGIN 34 // from:
  SAY #33384 /* ~«Надеюсь, Профира ошибается... Ты не слышал ее предсказаний? Обычна она выкрикивает их на Рынке...»~ */
  IF ~~ THEN REPLY #33386 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #42 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,8)
CreatureInArea("AR0300")
~ THEN BEGIN 35 // from:
  SAY #33387 /* ~«Если не хочешь нарваться на неприятности, держись подальше от выжженной улицы, что к северо-востоку отсюда».~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33388 /* ~«Да, я уже был там. Прощай».~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33385 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #43 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0400")
~ THEN BEGIN 36 // from:
  SAY #33389 /* ~«Если ты встретишь кучку бегающих и воющих сумасшедших, держись от них подальше! Эти Голодные Псы меня так пугают...»~ */
  IF ~~ THEN REPLY #33392 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #44 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0400")
~ THEN BEGIN 37 // from:
  SAY #33393 /* ~«Ты уже был в «Тлеющем Трупе»? Неплохая таверна, только горящий человек немного меня нервирует».~ */
  IF ~  GlobalGT("Ignus","GLOBAL",0)
~ THEN REPLY #33394 /* ~«Его здесь больше нет. Прощай».~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",1)
~ THEN REPLY #33390 /* ~«Ага, только я уже был там. Прощай».~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",0)
~ THEN REPLY #33391 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #45 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0400")
~ THEN BEGIN 38 // from:
  SAY #33395 /* ~«Недавно я видела мужчину, которого зовут Скорбящий-по-деревьям... кажется, он двинулся насчет поиска людей, которые будут заботиться о здешних деревьях. Уж лучше бы он больше времени уделял помощи здешним людям».~ */
  IF ~~ THEN REPLY #33396 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #46 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 39 // from:
  SAY #33397 /* ~«Единственное, чем я могу тебе помочь, так это предупредить о здешних ворах, рубака... Я слышала, в этой части Улья много карманников».~ */
  IF ~~ THEN REPLY #33398 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF WEIGHT #47 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 40 // from:
  SAY #33401 /* ~«Недавно я видела несчастную чокнутую крошку, которая все носилась вокруг и что-то кричала. Удивительно, что эта полоумная еще не сдохла от голода и не кокнула себя».~ */
  IF ~  GlobalGT("Ingress","GLOBAL",5)
~ THEN REPLY #33402 /* ~«Да... Скорее всего, она уже дома или на полпути к нему. Прощай».~ */ EXIT
  IF ~  GlobalGT("Ingress","GLOBAL",0)
~ THEN REPLY #33399 /* ~«Я встречался с ней. Ее зовут Ингресс. Прощай».~ */ EXIT
  IF ~  Global("Ingress","GLOBAL",0)
~ THEN REPLY #33400 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #48 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 41 // from:
  SAY #33403 /* ~«Держись подальше от Гаохи на Рынке. Мой муж вечно просаживает кучу звенелок, когда делает ставки у этого трижды проклятого гита!»~ */
  IF ~~ THEN REPLY #33404 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #49 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 42 // from:
  SAY #33407 /* ~«Ух ты, какие татуировки! Прямо как те, которые делают в здешнем салоне в Улье. Ты знаешь, им заправляет дабус!»~ */
  IF ~  GlobalGT("Fell","GLOBAL",0)
~ THEN REPLY #33408 /* ~«Да, я знаю. Его зовут Фелл».~ */ EXIT
  IF ~  Global("AR0404_Visited","GLOBAL",1)
~ THEN REPLY #33409 /* ~«Да, я знаю это место».~ */ EXIT
  IF ~  Global("AR0404_Visited","GLOBAL",0)
~ THEN REPLY #33405 /* ~«Нет, я никогда не был там»~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
RandomNum(20,1)
Global("Hive_OT_D","GLOBAL",0)
~ THEN BEGIN 43 // from:
  SAY #33410 /* ~«Ослепи меня, Леди! Я уже видела тебя, рубака, но не думала, что увижу тебя еще раз! Сигил гораздо меньше, чем я думала».~ */
  IF ~~ THEN REPLY #33411 /* ~«Ты знаешь меня?»~ */ DO ~SetGlobal("Hive_OT_D","GLOBAL",1)
~ GOTO 44
  IF ~~ THEN REPLY #33406 /* ~«Возможно и так. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #33413 /* ~Она нервно улыбается. «Знаю ли я тебя? Неа, но, как я уже сказала, я видела тебя. Это было в прошлом году... поздно ночью, в самый антипик... я искала свою сестру, когда появился ты, бешеный и весь в мыле. Ты споткнулся и уронил вот это, прямо мне под ноги, и потом убежал. Я хранила это на счастье, думала, что сама судьба положила это к моим ногам, — она вынимает внушительных размеров кинжал. — Вот... раз я снова встретилась с тобой, возьми его назад, рубака. Прощай».~ */
  IF ~~ THEN REPLY #33414 /* ~«Спасибо... Прощай».~ */ DO ~GiveItemCreate("GSDagger",Protagonist,1,0,0)
~ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
RandomNum(20,2)
Global("Hive_OT_E","GLOBAL",0)
~ THEN BEGIN 45 // from:
  SAY #33415 /* ~Похоже, женщина сразу тебя узнала. В ужасе она делает шаг назад. «После всего этого времени... ты, *ублюдок*! Чтоб тебя забрала вся нечисть Баатора! Однажды ты пожалеешь о том, что ты сделал с Аэрин... *клянусь* всеми силами!» Она разворачивается и убегает.~ */
  IF ~~ THEN REPLY #33416 /* ~«Постой...»~ */ DO ~SetGlobal("Hive_OT_E","GLOBAL",1)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #33417 /* ~Позволить ей уйти.~ */ DO ~SetGlobal("Hive_OT_E","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
RandomNum(20,3)
Global("Hive_OT_F","GLOBAL",0)
~ THEN BEGIN 46 // from:
  SAY #33420 /* ~«Ну вот, мой черный день настал. Ты оказался рядом. Я уж начала думать, что ты никогда не подойдешь, знаток». Она начинает рыться в своей поясной сумке.~ */
  IF ~~ THEN REPLY #33421 /* ~«Постой... Наверное, ты ошиблась...»~ */ DO ~SetGlobal("Hive_OT_F","GLOBAL",1)
~ GOTO 49
  IF ~~ THEN REPLY #33412 /* ~Терпеливо ждать.~ */ DO ~SetGlobal("Hive_OT_F","GLOBAL",1)
GiveItemCreate("SilRing",Protagonist,1,0,0)
~ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.1
  SAY #33424 /* ~«Теперь он труп, куда уж мертвее — как ты и сказал... и он мне таким нравится. Держи свои кровавые деньги, рубака... вот кольцо, которое я обещала. Удачи».~ */
  IF ~~ THEN REPLY #33425 /* ~«Погоди секунду... У меня есть несколько вопросов...» ~ */ GOTO 48
  IF ~~ THEN REPLY #33418 /* ~Позволить ей уйти.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #33426 /* ~«Нет, рубака... то были славные времена, но теперь нам лучше не светиться. У него были друзья, и, скорее всего, они догадываются, что произошло на самом деле. Мы не должны больше встречаться».~ */
  IF ~~ THEN REPLY #33427 /* ~«Но...»~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #33479 /* ~«В таком случае, прощай».~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 46.0
  SAY #33431 /* ~Она странно смотрит на тебя, косится на татуировки на твоем предплечье, затем пожимает плечами. «А они тебе очень идут, рубака. Удачи...»~ */
  IF ~~ THEN REPLY #33432 /* ~Позволить ей уйти.~ */ DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
RandomNum(4,1)
~ THEN BEGIN 50 // from:
  SAY #33434 /* ~Этой женщине больше нечего тебе рассказать.~ */
  IF ~~ THEN REPLY #33428 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #1 ~  NumTimesTalkedToGT(0)
RandomNum(4,2)
~ THEN BEGIN 51 // from:
  SAY #33436 /* ~Эта женщина не сообщит тебе больше ничего важного.~ */
  IF ~~ THEN REPLY #33451 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #2 ~  NumTimesTalkedToGT(0)
RandomNum(4,3)
~ THEN BEGIN 52 // from:
  SAY #33469 /* ~Эта женщина не сообщит тебе больше ничего интересного.~ */
  IF ~~ THEN REPLY #33471 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #3 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 53 // from:
  SAY #33470 /* ~Этой женщине больше нечего тебе сказать.~ */
  IF ~~ THEN REPLY #33480 /* ~Уйти.~ */ EXIT
END
