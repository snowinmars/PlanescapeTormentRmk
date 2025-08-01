// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLENNY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DLENNY~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 33 38 40 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36484 /* ~Ты видишь юношу с диковатой внешностью в дешевой одежде. Его глаза мечутся, изучая окрестности. Он замечает твое приближение и начинает осторожно тебя рассматривать.~ */
  IF ~~ THEN REPLY #36525 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #36526 /* ~Не обращать на него внимания.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36485 /* ~Он осматривает тебя сверху донизу, затем оглядывается по сторонам. Взглянув на тебя снова, он зловеще усмехается. «Тебе лучше иметь хорошую причину беспокоить Ленни, пень».~ */
  IF ~~ THEN REPLY #36527 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #36528 /* ~«Неважно, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 32.0
  SAY #36486 /* ~Он смеется над тобой. «Я тебе не осведомитель. Если у тебя есть вопросы, найди себе одного из них, — его улыбка становится шире. — Лучше бы тебе отвалить, пока я не пустил тебе кровь».~ */
  IF ~~ THEN REPLY #36529 /* ~«Мне всего лишь нужно задать тебе пару вопросов...»~ */ GOTO 3
  IF ~  Global("Know_Lenny","GLOBAL",1)
~ THEN REPLY #36530 /* ~«Что, если я скажу, что меня послал Байрон Пикит?»~ */ GOTO 4
  IF ~~ THEN REPLY #36531 /* ~«Неважно, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36487 /* ~Он перестает улыбаться и мрачно смотрит на тебя. «Нет, я не отвечаю на вопросы, пень. Я же сказал тебе найти себе осведомителя, так что проваливай». Он пристально смотрит на тебя.~ */
  IF ~~ THEN REPLY #36532 /* ~«Отлично, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #36488 /* ~Он перестает улыбаться и некоторое время тебя осматривает. Его взгляд задерживается на твоих шрамах, и он слегка сглатывает. Через миг его лицо мрачнеет, и он начинает нервничать. «Пикит... послал тебя? Зачем?»~ */
  IF ~~ THEN REPLY #36533 /* ~«Он сказал, что ты можешь ответить мне на несколько вопросов...»~ */ GOTO 5
  IF ~~ THEN REPLY #36534 /* ~«Забудь, это не имеет значения. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.2 7.1 8.0 28.2 29.1 30.1 31.0
  SAY #36489 /* ~Он хмурится. «Какие вопросы?..» Ты замечаешь, как он напрягается.~ */
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #36535 /* ~«У меня украли череп, и я хочу вернуть его. Ты не знаешь, кто бы мог это сделать?»~ */ JOURNAL #66540 /* ~Вор Ленни говорит, что некто Лотар, вероятно, замешан в похищении Морта. Нужно нанести визит этому Лотару.~ */ GOTO 6
  IF ~  Global("Stolen_Papers","GLOBAL",1)
~ THEN REPLY #36536 /* ~«Я хочу спросить тебя насчет бумаг, которые ты украл у Трист».~ */ GOTO 9
  IF ~  
