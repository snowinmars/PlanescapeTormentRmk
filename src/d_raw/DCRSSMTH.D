// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSSMTH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSSMTH~

IF ~  GlobalLT("Mediate","GLOBAL",3)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3168 /* ~Ты отвлекаешь от работы этого здоровяка, и он кисло смотрит на тебя. Похоже, он немного медлительный, но искренний: не такой отвратительный, как остальные горожане. «Да? Чего тебе?»~ */
  IF ~~ THEN REPLY #3169 /* ~«Кто ты?»~ */ GOTO 2
  IF ~~ THEN REPLY #61319 /* ~«Что это за место?»~ */ GOTO 7
  IF ~~ THEN REPLY #61320 /* ~«Ты что-нибудь слышал насчет дэва в Проклятом?»~ */ GOTO 8
  IF ~~ THEN REPLY #61321 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~  GlobalLT("Mediate","GLOBAL",3)
NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #61322 /* ~Кузнец раздраженно смотрит на тебя. «Чего тебе опять?»~ */
  IF ~  Global("Mediate","GLOBAL",2)
~ THEN REPLY #61344 /* ~«Я пришел от твоего брата по поводу вашего спора...»~ */ GOTO 9
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #61345 /* ~«Я слышал, что у тебя проблемы с твоим братом. Я бы хотел помочь».~ */ GOTO 9
  IF ~~ THEN REPLY #61347 /* ~«Ты что-нибудь слышал насчет дэва в Проклятом?»~ */ GOTO 8
  IF ~~ THEN REPLY #61348 /* ~«Я хотел бы кое-что купить».~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61349 /* ~«Ничего, спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #61323 /* ~«Я Костолом Малако, городской кузнец. Тебе что-нибудь нужно?»~ */
  IF ~  Global("Mediate","GLOBAL",2)
~ THEN REPLY #61350 /* ~«Я пришел от твоего брата по поводу вашего спора...»~ */ GOTO 9
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #61351 /* ~«Я слышал, что у тебя проблемы с твоим братом. Я бы хотел помочь».~ */ GOTO 9
  IF ~~ THEN REPLY #61352 /* ~«Я бы хотел взглянуть на твои товары».~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61353 /* ~«Нет, спасибо. Прощай».~ */ EXIT
END

IF ~  GlobalGT("Mediate","GLOBAL",2)
GlobalLT("Mediate","GLOBAL",5)
~ THEN BEGIN 3 // from:
  SAY #61324 /* ~«Ну? Как там продвигается дело?»~ */
  IF ~  Global("Negotiate_Kester","GLOBAL",1)
!PartyHasItem("CrumLeg")
~ THEN REPLY #61354 /* ~«Твой брат согласился на мое посредничество. Для определения вашего наследства мне понадобится изучить твою копию завещания».~ */ DO ~GiveItem("CrumLeg",Protagonist)
SetGlobal("Mediate","GLOBAL",5)
~ GOTO 4
  IF ~  Global("Negotiate_Kester","GLOBAL",1)
PartyHasItem("CrumLeg")
~ THEN REPLY #61355 /* ~«Твой брат также согласился на мое посредничество».~ */ DO ~SetGlobal("Mediate","GLOBAL",5)
~ GOTO 5
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
Global("Negotiate_Kester","GLOBAL",1)
~ THEN REPLY #61356 /* ~«Я решил, что ты должен получить все деньги. По закону, ты являешься наследником как старший из двух братьев».~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ GOTO 13
  IF ~~ THEN REPLY #61357 /* ~«Пока в процессе. Мне нужно взглянуть на твои товары...»~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61358 /* ~«Пока в процессе. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #61325 /* ~«Ну... ладно. Надеюсь, ты изучишь его и сделаешь все честь-по-чести». Он передает тебе измятый комок бумаги. «Просто сообщи кому-нибудь из нас».~ */
  IF ~~ THEN REPLY #61359 /* ~«Спасибо. Я дам тебе знать, как приму решение».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #61326 /* ~«Хорошо. Тогда иди и обдумай все. Сообщи кому-нибудь из нас о своем решении».~ */
  IF ~~ THEN REPLY #61360 /* ~«Я так и сделаю. Прощай».~ */ EXIT
END

