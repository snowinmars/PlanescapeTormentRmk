// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHERMIT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DHERMIT~

IF ~  Global("Know_Hermit","GLOBAL",0)
CreatureInArea("AR0708")
~ THEN BEGIN 0 // from:
  SAY #57262 /* ~Перед тобой грязный человек, потрепанный и сгорбленный от возраста и темноты. Когда он замечает тебя, его прилизанные сальные волосы слетают с плеч, а глаза расширяются от страха. Его пальцы начинают складываться в тайные символы...~ */
  IF ~~ THEN REPLY #57263 /* ~«Все в порядке... Я не собираюсь причинять тебе вред».~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #57264 /* ~Напасть на него, прежде чем он закончит заклинание.~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57265 /* ~Посмотреть, что произойдет.~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 2
END

IF ~  Global("Know_Hermit","GLOBAL",1)
CreatureInArea("AR0708")
~ THEN BEGIN 1 // from:
  SAY #57266 /* ~Отшельник пятится от тебя, его руки рисуют тайные узоры. «Пошла прочь, лютая тв... а, это ты. Чего тебе надо от старого отшельника, а?»~ */
  IF ~~ THEN REPLY #57267 /* ~«Расскажи мне о себе еще раз».~ */ GOTO 3
  IF ~~ THEN REPLY #57268 /* ~«Расскажи мне об этом месте».~ */ GOTO 4
  IF ~~ THEN REPLY #57269 /* ~«Я ищу дэва».~ */ GOTO 5
  IF ~~ THEN REPLY #15954 /* ~«Мне нужно место для отдыха».~ */ GOTO 22
  IF ~~ THEN REPLY #57270 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 0.2
  SAY #57271 /* ~«Ой, не уж-то еще один гость? Все вы хотите до смерти напугать старого отшельника, а? Эти тоннели — не место для случайной прогулки, знаешь ли. Чего тебе от меня надо?»~ */
  IF ~~ THEN REPLY #57272 /* ~«Я ищу дэва».~ */ GOTO 5
  IF ~~ THEN REPLY #57273 /* ~«Что там, внизу?»~ */ GOTO 4
  IF ~~ THEN REPLY #57274 /* ~«Не твое дело».~ */ GOTO 6
  IF ~~ THEN REPLY #57275 /* ~«Кто ты?»~ */ GOTO 3
  IF ~~ THEN REPLY #15954 /* ~«Мне нужно место для отдыха».~ */ GOTO 22
  IF ~~ THEN REPLY #57270 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.3 4.0 5.1
  SAY #57277 /* ~Он шумно вздыхает, прерывает себя и пару секунд дико оглядывается. «Я прибыл в Проклятый, потому что моего бога изгнали в Карцери. Я уже некоторое время подбираюсь к нему, но идти за ним на план-тюрьму не собираюсь. Я пытаюсь найти способ вызволить его оттуда. Поскольку он сила добра, то он вообще не должен там находиться, но, полагаю, в этом-то и есть вся суть изгнания».~ */
  IF ~~ THEN REPLY #57278 /* ~«Сколько ты уже здесь находишься?»~ */ GOTO 7
  IF ~~ THEN REPLY #57279 /* ~«Ты, случайно, не видел поблизости дэва?»~ */ GOTO 5
  IF ~~ THEN REPLY #57280 /* ~«И все же, что ты можешь рассказать об этом месте?»~ */ GOTO 4
  IF ~~ THEN REPLY #57281 /* ~«Ты жрец? Можешь меня вылечить?»~ */ DO ~StartStore("Hermit",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57282 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 3.2 5.0
  SAY #57283 /* ~«Тут полно чудовищ, преступников — я не из их числа — и другого недоброжелательного народу. Так или иначе, здесь все равно безопаснее, чем наверху, в городе. По крайней мере, здесь ты знаешь, на чем стоишь. А там? Нет, уж извольте».~ */
  IF ~~ THEN REPLY #57284 /* ~«И все же, что ты здесь делаешь?»~ */ GOTO 3
  IF ~~ THEN REPLY #57285 /* ~«Не видел дэва где-нибудь поблизости?»~ */ GOTO 5
  IF ~~ THEN REPLY #57286 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 2.0 3.1 4.1
  SAY #57287 /* ~«Слыхал о нем, но не довелось старому отшельнику его увидеть. Я думал, что он может быть под землей, раз в этом месте упрятано много хороших вещей, но разыскать его так и не удалось. Если бы я его нашел, я бы расспросил его, слышал ли он что-нибудь о моем боге, — он издает очередной вздох и смотрит вниз, в проход. — Почему-то мне кажется, что он где-то на западе. Но мне так и не удалось его найти. Должно быть, у него есть хранитель». Он подмигивает тебе.~ */
  IF ~~ THEN REPLY #57288 /* ~«Что ты можешь рассказать об этом месте?»~ */ DO ~GiveItem("SPWI704",Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #57289 /* ~«И все же, что ты здесь делаешь?»~ */ DO ~GiveItem("SPWI704",Protagonist)