!Class(Protagonist,THIEF)
~ THEN REPLY #36537 /* ~«Я заинтересован в изучении воровского искусства. Ты можешь меня обучить?»~ */ GOTO 27
  IF ~~ THEN REPLY #36538 /* ~«Что ты можешь рассказать об этом районе?»~ */ GOTO 28
  IF ~~ THEN REPLY #36539 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #36490 /* ~Он колеблется, затем немного расслабляется. У тебя создается впечатление, что он ожидал от тебя другого вопроса. Он улыбается тебе. «Значит, череп стащили? Ну, это не я — должно быть, это работа парней Лотара».~ */
  IF ~  !Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #36540 /* ~«Кто такой Лотар?»~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #36541 /* ~«Я слышал о Лотаре, мне лишь нужно найти его».~ */ GOTO 8
  IF ~~ THEN REPLY #36542 /* ~«У меня есть другие вопросы...»~ */ GOTO 5
  IF ~~ THEN REPLY #36543 /* ~«Спасибо, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #36491 /* ~Он зловеще усмехается. «Повелитель Костей — так его зовут, им он и является. Он главный верховный жрец какой-то влиятельной силы, не знаю какой, — он смеется. — Он обосновался в месте под названием Кости Ночи».~ */
  IF ~~ THEN REPLY #36544 /* ~«Где это место?»~ */ JOURNAL #66541 /* ~Ленни говорит, что Лотара можно найти в руинах дома к югу от осадной башни. Пойду, спрошу его насчет похищения Морта.~ */ GOTO 8
  IF ~~ THEN REPLY #36545 /* ~«Понятно. У меня еще вопросы...»~ */ GOTO 5
  IF ~~ THEN REPLY #36546 /* ~«Спасибо, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.0
  SAY #36492 /* ~Он хмурится. «Даже не знаю, хочу ли я быть на месте того, кто ответит на этот вопрос... — он некоторое время пристально смотрит на тебя, потом пожимает плечами. — Разрушенный дом к югу от осадной башни, не пропустишь». Он еще раз зловеще усмехается.~ */
  IF ~~ THEN REPLY #36547 /* ~«У меня еще немного вопросов...»~ */ GOTO 5
  IF ~~ THEN REPLY #36548 /* ~«Ладно, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY #36493 /* ~Он тяжело сглатывает и пялится на тебя. Ты замечаешь, что он весь напрягся, и уже готов ринуться. Он с невозмутимым видом кладет руку на пояс, но ты видишь, что он натянут как струна. «Не знаю, о чем ты, пень. Лучше тебе уйти».~ */
  IF ~~ THEN REPLY #36549 /* ~Зловеще усмехнуться: «Ты знаешь, о чем я, Ленни. Байрон заставил тебя украсть у Трист кое-какие бумаги. Я пришел забрать их».~ */ GOTO 10
  IF ~~ THEN REPLY #36550 /* ~Правда: «Отдай мне бумаги, которые ты украл у Трист, иначе я тебя убью».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Lenny_1","GLOBALGood",-1)
~ GOTO 10
  IF ~~ THEN REPLY #36551 /* ~Блеф: «Отдай мне бумаги, которые ты украл у Трист, иначе я тебя убью».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lenny_1","GLOBALLaw",-1)
~ GOTO 10
  IF ~~ THEN REPLY #36552 /* ~«С меня хватит. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1 9.2
  SAY #36494 /* ~Он тяжело сглатывает, уголок его глаза начинает подергиваться. Он глядит на шрамы, которыми покрыто твое тело, затем пытается встретиться с тобой взглядом... но не может. «Забрать их... Я... я уничтожил их после того, как стащил, как и велел мне Байрон». Наконец ваши взгляды встречаются.~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
!Global("Lenny_Gave_Exp","GLOBAL",1)
~ THEN REPLY #36553 /* ~«Правда? Тогда почему ты так нервничаешь, Ленни? Дай, угадаю: Байрон думает, что ты уничтожил бумаги, но, наверно, ты этого не сделал. Наверно, ты их припрятал. Небольшая подборка для шантажа?»~ */ DO ~AddexperienceParty(1000)
SetGlobal("Lenny_Gave_Exp","GLOBAL",1)
~ GOTO 11
  IF ~  CheckStatLT(Protagonist,12,INT)
!Global("Lenny_Gave_Exp","GLOBAL",1)
~ THEN REPLY #36554 /* ~«Тогда почему ты так нервничаешь, Ленни? Думаю, что ты лжешь».~ */ DO ~AddexperienceParty(1000)
SetGlobal("Lenny_Gave_Exp","GLOBAL",1)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,11,INT)
Global("Lenny_Gave_Exp","GLOBAL",1)
~ THEN REPLY #67296 /* ~«Правда? Тогда почему ты так нервничаешь, Ленни? Дай, угадаю: Байрон думает, что ты уничтожил бумаги, но, наверно, ты этого не сделал. Наверно, ты их припрятал. Небольшая подборка для шантажа?»~ */ GOTO 11
  IF ~  CheckStatLT(Protagonist,12,INT)
