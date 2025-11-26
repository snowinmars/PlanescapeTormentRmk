// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DUCHO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DUCHO~

IF ~  True()
True()
~ THEN BEGIN 0 // from:
  SAY #49968 /* ~Эта красивая, соблазнительно одетая проститутка — не ровня тем, что ты видел в Улье. От нее пахнет дорогими духами, легкий макияж только подчеркивает черты лица. Она улыбается при твоем приближении и делает элегантный реверанс. «Приветствую вас, уважаемый сэр. Хотите утолить страсть, которую не может утолить Бордель госпожи Грации, я надеюсь?»~ */
  IF ~  Global("AR0605_Visited","GLOBAL",0)
~ THEN REPLY #61436 /* ~«Я не знаю ни о каком 'Борделе', но готов ко всему, что ты можешь предложить».~ */ GOTO 4
  IF ~  Global("AR0605_Visited","GLOBAL",1)
~ THEN REPLY #61437 /* ~«Да».~ */ GOTO 4
  IF ~  Global("Morte_UCHO","GLOBAL",1)
~ THEN REPLY #61438 /* ~«Я — нет, но вот Морт — может быть...»~ */ GOTO 9
  IF ~~ THEN REPLY #61439 /* ~«Нет... но у меня есть вопросы...»~ */ GOTO 1
  IF ~~ THEN REPLY #61440 /* ~«Нет, спасибо. Прощай».~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.3
  SAY #49972 /* ~Она пальцем прикрывает твои губы, заставляя тебя замолчать. «Я смогу ответить только на один вопрос, уважаемый сэр, и ответ будет — 'да, всего лишь за пятьсот медяков'».~ */
  IF ~~ THEN REPLY #49973 /* ~«Пятьсот? Это немного дороговато...»~ */ GOTO 3
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
~ THEN REPLY #61441 /* ~«Звучит неплохо. Хорошо, идем».~ */ DO ~TakePartyGold(500)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  PartyGoldGT(499)
NearbyDialog("Dannah")
~ THEN REPLY #61442 /* ~«Звучит неплохо. Хорошо, идем».~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
SetGlobal("Harlot_Annah_Sex","GLOBAL",1)
~ EXTERN ~DANNAH~ 281
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
NearbyDialog("Dgrace")
~ THEN REPLY #61443 /* ~«Звучит неплохо. Хорошо, идем».~ */ DO ~TakePartyGold(500)
MoraleDec("Grace",1)
SetGlobal("Harlot_Grace_Sex","GLOBAL",1)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ EXTERN ~DGRACE~ 202
  IF ~  PartyGoldLT(500)
~ THEN REPLY #61444 /* ~«Вообще-то, у меня не хватает денег».~ */ GOTO 7
  IF ~~ THEN REPLY #61445 /* ~«Нет, спасибо. Прощай».~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.4 1.5 3.7 4.5
  SAY #49975 /* ~«Как жаль. Возвращайтесь, когда вы измените свою точку зрения, уважаемый сэр. Я с нетерпением буду вас ждать. Прощайте».~ */
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #49976 /* ~Уйти.~ */ EXIT
  IF ~  NearbyDialog("Dmorte")
