// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER5.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER5~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17512 /* ~«Прыгай, лим-лим, прыгай!» Торговец замечает тебя. «А, здравствуйте! Хотите приобрести этих резвых, игривых лим-лимов, милорд?»~ */
  IF ~~ THEN REPLY #17537 /* ~«Нет, но у меня есть пара вопросов...»~ */ GOTO 2
  IF ~~ THEN REPLY #17539 /* ~«Пока нет. Кто такие эти 'лим-лимы'?»~ */ GOTO 3
  IF ~~ THEN REPLY #17540 /* ~«Да».~ */ GOTO 4
  IF ~~ THEN REPLY #17541 /* ~«Нет, спасибо. Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Buy_LL","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #17513 /* ~«Смотри, как они... а, снова вы, милорд? Хотите купить лим-лима?»~ */
  IF ~~ THEN REPLY #17542 /* ~«Нет, но у меня есть пара вопросов...»~ */ GOTO 2
  IF ~~ THEN REPLY #17543 /* ~«Пока нет. Кто такие эти 'лим-лимы'?»~ */ GOTO 3
  IF ~~ THEN REPLY #17544 /* ~«Да».~ */ GOTO 4
  IF ~~ THEN REPLY #17545 /* ~«Нет, спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.0 4.3 4.5 6.1 7.1 9.0
  SAY #17515 /* ~«Боюсь, я смогу только ответить на вопросы насчет лим-лимов, милорд».~ */
  IF ~  Global("Buy_LL","GLOBAL",2)
~ THEN REPLY #17546 /* ~«Тогда, может быть, ты объяснишь мне, почему мой убежал от меня».~ */ GOTO 7
  IF ~  Global("Buy_LL","GLOBAL",0)
~ THEN REPLY #17547 /* ~«Что они из себя представляют?»~ */ GOTO 3
  IF ~  Global("Buy_LL","GLOBAL",0)
~ THEN REPLY #17548 /* ~«Я бы хотел купить одного».~ */ GOTO 4
  IF ~~ THEN REPLY #17549 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.1
  SAY #17516 /* ~«Они из Внешних земель, милорд, они не насекомые и не животные. Они дружелюбны, любят играть и очень преданы». Он косится на лим-лимов, затем наклоняется поближе и шепчет: «И на вкус ничего, если припрет».~ */
  IF ~~ THEN REPLY #17550 /* ~«Интересно. У меня есть другие вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #17551 /* ~«Я бы хотел купить одного».~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.2 2.2 3.1
  SAY #17517 /* ~«Лим-лимы находят себе еду сами, они питаются насекомыми, мелкими грызунами и так далее. Они будут следовать за тобой повсюду, за ними просто ухаживать, они тихие, постоянно упражняются в своих прыжках, и что самое лучшее — они могут прыгнуть на пятьдесят футов, если в них ткнуть раскаленным угольком! Один такой будет стоить всего лишь сорок медяков, милорд, — жалкие гроши за такое веселое существо и друга!»~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #17553 /* ~«Что думаешь, Морт?»~ */ EXTERN ~DMORTE~ 187
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17555 /* ~«Что думаешь, Анна?»~ */ EXTERN ~DANNAH~ 107
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17556 /* ~«Тогда я возьму одного».~ */ DO ~TakePartyGold(40)
~ GOTO 5
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17557 /* ~«Лучше не разбрасываться медяками. У меня есть несколько вопросов...»~ */ GOTO 2
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17559 /* ~«Лучше я поберегу свои медяки. Прощай».~ */ EXIT
  IF ~  PartyGoldLT(40)
~ THEN REPLY #17560 /* ~«У меня не хватает денег, но у меня есть пара вопросов...»~ */ GOTO 2
  IF ~  PartyGoldLT(40)
~ THEN REPLY #17562 /* ~«Неважно, мне все равно не хватает монет. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.2
  SAY #17518 /* ~«Как мило, милорд! Держите...»~ */
  IF ~~ THEN REPLY #17563 /* ~«Мой собственный лим-лим...»~ */ DO ~SetGlobal("Buy_LL","GLOBAL",1)