Global("Lenny_Gave_Exp","GLOBAL",1)
~ THEN REPLY #67297 /* ~«Тогда почему ты так нервничаешь, Ленни? Думаю, что ты лжешь».~ */ GOTO 11
  IF ~~ THEN REPLY #67298 /* ~«Мне пора идти, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1 10.2 10.3
  SAY #36495 /* ~Он еще секунду смотрит на тебя, потом резко разворачивается, чтобы убежать.~ */
  IF ~  CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #36556 /* ~Схватить его, пока он не убежал.~ */ GOTO 12
  IF ~  CheckStatLT(Protagonist,12,DEX)
~ THEN REPLY #36557 /* ~Схватить его, пока он не убежал.~ */ GOTO 13
  IF ~~ THEN REPLY #36558 /* ~Пусть уходит.~ */ DO ~RunAwayFromEx(Protagonist,TEN_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #36496 /* ~Как только он бросается бежать, ты делаешь прыжок и хватаешь его за руку. Он недолго сопротивляется, но не может с тобой справиться. Наконец он перестает сопротивляться твоей хватке. «Ладно, не уничтожал я их! Я отдам их тебе, только отпусти». Ты ослабляешь хватку.~ */
  IF ~~ THEN REPLY #36559 /* ~«Отдай их, Ленни».~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #36560 /* ~«Зачем ты оставил их, Ленни? Надо полагать, для шантажа».~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #36561 /* ~«Значит, ты их сохранил. Зачем?»~ */ GOTO 20
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #36497 /* ~Как только он бросается убегать, ты делаешь прыжок, чтобы схватить его. Он ловко отскакивает и начинает тебя оббегать. Видя, что твоя цель вот-вот убежит, ты делаешь еще один, еще более отчаянный выпад. Тебе не удается схватить его, однако ты сбиваешь его с ног тяжелым ударом. Благодаря приложенным усилиям ты не дал ему сбежать. «Ладно, не уничтожал я их! Я отдам их тебе, только отпусти».~ */
  IF ~~ THEN REPLY #36562 /* ~«Отдай их, Ленни».~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #36563 /* ~«Зачем ты оставил их, Ленни? Надо полагать, для шантажа».~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #36564 /* ~«Значит, ты их сохранил. Зачем?»~ */ GOTO 20
END

IF ~~ THEN BEGIN 14 // from: 12.0 13.0
  SAY #36498 /* ~Он вздыхает. «Я... у меня их нет с собой, — ты бросаешь на него мрачный взгляд и видишь страх на его лице. — Клянусь! У меня их нет! Я оставил их на складе!» Он продолжает глядеть на тебя, тяжело дыша.~ */
  IF ~~ THEN REPLY #36565 /* ~«Тогда пошли за ними».~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #36499 /* ~Он печально качает головой. «Мы не можем: они на складе и в текущий момент недоступны. Ходят слухи, что у них сейчас что-то типа смены руководства... но я не знаю, правда ли это. В любом случае, я не могу достать бумаги». Он робко смотрит на тебя.~ */
  IF ~  Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36566 /* ~«Я разобрался с этим небольшим дельцем — мы можем забирать бумаги».~ */ GOTO 16
  IF ~  !Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36567 /* ~«Я разберусь с этим и сам заберу бумаги».~ */ GOTO 16
  IF ~~ THEN REPLY #36568 /* ~«С меня хватит. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 15.1 21.1
  SAY #36500 /* ~Он пожимает плечами. «Отлично. Полагаю, эта змея Пикит снова окажется в выигрыше...» Он вызывающе смотрит на тебя.~ */
  IF ~~ THEN REPLY #36569 /* ~«Просто пошли за бумагами, Ленни».~ */ GOTO 17
  IF ~~ THEN REPLY #36570 /* ~«Вообще-то, это Трист здесь в выигрыше, Ленни».~ */ GOTO 26
END