IF ~  Global("Mediate","GLOBAL",5)
~ THEN BEGIN 6 // from:
  SAY #61327 /* ~«Ну как, ты еще не принял решение?»~ */
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #61361 /* ~«Я решил встать на сторону твоего брата. После прочтения завещаний я определенно пришел к выводу, что он должен получить все наследство целиком».~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",6)
AddexperienceParty(131250)
~ GOTO 12
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #61362 /* ~«Я решил, что ты должен владеть винокурней и получить все деньги отца. Совершенно очевидно, что ты имеешь на это полное право».~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ GOTO 13
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #61363 /* ~«Вы оба должны разделить деньги с обоих дел поровну. Совершенно очевидно, что ваш отец хотел сделать именно так».~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",8)
AddexperienceParty(150000)
~ GOTO 14
  IF ~~ THEN REPLY #61364 /* ~«Никто из вас не заслуживает этого наследства. Я передам ваши завещания тому, кто сможет правильно распорядиться деньгами. Прощай».~ */ DO ~SetGlobal("Mediate","GLOBAL",9)
IncrementGlobalOnceEx("GLOBALEvil_Mediate_1","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #61365 /* ~«Пока нет. Но я бы хотел взглянуть на твои товары».~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61366 /* ~«Еще нет. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.1
  SAY #61328 /* ~«Это кузница, дурень. Тебе нужно что-нибудь или нет?»~ */
  IF ~  Global("Mediate","GLOBAL",2)
~ THEN REPLY #61367 /* ~«Я пришел от твоего брата по поводу вашего спора...»~ */ GOTO 9
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #61368 /* ~«Я слышал, что у тебя проблемы с твоим братом. Я бы хотел помочь».~ */ GOTO 9
  IF ~~ THEN REPLY #61369 /* ~«Я бы хотел взглянуть на твои товары».~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61370 /* ~«Ты что-нибудь слышал насчет дэва в Проклятом?»~ */ GOTO 8
  IF ~~ THEN REPLY #61371 /* ~«Нет. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.2 1.2 7.3
  SAY #61329 /* ~«Кого? Дэва? Они разве не что-то типа ангелов? Нет, таких у нас нет, — он умолкает. — Что-нибудь надо от меня?»~ */
  IF ~  Global("Mediate","GLOBAL",2)
~ THEN REPLY #61372 /* ~«Я пришел от твоего брата по поводу вашего спора...»~ */ GOTO 9
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #61373 /* ~«Я слышал, что у тебя проблемы с твоим братом. Я бы хотел помочь».~ */ GOTO 9
  IF ~~ THEN REPLY #61374 /* ~«Я бы хотел взглянуть на твои товары».~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~  False()
~ THEN REPLY #61375 /* ~«Я слышал, что у тебя проблемы с твоим братом. Я бы хотел помочь».~ */ EXIT
  IF ~~ THEN REPLY #67886 /* ~«Спасибо за уделенное время. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.0 1.1 2.0 2.1 7.0 7.1 8.0 8.1
  SAY #61330 /* ~«Вот оно как, да? Так, значит, про мое дело с братом-грамотеем талдычит весь город? Младший братец, небось, про меня небылицы сочиняет? На меня клевещут оттого, что я неграмотный? Планы против меня ополчились!» Он грозит кулаком в небо.~ */
  IF ~  !Global("Mediate","GLOBAL",2)
~ THEN REPLY #61376 /* ~«Вообще-то, я хочу прояснить этот вопрос».~ */ DO ~SetGlobal("Mediate","GLOBAL",3)
~ GOTO 10
  IF ~  Global("Mediate","GLOBAL",2)
~ THEN REPLY #66570 /* ~«Вообще-то, я хочу прояснить этот вопрос».~ */ DO ~SetGlobal("Mediate","GLOBAL",4)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #61331 /* ~Он печально смотрит на тебя. «Тогда вот вся история. Наш отец был тем еще полудурком, но довольно богатым. После смерти он оставил нам кузницу и винокурню... Но теперь мой братец пытается присвоить себе винокурню, которая всегда приносила больше денег, а я, стало быть, не даю. У меня есть завещание, где все расписано по правилам, да только я не шибко умен во всем этом, а довериться в этом городе некому. Если поможешь — дам тебе звенелок и послушаюсь твоего решения».~ */
  IF ~  !PartyHasItem("CrumLeg")
~ THEN REPLY #61377 /* ~«Хорошо. Мне нужно твое завещание, чтобы изучить его».~ */ DO ~GiveItem("CrumLeg",Protagonist)
~ JOURNAL #61381 /* ~Я согласился помочь кузнецу в его тяжбе с братом-винокуром по отцовскому наследству.~ */ GOTO 11
  IF ~  False()
~ THEN REPLY #61378 /* ~«Хорошо. Постараюсь что-нибудь придумать».~ */ JOURNAL #61381 /* ~Я согласился помочь кузнецу в его тяжбе с братом-винокуром по отцовскому наследству.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #61332 /* ~«Ну... ладно. Надеюсь, ты изучишь его и сделаешь все честь-по-чести». Он передает тебе измятый комок бумаги.~ */
  IF ~~ THEN REPLY #61379 /* ~«Спасибо. Я сообщу тебе, как что случится».~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.0
  SAY #61333 /* ~«Он получит ВСЕ? — он опускает голову. — Тогда мне придется работать вдвое больше. Черт бы тебя побрал, незнакомец, и все твои уловки. Коли понадобятся изделия из металла — приходи... только цена будет повыше, чем в городе».~ */
  IF ~~ THEN REPLY #61380 /* ~«Я запомню это».~ */ JOURNAL #61384 /* ~Я решил проблему с наследством в пользу винокура.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.2 6.1
  SAY #61334 /* ~«Все? — глаза его заблестели. — Все?» Откаблучив небольшую джигу, он пожимает тебе руку. «Дружище, коли понадобятся добротные кузнечные изделия — приходи в любое время! За это надо выпить!»~ */
  IF ~~ THEN REPLY #61382 /* ~«Тогда прощай».~ */ JOURNAL #61383 /* ~Я решил проблему с наследством в пользу кузнеца. Он сказал, что даст скидку на свои изделия.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.2
  SAY #61335 /* ~«То есть нужно поделить выручку с обоих дел, да? В таком случае, я буду в выигрыше. Дружище, ты отлично мне подсобил. Коли понадобятся добротные изделия из металла — приходи».~ */
  IF ~~ THEN REPLY #61385 /* ~«Я так и сделаю. Прощай».~ */ JOURNAL #61386 /* ~Я решил проблему с наследством, распорядившись разделить выручку поровну между обоими братьями.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 6.3
  SAY #61336 /* ~«ЧТО? Ах ты чертов ублюдок! Вон из моей кузницы! ВОН!»~ */
  IF ~~ THEN REPLY #61387 /* ~«Прощай».~ */ JOURNAL #61388 /* ~Я решил проблему с наследством ни в чью пользу. Никто из них не заслуживает денег.~ */ EXIT
END

IF ~  Global("Mediate","GLOBAL",7)
~ THEN BEGIN 16 // from:
  SAY #61337 /* ~«Снова пришел, да? Нужно чего сделать?»~ */
  IF ~~ THEN REPLY #61389 /* ~«Посмотрим, что у тебя есть...»~ */ DO ~StartStore("Crumple2",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61390 /* ~«Нет, спасибо. Прощай».~ */ EXIT
END

IF ~  Global("Mediate","GLOBAL",8)
~ THEN BEGIN 17 // from:
  SAY #61338 /* ~«Явился, торгаш ярмарочный? Давай-ка посмотрим, смогу ли я отплатить тебе по-справедливости».~ */
  IF ~~ THEN REPLY #61391 /* ~«Посмотрим, что у тебя есть...»~ */ DO ~StartStore("Crumple2",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61392 /* ~«Нет, спасибо. Прощай».~ */ EXIT
END

IF ~  Global("Mediate","GLOBAL",6)
~ THEN BEGIN 18 // from:
  SAY #61339 /* ~«Пришел поглазеть на жизнь, которую угробил? Чего тебе?»~ */
  IF ~~ THEN REPLY #61342 /* ~«Посмотрим, что у тебя есть».~ */ DO ~StartStore("Crumple3",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61343 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~  GlobalGT("Mediate","GLOBAL",8)
~ THEN BEGIN 19 // from:
  SAY #61340 /* ~«Вон из моего магазина, вшивый любитель наживы. Не желаю иметь с тобой никаких дел».~ */
  IF ~~ THEN REPLY #61341 /* ~«Отлично. Прощай».~ */ EXIT
END