~ GOTO 3
  IF ~~ THEN REPLY #57290 /* ~«Спасибо. Прощай».~ */ DO ~GiveItem("SPWI704",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #57291 /* ~«Пф! Чтоб вот так подкрадываться к старику. Пшел прочь!» Он отмахивается от тебя и снова удирает через подземелье.~ */
  IF ~~ THEN REPLY #57292 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.0
  SAY #57293 /* ~«Слишком долго, слишком долго, на службе у почти забытого бога. Но я все равно его помню... Я найду его, даже если придется вечно увиливать от всех этих монстров. Я его найду». Он смотрит в сторону, что-то бормоча.~ */
  IF ~~ THEN REPLY #57294 /* ~«Спасибо за уделенное время. Прощай».~ */ EXIT
END

IF ~  Global("Know_Hermit","GLOBAL",0)
Global("Current_Area","GLOBAL",900)
GlobalLT("Curst_Counter","GLOBAL",3)
~ THEN BEGIN 8 // from:
  SAY #57295 /* ~Перед тобой грязный человек, потрепанный и сгорбленный от возраста и темноты. Когда он оглядывается, его прилизанные сальные волосы слетают с плеч. Заметив тебя, он выпаливает: «Смотритель Кайс говорил, что ты заскочишь. Дэва силен, путник, сейчас встреча с ним для тебя — смертный приговор. Ты можешь ослабить его, ослабив хаос в этом городе... он питается им».~ */
  IF ~~ THEN REPLY #57296 /* ~«Откуда ты это знаешь?»~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #57297 /* ~«Я все равно поднимусь».~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #57298 /* ~«Прочь с дороги, старик».~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 16
END

IF ~  Global("Know_Hermit","GLOBAL",0)
Global("Current_Area","GLOBAL",900)
GlobalGT("Curst_Counter","GLOBAL",2)
GlobalLT("Curst_Counter","GLOBAL",6)
~ THEN BEGIN 9 // from:
  SAY #57299 /* ~Перед тобой грязный человек, потрепанный и сгорбленный от возраста и темноты. Когда он оглядывается, его прилизанные сальные волосы слетают с плеч. Заметив тебя, он выпаливает: «Смотритель Кайс говорил, что ты заскочишь. Дэва все еще силен, путник, но твои поступки немного замедлили его. Ты можешь ослабить его еще сильнее, ослабляя хаос в этом городе... он питается им».~ */
  IF ~~ THEN REPLY #57300 /* ~«Откуда ты это знаешь?»~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #57301 /* ~«Я готов встретиться с ним».~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #57302 /* ~«Прочь с дороги, старик».~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 16
END

IF ~  Global("Know_Hermit","GLOBAL",0)
Global("Current_Area","GLOBAL",900)
GlobalGT("Curst_Counter","GLOBAL",5)
~ THEN BEGIN 10 // from:
  SAY #57303 /* ~Перед тобой грязный человек, потрепанный и сгорбленный от возраста и темноты. Когда он оглядывается, его прилизанные сальные волосы слетают с плеч. Заметив тебя, он выпаливает: «Смотритель Кайс говорил, что ты заскочишь. Ты хорошо постарался, ослабляя его... хаос в городе утихает, и его план пошел наперекосяк. Вперед, заверши начатое».~ */
  IF ~~ THEN REPLY #57304 /* ~«Откуда ты это знаешь?»~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #57305 /* ~«Так и сделаю. Прощай».~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 15
END

IF ~  Global("Know_Hermit","GLOBAL",1)
Global("Current_Area","GLOBAL",900)
GlobalLT("Curst_Counter","GLOBAL",3)
~ THEN BEGIN 11 // from:
  SAY #57306 /* ~Перед тобой старый отшельник из подземелья. Заметив тебя, он выпаливает: «Смотритель Кайс говорил, что ты заскочишь. Дэва силен, путник, сейчас встреча с ним для тебя — смертный приговор. Ты можешь ослабить его, ослабив хаос в этом городе... он питается им».~ */
  IF ~~ THEN REPLY #57307 /* ~«Откуда ты это знаешь?»~ */ GOTO 14
  IF ~~ THEN REPLY #57308 /* ~«Я все равно поднимусь».~ */ GOTO 15
  IF ~~ THEN REPLY #57309 /* ~«Прочь с дороги, старик».~ */ GOTO 16