GiveItemCreate("LimLim",Protagonist,1,0,0)
~ EXIT
END

IF ~  Global("Buy_LL","GLOBAL",2)
~ THEN BEGIN 6 // from:
  SAY #17519 /* ~«Смотри, как они... а, снова вы, милорд? А где ваш лим-лим?»~ */
  IF ~~ THEN REPLY #17565 /* ~«Он почему-то убежал. Ты говорил мне, что он будет всюду следовать за мной».~ */ GOTO 7
  IF ~~ THEN REPLY #17567 /* ~«Я не хочу об этом говорить. У меня есть пара вопросов...»~ */ GOTO 2
  IF ~~ THEN REPLY #17568 /* ~«Не спрашивай. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.0 6.0
  SAY #17520 /* ~«Правда? Как странно!»~ */
  IF ~~ THEN REPLY #17569 /* ~«Я жду компенсации».~ */ GOTO 8
  IF ~~ THEN REPLY #17570 /* ~«Тогда неважно. У меня есть вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #17572 /* ~«Не беспокойся по этому поводу. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #17521 /* ~«Но милорд... я здесь ни при чем! Недрессированный лим-лим, может быть его украли...»~ */
  IF ~~ THEN REPLY #17573 /* ~«Просто верни мне мои сорок монет».~ */ GOTO 11
  IF ~~ THEN REPLY #17574 /* ~«Верни мне сорок монет и еще двадцать в качестве неустойки».~ */ GOTO 11
  IF ~~ THEN REPLY #17575 /* ~«Верни мне сорок монет и еще сорок за доставленные неприятности».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 11
END

IF ~  Global("Buy_LL","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #17522 /* ~«Смотри, как они... а, снова вы, милорд?»~ */
  IF ~~ THEN REPLY #17730 /* ~«Да. У меня есть вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #17731 /* ~«Я просто проходил мимо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #17526 /* ~(Null Node)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0 8.1 8.2
  SAY #17527 /* ~«Но-но-но, вы не можете! Вы не можете требовать от меня этого, просто не можете!»~ */
  IF ~~ THEN REPLY #17576 /* ~«Могу и буду. Ты говорил мне, что он будет всюду следовать за мной».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_LL_1","GLOBALLaw",1)
~ GOTO 12
  IF ~~ THEN REPLY #17577 /* ~Правда: «Ты расплатишься либо со мной, либо с преисподней. Выбор за тобой».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_2","GLOBALGood",-1)
~ GOTO 12
  IF ~~ THEN REPLY #17579 /* ~Блеф: «Ты расплатишься либо со мной, либо с преисподней. Выбор за тобой».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_LL_1","GLOBALLaw",-1)
~ GOTO 12
  IF ~~ THEN REPLY #17580 /* ~«Тогда забудь об этом. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0 11.1 11.2
  SAY #17528 /* ~«Ну хорошо, я... Эй! Что это там?» Неожиданно он бросается наутек!~ */
  IF ~~ THEN REPLY #17581 /* ~«Какого...»~ */ DO ~RunAwayFromEx(Protagonist,2,FALSE)
SetGlobal("cd_int_1","LOCALS",1)
SetGlobal("Buy_LL","GLOBAL",3)
~ EXIT
END

IF ~  Global("Buy_LL","GLOBAL",3)
~ THEN BEGIN 13 // from:
  SAY #17529 /* ~«Прыгай, лим-лим, прыг... ааааай!» Заметив тебя, торговец бежит прочь.~ */
  IF ~~ THEN REPLY #17582 /* ~«Черт...»~ */ DO ~RunAwayFromEx(Protagonist,2,FALSE)
SetGlobal("cd_int_1","LOCALS",1)
SetGlobal("Buy_LL","GLOBAL",3)
~ EXIT
END