Global("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61446 /* ~Уйти.~ */ DO ~SetGlobal("Morte_UCHO","GLOBAL",1)
~ EXTERN ~DMORTE~ 600
  IF ~  NearbyDialog("Dmorte")
GlobalGT("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61447 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 4.0
  SAY #49977 /* ~Она улыбается. «О, смею вас заверить, сэр...» Она наклоняется ближе, чтобы прошептать на ухо: «Это стоит каждого потраченного медяка».~ */
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
~ THEN REPLY #49978 /* ~«Звучит неплохо. Хорошо, идем».~ */ DO ~TakePartyGold(500)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  PartyGoldGT(499)
NearbyDialog("Dannah")
~ THEN REPLY #61448 /* ~«Звучит неплохо. Хорошо, идем».~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
SetGlobal("Harlot_Annah_Sex","GLOBAL",1)
~ EXTERN ~DANNAH~ 281
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
NearbyDialog("Dgrace")
~ THEN REPLY #61449 /* ~«Звучит неплохо. Хорошо, идем».~ */ DO ~TakePartyGold(500)
MoraleDec("Grace",1)
SetGlobal("Harlot_Grace_Sex","GLOBAL",1)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ EXTERN ~DGRACE~ 202
  IF ~  PartyGoldLT(500)
~ THEN REPLY #61450 /* ~«Вообще-то, у меня не хватает денег».~ */ GOTO 7
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #61451 /* ~«Я так не думаю. Прощай».~ */ EXIT
  IF ~  NearbyDialog("Dmorte")
Global("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61452 /* ~«Я так не думаю. Прощай».~ */ DO ~SetGlobal("Morte_UCHO","GLOBAL",1)
~ EXTERN ~DMORTE~ 600
  IF ~  NearbyDialog("Dmorte")
GlobalGT("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61453 /* ~«Я так не думаю. Прощай».~ */ EXIT
  IF ~~ THEN REPLY #61454 /* ~«Нет, спасибо. Прощай».~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 0.0 0.1
  SAY #61401 /* ~«Всего лишь пятьсот монет, сэр, и я доставлю вам удовольствие тысячью способами...» Она застенчиво наклоняет голову и дарит тебе озорную улыбку. «Вы согласны пойти со мной?»~ */
  IF ~~ THEN REPLY #61459 /* ~«Пятьсот? Это немного дороговато...»~ */ GOTO 3
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
~ THEN REPLY #61455 /* ~«Я весь твой. Идем».~ */ DO ~TakePartyGold(500)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  PartyGoldGT(499)
NearbyDialog("Dannah")
~ THEN REPLY #61456 /* ~«Я весь твой. Идем».~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
SetGlobal("Harlot_Annah_Sex","GLOBAL",1)
~ EXTERN ~DANNAH~ 281
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
NearbyDialog("Dgrace")
~ THEN REPLY #61457 /* ~«Я весь твой. Идем».~ */ DO ~TakePartyGold(500)
MoraleDec("Grace",1)
SetGlobal("Harlot_Grace_Sex","GLOBAL",1)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ EXTERN ~DGRACE~ 202
  IF ~  PartyGoldLT(500)
~ THEN REPLY #61458 /* ~«Вообще-то, у меня не хватает денег».~ */ GOTO 7
  IF ~~ THEN REPLY #61460 /* ~«Нет, спасибо. Прощай».~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from:
  SAY #61402 /* ~Куртизанка глупо улыбается, затем делает реверанс. «Возможно, в следующий раз, уважаемый сэр, вы не будете в обществе вашего... друга. Прощайте».~ */
  IF ~~ THEN REPLY #61461 /* ~«Черт возьми, Анна... отлично. Прощай».~ */ EXIT
  IF ~~ THEN REPLY #61462 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #61403 /* ~Куртизанка со страхом в глазах отступает назад. Едва выйдя от зоны поражения Анны, она вытягивается и презрительно усмехается тифлингу. «Это не сточная канава Улья, из которой ты выбралась, полукровка... подойди хоть на шаг — и я прикажу Гармониуму выкинуть твой виляющий хвост из района!»~ */
  IF ~~ THEN EXTERN ~DANNAH~ 286
END

IF ~~ THEN BEGIN 7 // from: 1.4 3.3 4.4
  SAY #61404 /* ~«Как жаль. Возвращайтесь, когда ваше состояние... изменится, уважаемый сэр. Я с нетерпением буду вас ждать. Прощайте».~ */
  IF ~~ THEN REPLY #61463 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.1 3.0 4.1
  SAY #61405 /* ~«Что ж... я надеюсь, что вы полностью насладились, уважаемый сэр».~ */
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #61464 /* ~«Не беспокойся, все было хорошо. Прощай».~ */ EXIT
  IF ~  NearbyDialog("Dmorte")
Global("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61465 /* ~«Не беспокойся, все было хорошо. Прощай».~ */ DO ~SetGlobal("Morte_UCHO","GLOBAL",1)
~ EXTERN ~DMORTE~ 600
  IF ~  NearbyDialog("Dmorte")
GlobalGT("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61466 /* ~«Не беспокойся, все было хорошо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.2
  SAY #61406 /* ~Молодая женщина критически осматривает Морта некоторое время, а потом кивает. «Да... да, думаю, я смогу это сделать. У меня найдется подход и к... этому. Безусловно, за ту же цену — всего лишь пятьсот медяков».~ */
  IF ~  PartyGoldGT(499)
~ THEN REPLY #61467 /* ~«Конечно. Держи...»~ */ DO ~TakePartyGold(500)
IncrementGlobal("BD_MORTE_MORALE","GLOBAL",2)
~ EXTERN ~DMORTE~ 601
  IF ~  PartyGoldLT(500)
~ THEN REPLY #61468 /* ~«Извини, Морт, наличность закончилась. Идем».~ */ EXIT
  IF ~~ THEN REPLY #61469 /* ~«Вообще-то, Морт, мы уже уходим. Прощай, леди».~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #61407 /* ~Наконец куртизанка возвращается вместе качающимся из стороны в сторону Мортом. Он блестит глянцевым лоском — как будто если его натерли воском и отполировали — а на макушке видны следы красной помады в форме губ. «Ваш... мимир?.. похоже, весьма удовлетворен, уважаемый сэр».~ */
  IF ~~ THEN REPLY #61470 /* ~«Морт?»~ */ EXTERN ~DMORTE~ 602
  IF ~~ THEN REPLY #61471 /* ~«Хорошо. Прощай».~ */ EXIT
END