END

IF ~  Global("Know_Hermit","GLOBAL",1)
Global("Current_Area","GLOBAL",900)
GlobalGT("Curst_Counter","GLOBAL",2)
GlobalLT("Curst_Counter","GLOBAL",6)
~ THEN BEGIN 12 // from:
  SAY #57310 /* ~Перед тобой старый отшельник из подземелья. Заметив тебя, он выпаливает: «Смотритель Кайс говорил, что ты заскочишь. Дэва все еще силен, путник, но твои поступки немного замедлили его. Ты можешь ослабить его еще сильнее, ослабляя хаос в этом городе... он питается им».~ */
  IF ~~ THEN REPLY #57311 /* ~«Откуда ты это знаешь?»~ */ GOTO 14
  IF ~~ THEN REPLY #57312 /* ~«Я готов встретиться с ним».~ */ GOTO 15
  IF ~~ THEN REPLY #57313 /* ~«Прочь с дороги, старик».~ */ GOTO 16
END

IF ~  Global("Know_Hermit","GLOBAL",1)
Global("Current_Area","GLOBAL",900)
GlobalGT("Curst_Counter","GLOBAL",5)
~ THEN BEGIN 13 // from:
  SAY #57317 /* ~Перед тобой грязный человек, потрепанный и сгорбленный от возраста и темноты. Когда он оглядывается, его прилизанные сальные волосы слетают с плеч. Заметив тебя, он выпаливает: «Смотритель Кайс говорил, что ты заскочишь. Ты хорошо постарался, ослабляя его... хаос в городе утихает, и его план пошел наперекосяк. Вперед, заверши начатое».~ */
  IF ~~ THEN REPLY #57315 /* ~«Откуда ты это знаешь?»~ */ GOTO 14
  IF ~~ THEN REPLY #57316 /* ~«Так и сделаю. Прощай».~ */ GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 8.0 9.0 10.0 11.0 12.0 13.0
  SAY #57318 /* ~«Я *ощущаю* его там, наверху, прибывающего и убывающего, словно пылающая луна. Я *слышу*, как он размышляет, придешь ли ты. Он жаждет боя».~ */
  IF ~~ THEN REPLY #57319 /* ~«Он его скоро получит, но не сейчас. Прощай».~ */ GOTO 15
  IF ~~ THEN REPLY #57320 /* ~«Тогда он его получит».~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 8.1 9.1 10.1 11.1 12.1 13.1 14.0 14.1
  SAY #57321 /* ~«Пока ты не ушел... ты примешь благословение старика? Это поможет тебе выстоять перед дэва и всеми остальными ужасами, которых ты можешь повстречать. Хочешь, чтобы я тебя исцелил?»~ */
  IF ~~ THEN REPLY #57322 /* ~«Нет, спасибо».~ */ GOTO 18
  IF ~~ THEN REPLY #57323 /* ~«Нет. А теперь прочь с дороги».~ */ GOTO 17
  IF ~  NumInParty(1)
~ THEN REPLY #57324 /* ~«Да».~ */ GOTO 19
  IF ~  NumInPartyGT(1)
~ THEN REPLY #57325 /* ~«Да».~ */ GOTO 20
END

IF ~~ THEN BEGIN 16 // from: 8.2 9.2 11.2 12.2
  SAY #57326 /* ~Он кладет на удивление сильную руку на твою грудь. «Пока ты не ушел, примешь от меня благословение? Хоть мне и не нравится твоя покромсанная рожа, мой долг — проследить, чтобы ты шел подготовленным... это касается не только тебя. Позволь мне исцелить твои раны».~ */
  IF ~~ THEN REPLY #57327 /* ~«Не нужно мне твое благословение. Прочь с дороги».~ */ GOTO 17
  IF ~  NumInParty(1)
~ THEN REPLY #57328 /* ~«Хорошо». ~ */ GOTO 19
  IF ~  NumInPartyGT(1)
~ THEN REPLY #57329 /* ~«Хорошо». ~ */ GOTO 20
END

