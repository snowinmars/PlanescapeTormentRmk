// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSARHAVA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DSARHAVA~

IF ~  Global("Sarhava","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #32064 /* ~Сильный запах алкоголя окружает эту девушку. Несмотря на темную кожу, ты видишь, что ее лицо — прекрасное, но жестокое — покраснело. Она стройна, но мускулиста. На ней экзотичные украшения и прозрачные шелковые одежды. Многочисленные шрамы пересекаются на ее бедрах и предплечьях; они похожи на боевые ранения.~ */
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #32065 /* ~«Приветствую...»~ */ DO ~SetGlobal("Sarhava","GLOBAL",1)
~ GOTO 24
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
!NearbyDialog("DGrace")
NearbyDialog("DMorte")
~ THEN REPLY #32536 /* ~«Приветствую...»~ */ DO ~SetGlobal("Sarhava","GLOBAL",1)
~ GOTO 2
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
!NearbyDialog("DGrace")
!NearbyDialog("DMorte")
~ THEN REPLY #32537 /* ~«Приветствую...»~ */ DO ~SetGlobal("Sarhava","GLOBAL",1)
~ GOTO 1
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #32538 /* ~«Приветствую...»~ */ DO ~SetGlobal("Sarhava","GLOBAL",1)
~ GOTO 29
  IF ~  NearbyDialog("Ddakkon")
!NearbyDialog("DAnnah")
~ THEN REPLY #32539 /* ~«Приветствую...»~ */ DO ~SetGlobal("Sarhava","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #32540 /* ~Держаться от женщины подальше.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2 30.2 31.1 33.2 36.1 37.1
  SAY #32491 /* ~«Что за грязная тварь породила *тебя* на свет, братец? — она строит гримасу отвращения, затем хрипло хохочет. — И что за вонь! Ты один из мертвых ублюдков?» Ты замечаешь изогнутый кинжал на ее бедре; ее рука свободно держится за эфес.~ */
  IF ~~ THEN REPLY #32541 /* ~«*Что* ты сказала, девчонка?»~ */ GOTO 23
  IF ~~ THEN REPLY #32542 /* ~Блеф: «Адана? Это ты?»~ */ GOTO 4
  IF ~~ THEN REPLY #32543 /* ~«В чем дело?»~ */ GOTO 21
  IF ~~ THEN REPLY #32544 /* ~«Мне не до споров с тобой. Оставь меня в покое и ступай своей дорогой».~ */ GOTO 10
  IF ~~ THEN REPLY #32545 /* ~Атаковать ее.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32546 /* ~Не обращать внимания на нее и уйти.~ */ GOTO 12
END

IF ~~ THEN BEGIN 2 // from: 0.1 30.1 31.0 33.1 36.0 37.0
  SAY #32492 /* ~«Что за грязная тварь породила *тебя* на свет, братец? — она строит гримасу отвращения, затем хрипло хохочет. — И что за вонь! Ты один из мертвых ублюдков?» Ты замечаешь изогнутый кинжал на ее бедре; ее рука свободно держится за эфес.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 310
END

IF ~~ THEN BEGIN 3 // from:
  SAY #32493 /* ~«О, на *это* стоит посмотреть. Скажи-ка, 'братец', это не ты смердишь, как сточная канава Улья? Или это сточная канава смердит как *ты*?»~ */
  IF ~~ THEN REPLY #32547 /* ~«*Что* ты сказала, девчонка?»~ */ GOTO 23
  IF ~~ THEN REPLY #32548 /* ~Блеф: «Адана? Это ты?»~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_1","GLOBALLaw",-1)
~ EXTERN ~DMORTE~ 311
  IF ~~ THEN REPLY #32549 /* ~«В чем дело?»~ */ GOTO 21
  IF ~~ THEN REPLY #32550 /* ~«Мне не до споров с тобой. Оставь меня в покое и ступай своей дорогой».~ */ GOTO 10
  IF ~~ THEN REPLY #32551 /* ~Атаковать ее.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32552 /* ~Не обращать внимания на нее и уйти.~ */ GOTO 12
END

IF ~~ THEN BEGIN 4 // from: 1.1 23.0
  SAY #32494 /* ~Женщина удивленно моргает.~ */
  IF ~~ THEN REPLY #32553 /* ~«Адана? Разве ты меня не помнишь?»~ */ GOTO 5
  IF ~~ THEN REPLY #32554 /* ~«Я же сказал тебе, Адана: я никогда тебя не любил и никогда не полюблю. Каким бы ни было наслаждение, которое ты мне дала, она не стоит страданий твоей близости. А теперь оставь меня».~ */ GOTO 6
  IF ~~ THEN REPLY #32555 /* ~«О... прошу прощения. Мне показалось, что ты Адана, но ты в два раза уродливее и воняешь в два раза хуже, чем она».~ */ GOTO 6
  IF ~~ THEN REPLY #32556 /* ~«Неважно. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #32495 /* ~Она медленно обводит тебя взглядом, затем улыбается. «Кажется, твои тяжелые раны повредили тебе рассудок, братец, — девушка хохочет. — Я не твоя подруга, и никогда не стану причислять себя к таким как ты».~ */
  IF ~~ THEN REPLY #32557 /* ~«О... прошу прощения. Мне показалось, что ты Адана, но ты в два раза уродливее и воняешь в два раза хуже, чем она».~ */ GOTO 6
  IF ~~ THEN REPLY #32558 /* ~«Неважно. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 6 // from: 4.1 4.2 5.0
  SAY #32496 /* ~Некоторое время она недоуменно слушает тебя, затем с рычанием выхватывает свое оружие.~ */
  IF ~~ THEN REPLY #32559 /* ~Драться с ней.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32560 /* ~Позвать стражников.~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1 11.1 13.1 17.1 20.1 31.2 38.1 42.1
  SAY #32497 /* ~Она задыхается от потрясения. «Идиот... ты с ума сошел? Стража скорее поверит мне, чем тебе!»~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #32561 /* ~«Ты пьяна, а шрамы говорят о том, что ты не прочь подраться... наверное, у тебя и репутация соответствующая. Так что они вполне могут поверить».~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #32562 /* ~«Ты пьяна, а шрамы говорят о том, что ты не прочь подраться. Так что они вполне могут поверить».~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from:
  SAY #32498 /* ~Она злобно смотрит на тебя, скрежеща зубами. «Надейся, что в следующий раз мы больше не встретимся, *пес*!» Она отворачиваться и стремительно уходит.~ */
  IF ~~ THEN REPLY #32563 /* ~«О, надеюсь, что *да*...»~ */ DO ~EscapeArea()
SetGlobal("Sarhava","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #32564 /* ~Зевнуть ей вслед, будто от скуки.~ */ DO ~EscapeArea()
SetGlobal("Sarhava","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #32565 /* ~«Прощай».~ */ DO ~EscapeArea()
SetGlobal("Sarhava","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 7.1
  SAY #32499 /* ~Она пялится на тебя, скаля зубы. «Тогда забудем об этом и разойдемся в разные стороны».~ */
  IF ~~ THEN REPLY #32566 /* ~«Согласен, ты и так уже много моего времени потратила. Прощай».~ */ DO ~SetGlobal("Sarhava","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #32567 /* ~«Согласен. Прощай».~ */ DO ~SetGlobal("Sarhava","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.3 3.3 23.3
  SAY #32500 /* ~«О, конечно же. Но сперва, — она выдерживает паузу, ее губы сжимаются в кривой улыбке, — один вопрос: удастся ли хоть кому-то за свою жизнь стать таким же уродливым, как ты?»~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #32568 /* ~«Да... Ты тому подтверждение».~ */ GOTO 11
  IF ~~ THEN REPLY #32569 /* ~Атаковать ее.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32570 /* ~Уйти.~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.0 21.0 22.0 22.1 25.0
  SAY #32501 /* ~Секунду она изумленно пялится на тебя, после чего рычит и выхватывает кинжал...~ */
  IF ~~ THEN REPLY #32571 /* ~Драться с ней.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32572 /* ~Позвать стражников.~ */ GOTO 7
END

IF ~~ THEN BEGIN 12 // from: 1.5 3.5 4.3 5.1 10.2 21.3 22.3 23.5
  SAY #32502 /* ~«Не поворачивайся ко мне спиной, пес. Твое присутствие на этой улице глубоко меня оскорбило. Ты должен искупить свою вину, — она выставляет одну ногу вперед. — Вылижи мой сапог, избавь меня от своего присутствия — и будешь прощен».~ */
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #32573 /* ~Склониться и облизать ее сапог.~ */ GOTO 14
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #32574 /* ~Склониться и облизать ее сапог.~ */ EXTERN ~DANNAH~ 174
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #32575 /* ~Склониться и облизать ее сапог.~ */ EXTERN ~DMORTE~ 312
  IF ~~ THEN REPLY #32576 /* ~Склониться к ее сапогу, дождаться возможности застать ее врасплох.~ */ GOTO 16
  IF ~~ THEN REPLY #32577 /* ~Атаковать ее.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32578 /* ~Игнорировать ее угрозы и уйти.~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.5
  SAY #32503 /* ~Ты уже собираешься уходить, когда она рычит и выхватывает кинжал...~ */
  IF ~~ THEN REPLY #32579 /* ~Драться с ней.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32580 /* ~Позвать стражников.~ */ GOTO 7
END

IF ~~ THEN BEGIN 14 // from: 12.0 16.4
  SAY #32504 /* ~Ее пронзительный хохот, злорадный и насмешливый, эхом прокатывается по улицам. «А теперь пошел вон, трус. Осмелишься заговорить со мной еще раз — и мой клинок проткнет тебе сердце прежде, чем твои слова достигнут моих ушей».~ */
  IF ~~ THEN REPLY #32581 /* ~«Ну все, мне это надоело. Посмотрим, как ты владеешь своим маленьким ножичком, девчонка».~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32582 /* ~Уйти.~ */ DO ~SetGlobal("Sarhava","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #32505 /* ~«Свиньи! — визжит она. — Я вас обоих уничтожу!»~ */
  IF ~~ THEN DO ~Enemy()
ForceAttack(Myself,"Annah")
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.3
  SAY #32506 /* ~Когда ты склоняешься перед девушкой, она кладет руки на бедра и откидывает голову. Ее пронзительный хохот, злорадный и насмешливый, эхом прокатывается по улицам.~ */
  IF ~  CheckStatGT(Protagonist,8,DEX)
~ THEN REPLY #32583 /* ~Откусить от ее оголенной ноги кусок.~ */ DO ~Damage("Sarhava",LOWER,2)
SetGlobal("Sarhava","GLOBAL",5)
IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_2","GLOBALLaw",-1)
~ GOTO 18
  IF ~  CheckStatLT(Protagonist,9,DEX)
~ THEN REPLY #32584 /* ~Откусить от ее оголенной ноги кусок.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_2","GLOBALLaw",-1)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #32585 /* ~Схватить ее за ноги и с силой дернуть.~ */ DO ~Damage("Sarhava",LOWER,2)
~ GOTO 20
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #32586 /* ~Схватить ее за ноги и с силой дернуть.~ */ GOTO 17
  IF ~~ THEN REPLY #32587 /* ~Просто облизать ее сапог.~ */ GOTO 14
END

IF ~~ THEN BEGIN 17 // from: 16.1 16.3
  SAY #32507 /* ~Ты пытаешься схватить ее... но она ловко уклоняется от твоей хватки. «Ты заплатишь за это *жизнью*, пес!» Она начинает вынимать кинжал...~ */
  IF ~~ THEN REPLY #32588 /* ~Драться с ней.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32589 /* ~Позвать стражников.~ */ GOTO 7
END

IF ~~ THEN BEGIN 18 // from: 16.0
  SAY #32508 /* ~Ты хватаешь ее за ноги и вгрызаешься зубами в икру. Она верещит от боли, отскакивает от тебя и выхватывает свой кинжал: похоже, твой укус быстро привел ее в себя. «Великие Силы, ты что, *СПЯТИЛ*?!»~ */
  IF ~~ THEN REPLY #32590 /* ~Улыбнуться ей, слизать кровь с губ.~ */ GOTO 19
  IF ~~ THEN REPLY #32591 /* ~«Сегодня я сапог лизать не буду, девчонка. А теперь ступай, пока я не начал откусывать от тебя куски побольше».~ */ GOTO 19
  IF ~~ THEN REPLY #32592 /* ~Просто пройти мимо.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 18.1
  SAY #32509 /* ~Она заметно вздрагивает, смесь разочарования и отвращения ползет по ее лицу. «Тьфу! Глаза бы мои тебя не видели! Тварь...» Она разворачивается, чтобы уйти.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32593 /* ~Издать чавкающие звуки ей вслед.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_3","GLOBALLaw",-1)
~ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32594 /* ~Издать чавкающие звуки ей вслед.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_3","GLOBALLaw",-1)
~ EXTERN ~DMORTE~ 314
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32595 /* ~«Прощай».~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32596 /* ~«Прощай».~ */ EXTERN ~DMORTE~ 314
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32597 /* ~Дать ей спокойно уйти.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32598 /* ~Дать ей спокойно уйти.~ */ EXTERN ~DMORTE~ 314
END

IF ~~ THEN BEGIN 20 // from: 16.2
  SAY #32510 /* ~Ты хватаешь ее за лодыжки и изо всех сил тянешь на себя. На какое-то мгновение она зависает в воздухе с широко раскрытым в виде буквы «О» ртом, а затем падает на землю с болезненным *стуком*. Она тут же вскакивает на ноги, с дикими от бешенства глазами. «Я *убью* тебя!» Она выхватывает кинжал...~ */
  IF ~~ THEN REPLY #32599 /* ~Драться с ней.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32600 /* ~Позвать стражников.~ */ GOTO 7
END

IF ~~ THEN BEGIN 21 // from: 1.2 3.2 23.2
  SAY #32511 /* ~«Дела хуже *некуда*, братец, — она морщится от отвращения. — Меня буквально начинает тошнить от одного твоего вида».~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #32601 /* ~«Разве это сказала не твоя мамаша, когда родила тебя на свет?»~ */ GOTO 11
  IF ~~ THEN REPLY #32602 /* ~«Я бы на твоем месте ушел, девочка, пока ты не закончила как я».~ */ GOTO 22
  IF ~~ THEN REPLY #32603 /* ~Атаковать ее.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32604 /* ~Не обращать внимания на нее и уйти.~ */ GOTO 12
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY #32512 /* ~«О, нет-нет... Я никогда не стану такой как ты, братец. Лишь *немногие* люди на обед едят собственные фекалии».~ */
  IF ~~ THEN REPLY #32605 /* ~«Открой свой рот еще раз, девчонка, и я позабочусь о том, чтобы у тебя появился к нему аппетит».~ */ GOTO 11
  IF ~~ THEN REPLY #32606 /* ~«Если бы мне понадобились фекалии, я бы выжал твою голову, девчонка».~ */ GOTO 11
  IF ~~ THEN REPLY #32607 /* ~Атаковать ее.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32608 /* ~Не обращать внимания на нее и уйти.~ */ GOTO 12
END

IF ~~ THEN BEGIN 23 // from: 1.0 3.0
  SAY #32513 /* ~«Я думаю, братец, правильным будет вопрос 'что здесь так *воняет*'? — она нюхает воздух, затем с отвращением морщит нос. — Ой, так это же ты! Точно, ты, протухший труп!»~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32609 /* ~Блеф: «Стой... Я вспомнил тебя. Адана!»~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32610 /* ~Блеф: «Стой... Я вспомнил тебя. Адана!»~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_1","GLOBALLaw",-1)
~ EXTERN ~DMORTE~ 311
  IF ~~ THEN REPLY #32611 /* ~«В чем дело?»~ */ GOTO 21
  IF ~~ THEN REPLY #32612 /* ~«Мне не до споров с тобой. Оставь меня в покое и ступай своей дорогой».~ */ GOTO 10
  IF ~~ THEN REPLY #32613 /* ~Атаковать ее.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32614 /* ~Не обращать внимания на нее и уйти.~ */ GOTO 12
END

IF ~~ THEN BEGIN 24 // from: 0.0
  SAY #32514 /* ~«Что за грязная тварь породила *тебя* на свет, братец? — она строит гримасу отвращения, затем хрипло хохочет. — И что за вонь! Ты один из мертвых ублюдков?» Ты замечаешь изогнутый кинжал на ее бедре; ее рука свободно держится за эфес...~ */
  IF ~~ THEN EXTERN ~DGRACE~ 130
END

IF ~~ THEN BEGIN 25 // from:
  SAY #32515 /* ~Девушка на миг смущается, затем узнает Падшую Грацию. Похоже, она ошеломлена и сконфужена. «Госпожа Грация! Я вас и не заметила... стыдно признавать это, ибо ваш благородный вид очевиден даже для тупиц».~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #32615 /* ~«Очевидно, девочка, твой уровень — ниже тупицы».~ */ GOTO 11
  IF ~~ THEN REPLY #32616 /* ~Позволить Грации продолжить разговор.~ */ EXTERN ~DGRACE~ 131
END

IF ~~ THEN BEGIN 26 // from:
  SAY #32516 /* ~Она пристыжена. «Да, госпожа... Я сожалею, что подобные слова были сказаны в вашем присутствии».~ */
  IF ~~ THEN EXTERN ~DGRACE~ 132
END

IF ~~ THEN BEGIN 27 // from:
  SAY #32517 /* ~«Э... — она хмурится, затем к ней снова возвращается самообладание. — В любом случае, что заставило вас покинуть заведение, госпожа? Какие-то дела?»~ */
  IF ~~ THEN EXTERN ~DGRACE~ 133
END

IF ~~ THEN BEGIN 28 // from:
  SAY #32518 /* ~Сархава низко кланяется. «Тогда позвольте мне раскланяться в извинениях, госпожа Грация, перед вами и вашими спутниками. Мои слова были необдуманны. Выпивка заставила меня нести вздор; и я переполнена стыдом за низость, в которой я предстала в глазах своего давнего учителя». Она кланяется, разворачивается и уходит.~ */
  IF ~~ THEN REPLY #32617 /* ~Уйти.~ */ DO ~SetGlobal("Sarhava","GLOBAL",6)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 0.3
  SAY #32519 /* ~«Так-так... кто это у нас? Маленький тифлинг, королева трущоб, выползшая из Улья? — девушка надувает губы, будто разговаривая с ребенком. — Ты потерялась, крошка? О, гляньте! У нее есть хвостик! Как... мило!»~ */
  IF ~~ THEN EXTERN ~DANNAH~ 178
END

IF ~~ THEN BEGIN 30 // from:
  SAY #32520 /* ~«Ну, бесенок, не балуй». Похоже, девушку не особенно заботит то, что Анна выхватила оружие, она продолжает оскорбительно сюсюкаться: «Поосторожней там, а то еще оторву твой хвостик и скормлю его своим собакам».~ */
  IF ~  NearbyDialog("DGrace")
~ THEN EXTERN ~DGRACE~ 130
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DGrace")
~ THEN REPLY #32618 /* ~«Довольно, девчонка. Извинись перед ней, или я начну отрезать куски от *тебя*».~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("CW_Help_Annah","GLOBAL",1)
~ GOTO 2
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
~ THEN REPLY #32619 /* ~«Довольно, девчонка. Извинись перед ней, или я начну отрезать куски от *тебя*».~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("CW_Help_Annah","GLOBAL",1)
~ GOTO 1
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32620 /* ~Позволить Анне с этим разобраться.~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DANNAH~ 179
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32621 /* ~«Идем, Анна. Она того не стоит».~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DANNAH~ 179
END

IF ~~ THEN BEGIN 31 // from:
  SAY #32521 /* ~«Ты грязное отродье Нижних планов, ублюдочная мразь, которую даже танарри не станут держать своих клетках!» Она выхватывает кинжал.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32622 /* ~«Вложи в ножны клинок, девчонка, или я вложу его в твое тело».~ */ DO ~SetGlobal("CW_Help_Annah","GLOBAL",1)
~ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32623 /* ~«Вложи в ножны клинок, девчонка, или я вложу его в твое тело».~ */ DO ~SetGlobal("CW_Help_Annah","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #32624 /* ~Позвать стражников.~ */ GOTO 7
  IF ~~ THEN REPLY #32625 /* ~Пусть все идет своим чередом.~ */ DO ~Enemy()
Attack("Annah")
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 0.4
  SAY #32522 /* ~«А *это* еще что такое?! Гит? Так *далеко* от бурлящей помойной ямы Лимбо, сортира всех планов?» Она сужает глаза, ожидая ответа Даккона.~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 114
END

IF ~~ THEN BEGIN 33 // from:
  SAY #32523 /* ~Она хмурится. «Я думала, гит, твоему сброду гораздо приятнее находится дома, среди плотоядных жаб, резвящихся в супе Лимбо».~ */
  IF ~  NearbyDialog("DGrace")
~ THEN EXTERN ~DGRACE~ 130
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DGrace")
~ THEN REPLY #32626 /* ~«Возможно, *ты* почувствуешь себя дома в Морге, девчонка».~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
~ THEN REPLY #32627 /* ~«Возможно, *ты* почувствуешь себя дома в Морге, девчонка».~ */ GOTO 1
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32628 /* ~Позволить Даккону с этим разобраться.~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.3
  SAY #32524 /* ~Она ждет ответа, затем продолжает дразнить Даккона: «Почему бы тебе не вернуться в Лимбо, гит? — она задумывается на мгновение, поглаживая свой подбородок. — Или твои сородичи живут в Астральном плане? Я вас все время путаю — гитьянки, гитцераи, кто вас разберет...»~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DDAKKON~ 115
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32629 /* ~Продолжить.~ */ EXTERN ~DDAKKON~ 115
END

IF ~~ THEN BEGIN 35 // from:
  SAY #32525 /* ~Неожиданно девушка улыбается. «О! Расскажи мне шутку, гит! — она радостно хлопает в ладоши. — Озари меня знаменитым чувством юмора твоей расы, *гитьянки*!»~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 116
END

IF ~~ THEN BEGIN 36 // from:
  SAY #32526 /* ~Она презрительно ухмыляется Даккону. «А когда я наткнулась на тебя на улицах Сигила, гит, молодая Сархава глянула на грязного гита и сказала 'тут даже спорить не о чем'. Ты всего лишь безбожный пес *гитьянки*, который порочно поклоняется ублюдкам своей расы и спит с лягушками, — она сжимает рукоять кинжала. — Доставай свой хрупкий кусок металла, грязный гит».~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32630 /* ~«Этого более чем достаточно, девчонка. Замолчи».~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32631 /* ~«Этого более чем достаточно, девчонка. Замолчи».~ */ GOTO 1
  IF ~~ THEN REPLY #32632 /* ~Атаковать ее самому.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32633 /* ~«Атакуй ее, Даккон».~ */ DO ~Enemy()
ForceAttack(Myself,"Dakkon")
ForceAttack("Dakkon",Myself)
~ EXIT
  IF ~~ THEN REPLY #32634 /* ~Ждать реакции Даккона.~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.4
  SAY #32527 /* ~Она ждет, но Даккон остается безмолвен. «Надеюсь, мозгососы все еще держат вас в рабстве, гит, так что мультивселенная может не бояться того, что ваша раса размножится».~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32635 /* ~«Этого более чем достаточно, девчонка. Замолчи».~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32636 /* ~«Этого более чем достаточно, девчонка. Замолчи».~ */ GOTO 1
  IF ~~ THEN REPLY #32637 /* ~Атаковать ее самому.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32638 /* ~«Атакуй ее, Даккон».~ */ DO ~Enemy()
ForceAttack(Myself,"Dakkon")
ForceAttack("Dakkon",Myself)
~ EXIT
  IF ~~ THEN REPLY #32639 /* ~Ждать реакции Даккона.~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.4
  SAY #32528 /* ~Даккон стоит безмолвно словно камень. Девушка рычит, готовая наброситься на него. «Тогда катись в Баатор, трус!»~ */
  IF ~~ THEN REPLY #32640 /* ~Помочь Даккону сражаться с ней.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32641 /* ~Позвать стражников.~ */ GOTO 7
  IF ~~ THEN REPLY #32642 /* ~Пусть все идет своим чередом.~ */ DO ~Enemy()
ForceAttack(Myself,"Dakkon")
ForceAttack("Dakkon",Myself)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from:
  SAY #32529 /* ~Застигнутая врасплох, девушка не отвечает.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 317
END

IF ~~ THEN BEGIN 40 // from:
  SAY #32530 /* ~«Что... да как ты...»~ */
  IF ~~ THEN EXTERN ~DMORTE~ 318
END

IF ~~ THEN BEGIN 41 // from:
  SAY #32531 /* ~«Я... я...»~ */
  IF ~~ THEN EXTERN ~DMORTE~ 319
END

IF ~~ THEN BEGIN 42 // from:
  SAY #32532 /* ~Девушка выхватывает клинок и, рыча как разъяренный зверь, кидается на Морта.~ */
  IF ~~ THEN REPLY #32643 /* ~Помочь Морту драться с ней.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32644 /* ~Позвать стражников.~ */ GOTO 7
  IF ~~ THEN REPLY #32645 /* ~Пусть все идет своим чередом.~ */ DO ~Enemy()
Attack("Morte")
~ EXIT
END

IF ~  Global("Sarhava","GLOBAL",2)
~ THEN BEGIN 43 // from:
  SAY #32533 /* ~Девушка отказывается с тобой говорить.~ */
  IF ~~ THEN REPLY #32646 /* ~Уйти.~ */ EXIT
END

IF ~  Global("Sarhava","GLOBAL",4)
~ THEN BEGIN 44 // from:
  SAY #32534 /* ~Девушка жестоко скалится и выставляет вперед ступню своей ноги. «Снова пришел лизнуть мой сапог, пес? Так вот, не выйдет! Разве я тебе не приказала со мной не говорить? Пошел вон, пока я не обнажила сталь».~ */
  IF ~~ THEN REPLY #32647 /* ~«Ты мне надоела, девчонка... доставай клинок».~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32648 /* ~Остаться и драться с ней.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32649 /* ~Уйти.~ */ EXIT
END

IF ~  Global("Sarhava","GLOBAL",6)
~ THEN BEGIN 45 // from:
  SAY #32535 /* ~Сархава приветствует тебя кивком, но не говорит с тобой.~ */
  IF ~~ THEN REPLY #32650 /* ~Уйти.~ */ EXIT
END