IF ~~ THEN BEGIN 17 // from: 16.0 26.0
  SAY #36501 /* ~«Иди на склад и скажи служащему *я здесь за ссудой*, и он отдаст тебе бумаги. Бывай, пень». Внезапно он кидается и убегает.~ */
  IF ~~ THEN REPLY #36571 /* ~Уйти.~ */ DO ~AddexperienceParty(2000)
SetGlobal("Stolen_Papers","GLOBAL",3)
RunAwayFromEx(Protagonist,TEN_AI_SECONDS,FALSE)
~ JOURNAL #36021 /* ~Ленни держит долговую расписку Трист на складе. Я могу забрать ее у служащего.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.1 13.1
  SAY #36502 /* ~Он фыркает и вызывающе смотрит на тебя. «Я их хранил, чтобы была возможность кинуть твоего босса Пикита и спасти Трист от аукциона! — он качает головой. — Прикрыть свой зад компроматом...»~ */
  IF ~~ THEN REPLY #36572 /* ~«Кинуть?»~ */ GOTO 19
  IF ~~ THEN REPLY #36573 /* ~«Зачем его кидать?»~ */ GOTO 21
  IF ~~ THEN REPLY #36574 /* ~«Между прочим, Пикит мне не босс».~ */ GOTO 22
END

IF ~~ THEN BEGIN 19 // from: 18.0 20.0
  SAY #36503 /* ~«Да, кинуть, — он еще немного смотрит на тебя, потом до него доходит, что ты его не понял. — Это значит, что я собирался выдать его Гармониуму».~ */
  IF ~~ THEN REPLY #36575 /* ~«Зачем его кидать?»~ */ GOTO 21
  IF ~~ THEN REPLY #36576 /* ~«Между прочим, Пикит мне не босс».~ */ GOTO 22
END

IF ~~ THEN BEGIN 20 // from: 12.2 13.2
  SAY #36504 /* ~Он фыркает и вызывающе смотрит на тебя. «Я придержал их, чтобы была возможность кинуть твоего босса Пикита и спасти Трист от аукциона!»~ */
  IF ~~ THEN REPLY #36577 /* ~«Кинуть?»~ */ GOTO 19
  IF ~~ THEN REPLY #36578 /* ~«Зачем его кидать?»~ */ GOTO 21
  IF ~~ THEN REPLY #36579 /* ~«Между прочим, Пикит мне не босс».~ */ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 18.1 19.0 20.1
  SAY #36505 /* ~Он смотрит на тебя с неким достоинством. «Может, я и вор, но у меня есть кое-какие правила. Я не стану убивать какого-нибудь бедолагу, и не стану делать то, что Пикит сделал с Трист и ее мужем, — он качает головой и отводит взгляд. — Я сказал твоему боссу, что он поступает неправильно, но он посмеялся надо мной».~ */
  IF ~~ THEN REPLY #36580 /* ~«Между прочим, Пикит мне не босс».~ */ GOTO 22
  IF ~~ THEN REPLY #36581 /* ~«Пошли, заберем бумаги, Ленни».~ */ GOTO 16
END

IF ~~ THEN BEGIN 22 // from: 18.2 19.1 20.2 21.0 26.1
  SAY #36506 /* ~Он недоверчиво смотрит на тебя. «Ты серьезно? Я думал... но ты же сказал... — он внимательно смотрит на тебя, потом начинает смеяться. — Ты меня провел, да так, что я сам тебе проболтался! — он качает головой и с уважением смотрит на тебя. — Хорошо сработано, рубака».~ */
  IF ~~ THEN REPLY #36582 /* ~«Пошли, заберем бумаги, Ленни».~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #36507 /* ~Он печально качает головой. «Мы не можем: они на складе и в текущий момент недоступны. Ходят слухи, что у них сейчас что-то типа смены руководства... но я не знаю, правда ли это. В любом случае, я не могу достать бумаги, — он робко смотрит на тебя. — Потому я и не смог сам помочь Трист, рубака. Я не могу достать эти чертовы бумаги».~ */
  IF ~  Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36583 /* ~«Я разобрался с этим небольшим дельцем — мы можем забирать бумаги».~ */ GOTO 24
  IF ~  !Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36584 /* ~«Я разберусь с этим и сам заберу бумаги».~ */ GOTO 24
  IF ~~ THEN REPLY #36585 /* ~«С меня хватит. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 23.1 35.1 36.0
  SAY #36508 /* ~Он улыбается тебе. «Иди на склад и скажи служащему *я здесь за ссудой*, и он отдаст тебе бумаги Трист. Если потом скажешь ему *я обставил Пикита*, он даст тебе премию...»~ */
  IF ~~ THEN REPLY #36586 /* ~«Какую еще премию?»~ */ DO ~AddexperienceParty(4000)