IF ~~ THEN BEGIN 17 // from: 15.1 16.0
  SAY #57331 /* ~«Ты еще вспомнишь это, лежа в луже крови перед ним, — он гримасничает. — Хоть мне и больно говорить это, но все же удачи тебе».~ */
  IF ~~ THEN REPLY #57332 /* ~«Ага, спасибо. Прощай».~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 15.0
  SAY #57334 /* ~«Тогда пеняй на себя. Не подведи, ошрамованный». Он делает тебе поклон.~ */
  IF ~~ THEN REPLY #57335 /* ~«Спасибо. Прощай».~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.2 16.1
  SAY #57338 /* ~Он закрывает глаза и сосредотачивается, говоря: «Позволь мне исцелить твои раны». Он открывает глаза. «А теперь иди».~ */
  IF ~~ THEN REPLY #57340 /* ~«Спасибо».~ */ DO ~FullHeal(Protagonist)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.3 16.2 21.0 21.1 21.2 21.3 21.4 21.5 21.6 21.7
  SAY #57342 /* ~«Кому нужна моя помощь?»~ */
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #57344 /* ~«Мне».~ */ DO ~FullHeal(Protagonist)
~ GOTO 21
  IF ~  NearbyDialog("DAnnah")
HPPercentLT("Annah",100)
~ THEN REPLY #57349 /* ~«Анне».~ */ DO ~FullHeal("Annah")
~ GOTO 21
  IF ~  NearbyDialog("DMorte")
HPPercentLT("Morte",100)
~ THEN REPLY #57351 /* ~«Морту».~ */ DO ~FullHeal("Morte")
~ GOTO 21
  IF ~  NearbyDialog("DDakkon")
HPPercentLT("Dakkon",100)
~ THEN REPLY #57355 /* ~«Даккону».~ */ DO ~FullHeal("Dakkon")
~ GOTO 21
  IF ~  NearbyDialog("DNordom")
HPPercentLT("Nordom",100)
~ THEN REPLY #57356 /* ~«Нордому».~ */ DO ~FullHeal("Nordom")
~ GOTO 21
  IF ~  NearbyDialog("DGrace")
HPPercentLT("Grace",100)
~ THEN REPLY #57358 /* ~«Падшей Грации»~ */ DO ~FullHeal("Grace")
~ GOTO 21
  IF ~  NearbyDialog("DIgnus")
HPPercentLT("Ignus",100)
~ THEN REPLY #57360 /* ~«Игнусу».~ */ DO ~FullHeal("Ignus")
~ GOTO 21
  IF ~  NearbyDialog("DVhail")
HPPercentLT("Vhail",100)
~ THEN REPLY #57362 /* ~«Вейлору».~ */ DO ~FullHeal("Vhail")
~ GOTO 21
  IF ~~ THEN REPLY #57366 /* ~«Никому из нас. Однако же спасибо за благословение. Прощай».~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1 20.2 20.3 20.4 20.5 20.6 20.7
  SAY #57367 /* ~«Вот. Кому еще подлечить раны?»~ */
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #57368 /* ~«Мне».~ */ DO ~FullHeal(Protagonist)
~ GOTO 20
  IF ~  NearbyDialog("DAnnah")
HPPercentLT("Annah",100)
~ THEN REPLY #57369 /* ~«Анне».~ */ DO ~FullHeal("Annah")
~ GOTO 20
  IF ~  NearbyDialog("DMorte")
HPPercentLT("Morte",100)
~ THEN REPLY #57370 /* ~«Морту».~ */ DO ~FullHeal("Morte")
~ GOTO 20
  IF ~  NearbyDialog("DDakkon")
HPPercentLT("Dakkon",100)
~ THEN REPLY #57372 /* ~«Даккону».~ */ DO ~FullHeal("Dakkon")
~ GOTO 20
  IF ~  NearbyDialog("DNordom")
HPPercentLT("Nordom",100)
~ THEN REPLY #57373 /* ~«Нордому».~ */ DO ~FullHeal("Nordom")
~ GOTO 20
  IF ~  NearbyDialog("DGrace")
HPPercentLT("Grace",100)
~ THEN REPLY #57374 /* ~«Падшей Грации»~ */ DO ~FullHeal("Grace")
~ GOTO 20
  IF ~  NearbyDialog("DIgnus")
HPPercentLT("Ignus",100)
~ THEN REPLY #57375 /* ~«Игнусу».~ */ DO ~FullHeal("Ignus")
~ GOTO 20
  IF ~  NearbyDialog("DVhail")
HPPercentLT("Vhail",100)
~ THEN REPLY #57376 /* ~«Вейлору».~ */ DO ~FullHeal("Vhail")
~ GOTO 20
  IF ~~ THEN REPLY #57377 /* ~«Никому из нас. Однако же спасибо за благословение. Прощай».~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 1.3 2.4
  SAY #68484 /* ~«Вот как? Ну ладно. Есть тут у меня местечко, где ты можешь выспаться... Я дам тебе знать, если сюда наведаются какие-нибудь чудища».~ */
  IF ~~ THEN REPLY #32017 /* ~«Спасибо».~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
END