SetGlobal("Stolen_Papers","GLOBAL",3)
SetGlobal("Evidence_Papers","GLOBAL",3)
~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #36509 /* ~Он смеется. «Доказательства, рубака. Это надолго, очень надолго уберет Пикита с улиц, если ты отдашь их в правильные руки... — он на миг задумывается. — Если в Гармониуме есть кто-то, кому ты можешь доверять, отдай их ему».~ */
  IF ~  Dead("Byron")
~ THEN REPLY #36587 /* ~«Его убрали с улиц, Ленни. Байрон мертв».~ */ GOTO 41
  IF ~~ THEN REPLY #39445 /* ~«Ладно. Прощай».~ */ JOURNAL #36022 /* ~Ленни держит на складе доказательства незаконной деятельности Байрона Пикита. Он предложил мне передать их кому-нибудь в Гармониуме, кому я доверяю. Улики я могу получить, поговорив со служащим.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 16.1
  SAY #36510 /* ~Он хмурится. «Что ты имеешь в виду?»~ */
  IF ~~ THEN REPLY #36588 /* ~«Это не твое дело».~ */ GOTO 17
  IF ~~ THEN REPLY #36589 /* ~«Я не работаю на Пикита, Ленни».~ */ DO ~AddexperienceParty(1000)
~ GOTO 22
END

IF ~~ THEN BEGIN 27 // from: 5.2 33.1 34.1 38.1 40.1
  SAY #36511 /* ~«Ты уверен, что хочешь покинуть свою текущую специализацию и стать вором?»~ */
  IF ~~ THEN REPLY #36590 /* ~«Да...»~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 42
  IF ~~ THEN REPLY #52390 /* ~«Нет, дай мне немного об это подумать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 5.3
  SAY #36512 /* ~Он оглядывается по сторонам и пожимает плечами. «Это Нижний район, жилище простого народа. Жизнь здесь не такая безнадежная, как в Улье, но и не настолько хороша, как в Чиновничьем районе, — он снова оглядывается. — Больше тут особо не о чем рассказывать».~ */
  IF ~~ THEN REPLY #36591 /* ~«Что ты можешь сказать об Улье?»~ */ GOTO 29
  IF ~~ THEN REPLY #36592 /* ~«Что ты можешь рассказать о Чиновничьем районе?»~ */ GOTO 30
  IF ~~ THEN REPLY #36593 /* ~«У меня есть другие вопросы...»~ */ GOTO 5
  IF ~~ THEN REPLY #36594 /* ~«Спасибо, я уже должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 30.0
  SAY #36513 /* ~Он качает головой и улыбается. «Полагаю, ты их назвал бы трущобами Сигила. Куче бедолаг там больше некуда податься, кроме как в книгу мертвых, — он умолкает. — Больше тут нечего сказать».~ */
  IF ~~ THEN REPLY #36595 /* ~«Что ты можешь рассказать о Чиновничьем районе?»~ */ GOTO 30
  IF ~~ THEN REPLY #36596 /* ~«У меня есть другие вопросы...»~ */ GOTO 5
  IF ~~ THEN REPLY #36597 /* ~«Спасибо, я уже должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.1 29.0
  SAY #36514 /* ~Он улыбается. «Название говорит само за себя, пень. Чиновники, чиновники и еще раз чиновники. Если хочешь накатать кляузу, или ее уже на тебя накатали — тебе туда самое место, — он пожимает плечами. — Больше тут нечего сказать».~ */
  IF ~~ THEN REPLY #36598 /* ~«Что ты можешь сказать об Улье?»~ */ GOTO 29
  IF ~~ THEN REPLY #36599 /* ~«У меня есть другие вопросы...»~ */ GOTO 5
  IF ~~ THEN REPLY #36600 /* ~«Спасибо, я уже должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #36515 /* ~Он улыбается и начинает грубо хохотать. «Большинство думает, что Сигил — центр мультивселенной. Лично я думаю, что это ее жопа, и все живущие здесь бедолаги — это дерьмо, которое из нее лезет». Он продолжает улыбаться тебе.~ */
  IF ~~ THEN REPLY #36601 /* ~«У меня есть другие вопросы...»~ */ GOTO 5
  IF ~~ THEN REPLY #36602 /* ~«Спасибо, я уже должен идти. Прощай».~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 33 38 40 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 32 // from:
  SAY #36516 /* ~Ты видишь Ленни. Когда ты подходишь, он дарит тебе притворную улыбку. «Что ж, здравствуй, пень. Чему я обязан такому удовольствию?»~ */
  IF ~~ THEN REPLY #36603 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #36604 /* ~«Мне пора идти. Прощай».~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 38 40 even though they appear after this state */
~  Global("Stolen_Papers","GLOBAL",2)
~ THEN BEGIN 33 // from:
  SAY #36517 /* ~Ты видишь Ленни. Похоже, что он не очень-то рад тебя видеть. «Чего ты хочешь, пень?»~ */
  IF ~~ THEN REPLY #36605 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 34
  IF ~  
!Class(Protagonist,THIEF)
~ THEN REPLY #36606 /* ~«Я хотел бы обучиться воровскому искусству. Ты можешь меня научить?»~ */ GOTO 27
  IF ~~ THEN REPLY #36607 /* ~«Ничего, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #36518 /* ~Он мрачнеет. «Никаких вопросов, никаких ответов. Возвращайся к своему боссу и передай ему, чтоб оставил меня в покое». Он пристально смотрит на тебя.~ */
  IF ~~ THEN REPLY #36608 /* ~«Пикит мне не босс».~ */ GOTO 35
  IF ~  
!Class(Protagonist,THIEF)
~ THEN REPLY #36609 /* ~«Я заинтересован в изучении воровского искусства. Ты можешь меня обучить?»~ */ GOTO 27
  IF ~~ THEN REPLY #36610 /* ~«Отлично, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #36519 /* ~Он недоверчиво смотрит на тебя. «Ты серьезно? Я думал... но ты сказал... — он внимательно рассматривает тебя пару секунд, потом начинает смеяться. — Ты меня провел, да так, что я сам тебе проболтался! — он качает головой и с уважением смотрит на тебя. — Хорошо сработано, рубака, — он умолкает. — Как тебе идея обставить Пикита?»~ */
  IF ~~ THEN REPLY #36611 /* ~«Подставить?»~ */ GOTO 36
  IF ~~ THEN REPLY #36612 /* ~«Да, пожалуйста».~ */ DO ~SetGlobal("Evidence_Papers","GLOBAL",3)
~ GOTO 24
  IF ~~ THEN REPLY #36613 /* ~«Нет, мне теперь все равно — я получил то, за чем пришел».~ */ GOTO 37
  IF ~~ THEN REPLY #36614 /* ~«Я так не думаю, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #36520 /* ~Он улыбается. «Да, обставить его... Убрать его с улиц куда подальше, что-то типа того».~ */
  IF ~~ THEN REPLY #36615 /* ~«Да, пожалуйста».~ */ DO ~SetGlobal("Evidence_Papers","GLOBAL",3)
~ GOTO 24
  IF ~~ THEN REPLY #36616 /* ~«Нет, мне теперь все равно — я получил то, за чем пришел».~ */ GOTO 37
  IF ~~ THEN REPLY #36617 /* ~«Я так не думаю, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.2 36.1
  SAY #36521 /* ~Он пожимает плечами. «Ну, тогда на этом все. Прощай, пень».~ */
  IF ~~ THEN REPLY #36618 /* ~«Прощай».~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 40 even though they appear after this state */
~  GlobalGT("Evidence_Papers","GLOBAL",2)
~ THEN BEGIN 38 // from:
  SAY #36522 /* ~Ты видишь Ленни. Он улыбается при твоем приближении. «Привет, рубака. Что я могу для тебя сделать?»~ */
  IF ~~ THEN REPLY #36619 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 39
  IF ~  
!Class(Protagonist,THIEF)
~ THEN REPLY #36620 /* ~«Я заинтересован в изучении воровского искусства. Ты можешь меня обучить?»~ */ GOTO 27
  IF ~~ THEN REPLY #36621 /* ~«Ничего, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0 40.0
  SAY #36523 /* ~«Я сказал тебе все, что знаю, рубака. У меня для тебя больше нет ответов».~ */
  IF ~~ THEN REPLY #36622 /* ~«Отлично, прощай».~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Byron_Arrested","GLOBAL",0)
~ THEN BEGIN 40 // from:
  SAY #36524 /* ~Ты видишь Ленни. Он улыбается при твоем приближении. «Привет, рубака. Я слышал насчет Байрона, и несказанно этому рад, — он ухмыляется. — Что я могу для тебя сделать?»~ */
  IF ~~ THEN REPLY #36623 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 39
  IF ~  
!Class(Protagonist,THIEF)
~ THEN REPLY #36624 /* ~«Я заинтересован в изучении воровского искусства. Ты можешь меня обучить?»~ */ GOTO 27
  IF ~~ THEN REPLY #36625 /* ~«Ничего, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 25.0
  SAY #39446 /* ~Он колеблется, затем злобно ухмыляется. «Правда? Какая чудесная новость... так ему и надо».~ */
  IF ~~ THEN REPLY #39447 /* ~«Прощай, Ленни».~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 27.0
  SAY #52391 /* ~«Покажи мне, что ты знаешь, и я дам тебе пару подсказок». Он внимательно наблюдает за тем, как ты демонстрируешь свои знания. В нескольких местах он останавливает тебя и показывает, как можно улучшить твои навыки. За несколько часов ты начинает чувствовать, что уже освоился с воровскими приемами.~ */
  IF ~  Global("Thief_Training","GLOBAL",0)
HasItem("Zpunch",Myself)
~ THEN REPLY #52392 /* ~«Спасибо, Ленни».~ */ DO ~SetGlobal("Thief_Training","GLOBAL",3)
GiveExperience(Protagonist,2500)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ GOTO 43
  IF ~  GlobalGT("Thief_Training","GLOBAL",0)
HasItem("Zpunch",Myself)
~ THEN REPLY #52392 /* ~«Спасибо, Ленни».~ */ GOTO 43
  IF ~  !HasItem("Zpunch",Myself)
~ THEN REPLY #64222 /* ~«Спасибо. Мне пора».~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0 42.1
  SAY #64223 /* ~Ленни улыбается тебе и задумчиво кивает. «Держи, рубака. Возьми еще и это. Подарочек от Ленни, поможет тебе на новом поприще... Мне они все равно больше не нужны». Он дает тебе пару ударных кинжалов.~ */
  IF ~~ THEN REPLY #64224 /* ~«Спасибо, Ленни. Прощай».~ */ DO ~GiveItem("Zpunch",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from:
  SAY #64783 /* ~«Покажи мне, что ты знаешь, и я дам тебе пару подсказок». Он внимательно наблюдает за тем, как ты демонстрируешь свои знания. В нескольких местах он останавливает тебя и показывает, как можно улучшить твои навыки. За несколько часов ты начинает чувствовать, что уже освоился с воровскими приемами.~ */
  IF ~~ THEN REPLY #64784 /* ~«Спасибо. Мне пора».~ */ EXIT
END
