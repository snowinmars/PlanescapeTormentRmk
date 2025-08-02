// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DIGNUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DIGNUS~

IF ~  Global("Ignus","GLOBAL",0)
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2846 /* ~Это потрескивающее и пышущее жаром существо медленно корчится над железной решеткой на полу бара. Должно быть, когда-то это был человек, но теперь его кожа обуглена до неузнаваемости. Потоки огня образуют кольцо вокруг его тела, языки пламени лижут остатки плоти, отчего те пузырятся и стекают как воск по скелету существа.~ */
  IF ~~ THEN REPLY #16198 /* ~«Приветствую...»~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 1
  IF ~~ THEN REPLY #16200 /* ~Осмотреть тлеющий труп.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 2
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #16201 /* ~«Хм-м. Интересно, поможет ли тут Графин бесконечной воды?..»~ */ DO ~SetAnimState("Ignus",ANIM_MIMEGETHIT)
~ GOTO 3
  IF ~~ THEN REPLY #16210 /* ~Оставить существо в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0
  SAY #2847 /* ~Существо не реагирует. Оно медленно корчится в пламени: оно живое, но, похоже, *не замечает* ничего, кроме окружающего его пламени. Его кожа — огонь, его сердце — пламя. Из какого-то темного уголка твоей памяти к тебе приходит осознание того, что это создание *опасно*.~ */
  IF ~~ THEN REPLY #16212 /* ~Осмотреть существо.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 2
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #16213 /* ~«Хм-м. Интересно, поможет ли тут Графин бесконечной воды?..»~ */ DO ~SetAnimState("Ignus",ANIM_MIMEGETHIT)
~ GOTO 3
  IF ~~ THEN REPLY #16214 /* ~Оставить существо в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #16199 /* ~Жар вокруг этого... существа... просто невероятный. К твоему удивлению, железная решетка, над которой оно парит, вся закоптилась и прогнулась от жары. Сперва ты решил, что жар исходит от решетки... но теперь ты понимаешь, что его излучает само существо. Ты наблюдаешь, как с корчащегося тела срываются хлопья пепла и медленно взмывают к потолку.~ */
  IF ~~ THEN REPLY #16215 /* ~«Приветствую...»~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 1
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #16216 /* ~«Хм-м. Интересно, поможет ли тут Графин бесконечной воды?..»~ */ DO ~SetAnimState("Ignus",ANIM_MIMEGETHIT)
~ GOTO 3
  IF ~~ THEN REPLY #16217 /* ~Оставить существо в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.1 2.1
  SAY #16202 /* ~Ты наклоняешь графин над решеткой и начинаешь лить. Из него вытекает тонкая струйка голубой как лед воды и касается пламени решетки, вызвав резкое шипение и столб пара... Как бы в ответ на этот вызов графин *бросается* вперед, падает на решетку и разбивается!~ */
  IF ~~ THEN REPLY #16218 /* ~«Какого черта?..»~ */ DO ~DestroyPartyItem("Decant2",TRUE)
AddexperienceParty(5000)
SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #16203 /* ~Из решетки вырываются шипящие облака пара и яростный треск, который укутывает тебя и вынуждает прикрыть уши и отвернуться... Слышится крик, хихиканье, ужасный шум сотен горящих домов, кричащих людей; их крики перекрываются ревом пламени и горящей плоти...~ */
  IF ~~ THEN REPLY #16219 /* ~Прикрыть уши, чтобы избавиться от звука.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #16204 /* ~Закрыв уши руками, чтобы оградиться от звука, ты чувствуешь на ладонях что-то липкое, вроде плавленного сыра или свечного воска... Твои уши кровоточат от звука! Ты отводишь руки и видишь, что они покрыты кусочками оплавленной плоти и сгустками крови...~ */
  IF ~~ THEN REPLY #16220 /* ~Попытаться убраться из бара.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #16205 /* ~Ты уже собираешься бежать из бара, лишь бы убраться от этого звука, как вдруг все умолкает; остается только неровное потрескивание, исходящее от решетки. Ты оборачиваешься: на решетке лежит Графин бесконечной воды. От него остались только осколки и пар. Над ним нависает существо; языки пламени все еще укутывают его тело. Оно пристально смотрит на тебя, его глаза мерцают как два факела...~ */
  IF ~~ THEN REPLY #16221 /* ~«Я *знаю* тебя...»~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #16206 /* ~По лицу существа проходит трещина, от его челюсти отделяется обугленная плоть, давая ему возможность говорить. «*Да-а-а...*» Его голос с треском, горением, ревом вырывается из груди. С каждым словом из его рта вылетают хлопья пепла и золы и кружат в воздухе. Тебе едва удается смотреть на это существо: трудно выдержать сияние, окружающее его.~ [IGN116] */
  IF ~~ THEN REPLY #16222 /* ~«Игнус...»~ */ DO ~SetGlobal("Ignus_Free","GLOBAL",1)
SetGlobal("Ignus","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #16207 /* ~«*Да-а-а...*» Существо подлетает к тебе, воздух дрожит от окружающего его жара. «*Долго я ссспал... сссны про огонь...*» Будто вторя ему, в его глотке вспыхивает огонь, из-за почерневших зубов вырывается язык пламени. «*Я твой... пока ссссмерть не придет к нам обоим...*»~ [IGN004C] */
  IF ~~ THEN REPLY #48406 /* ~«Посмотрим...»~ */ EXIT
END

IF ~  Global("Ignus","GLOBAL",1)
!InParty("Ignus")
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 9 // from:
  SAY #16208 /* ~Когда ты подходишь, существо шипит, воздух дрожит от жара вокруг него. «*Долго я ссспал... сссны об огне...*»~ [IGN004B] */
  IF ~~ THEN REPLY #16223 /* ~«Здравствуй, Игнус... Ты пойдешь со мной?»~ */ DO ~SetGlobal("Ignus","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 10
  IF ~~ THEN REPLY #52781 /* ~«Держи свои сны при себе, Игнус... Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #16209 /* ~Будто вторя ему, в его глотке вспыхивает огонь, из почерневших зубов вырывается язык пламени. «*Я твой... пока ссссмерть не придет к нам обоим...*»~ [IGN248] */
  IF ~~ THEN REPLY #52782 /* ~«Посмотрим...»~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #16624 /* ~Игнус медленно поворачивается, чтобы встретиться с тобой взглядом. «*Да-а-а*?»~ */
  IF ~  !Global("Evil_Mourns_2","GLOBAL",1)
~ THEN REPLY #16922 /* ~«Неважно, это была плохая идея. У меня есть несколько вопросов, Скорбящий...»~ */ EXTERN ~DMFTREE~ 28
  IF ~  Global("Evil_Mourns_2","GLOBAL",1)
~ THEN REPLY #16923 /* ~«Видишь эти деревья, Игнус? Как ты думаешь, ты сможешь от всего сердца *позаботиться* о них?»~ */ GOTO 12
  IF ~~ THEN REPLY #16924 /* ~«Ничего. Не знаю, о чем я только думал. Прощай, Скорбящий-по-деревьям».~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #16625 /* ~Игнус поворачивается к деревьям, воздух вокруг него становиться невыносимо жарким. «*Да-а-а... ссссжечь...*»~ */
  IF ~~ THEN EXTERN ~DMFTREE~ 52
END

IF ~~ THEN BEGIN 13 // from:
  SAY #16626 /* ~Игнус ужасающе хохочет, из его глотки вырываются брызги пламени. «*Ты вссстал между мной и тем, что горит? Гори-и-и тогда и ты-ы...*»~ */
  IF ~~ THEN REPLY #16925 /* ~«Игнус, стой...»~ */ DO ~Attack("MFTree")
~ EXIT
  IF ~~ THEN REPLY #16926 /* ~Позволить ему делать то, что он хочет.~ */ DO ~Attack("MFTree")
IncrementGlobalOnceEx("GLOBALEvil_Mourns_3","GLOBALGood",-2)
~ EXIT
END

IF ~  GlobalGT("Ignus","GLOBAL",1)
!InParty("Ignus")
Global("Party_Ignus_Waiting_VO","GLOBAL",0)
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 14 // from:
  SAY #33991 /* ~Когда ты подходишь, Игнус шипит, воздух дрожит от окружающего его жара. «*Пока-а-а я ждал здессссь... мыссссли наполнялисссссь огнем...*»~ [IGN247] */
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",0)
~ THEN REPLY #33992 /* ~«Игнус, мне нужна твоя помощь».~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 15
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",1)
~ THEN REPLY #61855 /* ~«Игнус, мне нужна твоя помощь».~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 86
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",2)
~ THEN REPLY #61856 /* ~«Игнус, мне нужна твоя помощь».~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 87
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",3)
~ THEN REPLY #61857 /* ~«Игнус, мне нужна твоя помощь».~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 88
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",4)
~ THEN REPLY #61858 /* ~«Игнус, мне нужна твоя помощь».~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 89
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",5)
~ THEN REPLY #61859 /* ~«Игнус, мне нужна твоя помощь».~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 90
  IF ~~ THEN REPLY #61860 /* ~«Э-э... Ясно. Тогда прощай».~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 84.0 85.0
  SAY #33994 /* ~«*Я твой... пока ссссмерть не придет к нам обоим...*»~ [IGN248] */
  IF ~~ THEN REPLY #33995 /* ~«Хорошо. Уходим».~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",1)
~ EXIT
END

IF ~  InParty("Ignus")
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 16 // from:
  SAY #33996 /* ~В его глотке вспыхивает огонь, из почерневших зубов вырывается язык пламени. «*Да-а-а-а?..*»~ [IGN249] */
  IF ~~ THEN REPLY #33997 /* ~«Игнус, из-за чего ты стал таким?»~ */ GOTO 31
  IF ~  Global("Story_Reekwind_Ignus","GLOBAL",1)
~ THEN REPLY #57439 /* ~«Игнус... это правда, что ты сжег переулок Опасных углов?»~ */ GOTO 36
  IF ~~ THEN REPLY #57440 /* ~«Что ты делал в баре Тлеющий труп?»~ */ GOTO 40
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",1)
~ THEN REPLY #57441 /* ~«Игнус, в Улье я разговаривал с рассказчиком, и он упомянул, что кто-то *обучил* тебя этим вещам... кто это был?»~ */ DO ~SetGlobal("Know_Ignus_Teacher","GLOBAL",2)
AddexperienceParty(10000)
~ GOTO 46
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #57442 /* ~«Игнус, ты УВЕРЕН, что я был твоим учителем?»~ */ GOTO 47
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",0)
~ THEN REPLY #57443 /* ~«Игнус, твое владение Искусством... Ты можешь обучить меня чему-нибудь из него?»~ */ GOTO 63
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57444 /* ~«Игнус, твое владение Искусством... Я готов страдать, чтобы продолжить обучение».~ */ GOTO 65
  IF ~  Class(Protagonist,MAGE)
GlobalGT("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57445 /* ~«Игнус, твое владение Искусством... Я готов страдать, чтобы продолжить обучение».~ */ GOTO 73
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #57446 /* ~«Игнус, насчет твоего обучения и страданий, которые я тебе причинил... Я сожалею».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ignus_1","GLOBALGood",2)
~ GOTO 81
  IF ~~ THEN REPLY #57447 /* ~«Ничего, Игнус. Просто проверял, что ты все еще с нами... если можно так сказать».~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #52561 /* ~«*Гори-и-и-и...*»~ [IGN144A] */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #52562 /* ~«Какие еще мучения видят твои глаз, Равель?»~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",1)
~ EXTERN ~DRAVEL~ 35
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #52563 /* ~«Какие еще мучения видят твои глаз, Равель?»~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",1)
~ EXTERN ~DRAVEL~ 36
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52564 /* ~«Какие еще мучения видят твои глаз, Равель?»~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ EXTERN ~DRAVEL~ 38
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52565 /* ~«Какие еще мучения видят твои глаз, Равель?»~ */ EXTERN ~DRAVEL~ 40
END

IF ~~ THEN BEGIN 18 // from:
  SAY #52566 /* ~«*Гори-и-и-и...*»~ [IGN144A] */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #52567 /* ~«Равель, ты уже высказалась. А теперь хватит о м...»~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",2)
~ EXTERN ~DRAVEL~ 65
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #52568 /* ~«Равель, ты уже высказалась. А теперь хватит о м...»~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",2)
~ EXTERN ~DRAVEL~ 66
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52569 /* ~«Равель, ты уже высказалась. А теперь хватит о м...»~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",2)
~ EXTERN ~DRAVEL~ 67
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52570 /* ~«Равель, ты уже высказалась. А теперь хватит о м...»~ */ EXTERN ~DRAVEL~ 68
END

IF ~~ THEN BEGIN 19 // from: 46.1
  SAY #54145 /* ~«*Я твой... Пока ссссмерть не придет к нам ОБОИМ...*»~ */
  IF ~  NearbyDialog("DGrace")
InParty("Grace")
~ THEN REPLY #54146 /* ~«Понятно... Падшая Грация?»~ */ EXTERN ~DGRACE~ 168
  IF ~  !InParty("Grace")
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN REPLY #54147 /* ~«Понятно... Анна?»~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54148 /* ~«Понятно... Даккон?»~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("grace")
!InParty("annah")
NearbyDialog("Ddakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54149 /* ~«Понятно... Даккон?»~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("grace")
!InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54150 /* ~«Понятно... Морт?»~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("grace")
!InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54151 /* ~«Понятно... Морт?»~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54152 /* ~«Хорошо... А теперь посмотрим, что же находится по ту сторону портала».~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54153 /* ~«Хорошо... А теперь посмотрим, что же находится по ту сторону портала».~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54154 /* ~«Хорошо... А теперь посмотрим, что же находится по ту сторону портала».~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 31.2 33.2 34.3 35.1 39.1 40.2 45.1 46.2 47.3 48.3 49.2 51.1 63.2 64.2 65.4 68.2 72.2 73.3 77.2 81.2 82.2 83.2
  SAY #57448 /* ~«*ШШШШШШ!*» У тебя чуть сердце из груди не выпрыгивает, когда Игнус подлетает на несколько футов в воздух. Его челюсти раскрываются, и из них вырываются огненные языки, похожие на клубок змей. «*ХВАТИТ БОЛТОВНИ И ВОПРОССССОВ! Молчи-и-и...!*»~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Ignus_Coax","GLOBAL",0)
~ THEN REPLY #57449 /* ~«Но я хочу поговорить об огне и горении...»~ */ DO ~SetGlobal("Ignus_Coax","GLOBAL",1)
AddexperienceParty(1500)
~ GOTO 26
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57450 /* ~«Но я хочу поговорить об огне и горении...»~ */ GOTO 27
  IF ~  CheckStatGT(Protagonist,10,CHR)
CheckStatLT(Protagonist,16,INT)
Global("Ignus_Coax","GLOBAL",0)
~ THEN REPLY #57451 /* ~«Но я хочу поговорить об огне и горении...»~ */ DO ~SetGlobal("Ignus_Coax","GLOBAL",1)
AddexperienceParty(1500)
~ GOTO 26
  IF ~  CheckStatGT(Protagonist,10,CHR)
CheckStatLT(Protagonist,16,INT)
Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57452 /* ~«Но я хочу поговорить об огне и горении...»~ */ GOTO 27
  IF ~~ THEN REPLY #57453 /* ~«Ты ОТВЕТИШЬ на мои вопросы. Я тебя освободил, и я могу упечь тебя обратно в твой ад».~ */ GOTO 21
  IF ~~ THEN REPLY #57454 /* ~«Тогда неважно...»~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.4
  SAY #57580 /* ~«*Думаешь, ТЫ сссможешь сссковать Игнусссса?..*» Пламя пляшет вокруг Игнуса как плащ, затем раздувается, будто стремясь приласкать тебя. «*УБИТЬ тебя, превратить тебя в *пепел* может Игнуссссс... покамессст Игнусссс будет сссследовать за тобой... но угрозы... угрозы СССЕРДЯТ Игнусссса...*»~ */
  IF ~~ THEN REPLY #57581 /* ~«На самом деле, ты не сможешь остановить меня, Игнус: ты можешь сжечь меня, но я буду продолжать настигать тебя, пока ты не погаснешь. Так что *покончим* с угрозами...»~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 22
  IF ~~ THEN REPLY #57582 /* ~«Это *ты* так думаешь... мы еще поговорим, Игнус».~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #57583 /* ~Слышится треск, Игнус слегка наклоняет голову вбок, как бы изучая тебя, затем шипит. «*ПЛАМЯ выжжет из тебя бессссссмертие... Ты УЯЗВИМ перед моим огнем...*»~ */
  IF ~~ THEN REPLY #57584 /* ~«Может, ты не понимаешь, что ОЗНАЧАЕТ бессмертие, Игнус...»~ */ DO ~SetAnimState("Ignus",ANIM_MIMESPELL2)
~ GOTO 23
  IF ~~ THEN REPLY #57585 /* ~«Откуда ты узнал, что я бессмертный?»~ */ GOTO 23
  IF ~~ THEN REPLY #57586 /* ~«Это *ты* так думаешь... мы еще поговорим, Игнус».~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #57587 /* ~«*Ты *НЕ* бессссмертный... Игнусссс может тебя УБИТЬ... развеять твой прах по ветру...*» Ты наблюдаешь, как он широко разводит руки, и из него льется ЖАР, настолько мощный, что ты вынужден прикрыть глаза. Слышится мощный РЕВ: воздух обтекает тебя сзади, притянутый Игнусом. ~ */
  IF ~~ THEN REPLY #57588 /* ~«Игнус! Прекрати уг...»~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #57589 /* ~Пока ты пытаешься крикнуть Игнусу остановиться, волна тепла оборачивается вспять, и ожигающая *жара* омывает тебя. Ты чувствуешь, как твоя плоть начинает тлеть, и чувствуешь БОЛЬ... ты стискиваешь зубы и сквозь боль слышишь хихиканье Игнуса... кудахтающий трескучий смех...~ */
  IF ~~ THEN REPLY #57590 /* ~«Игнус!»~ */ DO ~SetGlobal("Ignus_Kill_Nameless","GLOBAL",1)
~ JOURNAL #57591 /* ~Пока я разговаривал с Игнусом, он чуть не спятил до конца... Я пережил его приступ гнева. Есть что-то такое в той стихии, которой он управляет, что наводит меня на мысль, что ему под силу убить меня... навсегда.~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #57603 /* ~Когда ты снова выкрикиваешь его имя, жара спадает. Пощупав лицо руками, ты замечаешь, что кожа обуглилась в местах, где Игнус ее опалил... а сам он жадно наблюдает за тобой. Ты понимаешь, лучше, чем когда-либо, что кем бы *ни был* Игнус, чем бы ни была та сила, которая овладела им, она способна уничтожить тебя: если бы его пламя убило тебя, от тебя бы ничего не осталось.~ */
  IF ~~ THEN REPLY #57605 /* ~«С меня ХВАТИТ, Игнус... Может, ты и способен меня убить, а может, и нет. Хочу это проверить».~ */ GOTO 29
  IF ~~ THEN REPLY #57607 /* ~«Хорошо, Игнус. Мы с тобой еще поговорим об этом позже...»~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 20.0 20.2
  SAY #57608 /* ~Твои слова подобны маслу... Ты наблюдаешь, как они заполняют глаза Игнуса, разжигая в них костры. «*Пламя?*» Игнус медленно опускается, жар вокруг него возрастает, как будто от любопытства. «*Рассссказывай... Игнуссс высссслушшает...*»~ */
  IF ~~ THEN REPLY #57609 /* ~«Игнус, из-за чего ты стал таким?»~ */ GOTO 31
  IF ~  Global("Story_Reekwind_Ignus","GLOBAL",1)
~ THEN REPLY #57610 /* ~«Игнус... это правда, что ты сжег переулок Опасных углов?»~ */ GOTO 36
  IF ~~ THEN REPLY #57612 /* ~«Что ты делал в баре Тлеющий труп?»~ */ GOTO 40
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",1)
~ THEN REPLY #57613 /* ~«Игнус, в Улье я разговаривал с рассказчиком, и он упомянул, что кто-то *обучил* тебя этим вещам... кто это был?»~ */ DO ~SetGlobal("Know_Ignus_Teacher","GLOBAL",2)
AddexperienceParty(6000)
~ GOTO 46
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #57616 /* ~«Игнус, ты УВЕРЕН, что я был твоим учителем?»~ */ GOTO 47
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",0)
~ THEN REPLY #57619 /* ~«Игнус, твое владение Искусством... Ты можешь обучить меня чему-нибудь из него?»~ */ GOTO 63
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57624 /* ~«Игнус, твое владение Искусством... Я готов страдать, чтобы продолжить обучение».~ */ GOTO 65
  IF ~  Class(Protagonist,MAGE)
GlobalGT("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57628 /* ~«Игнус, твое владение Искусством... Я готов страдать, чтобы продолжить обучение».~ */ GOTO 73
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #57630 /* ~«Игнус, насчет твоего обучения и страданий, которые я тебе причинил... Я сожалею».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ignus_1","GLOBALGood",2)
~ GOTO 81
  IF ~~ THEN REPLY #57633 /* ~«Мы позже обсудим пламя, Игнус, — не сейчас».~ */ DO ~SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 28
END

IF ~~ THEN BEGIN 27 // from: 20.1 20.3 28.0 31.1 33.1 34.2 35.0 39.0 40.1 45.0 47.2 48.2 49.1 51.0 63.1 64.1 65.3 68.1 72.1 73.2 77.1 81.1 82.1 83.1
  SAY #57636 /* ~«*Пламя?*» Голос Игнуса потрескивает, будто от любопытства. «*Рассссказывай... Игнуссс высссслушает...*»~ */
  IF ~~ THEN REPLY #57637 /* ~«Игнус, из-за чего ты стал таким?»~ */ GOTO 31
  IF ~  Global("Story_Reekwind_Ignus","GLOBAL",1)
~ THEN REPLY #57639 /* ~«Игнус... это правда, что ты сжег переулок Опасных углов?»~ */ GOTO 36
  IF ~~ THEN REPLY #57641 /* ~«Что ты делал в баре Тлеющий труп?»~ */ GOTO 40
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",1)
~ THEN REPLY #57643 /* ~«Игнус, в Улье я разговаривал с рассказчиком, и он упомянул, что кто-то *обучил* тебя этим вещам... кто это был?»~ */ DO ~SetGlobal("Know_Ignus_Teacher","GLOBAL",2)
AddexperienceParty(6000)
~ GOTO 46
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #57645 /* ~«Игнус, ты УВЕРЕН, что я был твоим учителем?»~ */ GOTO 47
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",0)
~ THEN REPLY #57648 /* ~«Игнус, твое владение Искусством... Ты можешь обучить меня чему-нибудь из него?»~ */ GOTO 63
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57650 /* ~«Игнус, твое владение Искусством... Я готов страдать, чтобы продолжить обучение».~ */ GOTO 65
  IF ~  Class(Protagonist,MAGE)
GlobalGT("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57654 /* ~«Игнус, твое владение Искусством... Я готов страдать, чтобы продолжить обучение».~ */ GOTO 73
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #57656 /* ~«Игнус, насчет твоего обучения и страданий, которые я тебе причинил... Я сожалею».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ignus_1","GLOBALGood",2)
~ GOTO 81
  IF ~~ THEN REPLY #57658 /* ~«У меня больше нет вопросов... Да наполнятся огнем твои сны, Игнус...»~ */ DO ~SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 26.9 27.9
  SAY #57659 /* ~«*НЕТ! ГОВОРИ-И-И!*» — воет Игнус, воздух вокруг тебя снова *дрожит* от значительного количества тепла. «*РАСССКАЖИ О ПЛАМЕНИ! РАССССКАЖИ О ГОРЕНИИ!*»~ */
  IF ~~ THEN REPLY #57660 /* ~«Э... ладно. У меня тут вопросы... насчет огня...»~ */ GOTO 27
  IF ~~ THEN REPLY #57661 /* ~«Нет, Игнус... мы поговорим в другой раз! Не сейчас!»~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 29
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Ignus_Calm_Tale","GLOBAL",0)
~ THEN REPLY #57662 /* ~«Игнус... Ты когда-нибудь *чувствовал*, как горит дом? Языки пламени лижут края балок, обугливая древесину, а жар на глазах отслаивает краску от стен, солома трещит, слышен запах ее горения...»~ */ DO ~SetGlobal("Ignus_Calm_Tale","GLOBAL",1)
AddexperienceParty(1500)
SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 30
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalGT("Ignus_Calm_Tale","GLOBAL",0)
~ THEN REPLY #57663 /* ~«Игнус... Ты когда-нибудь *чувствовал*, как горит дом? Языки пламени лижут края балок, обугливая древесину, а жар на глазах отслаивает краску от стен, солома трещит, слышен запах ее горения...»~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 25.0 28.1 82.0
  SAY #57664 /* ~Игнус взвывает — ужасный *пронзительный* вой, — и вдруг его охватывает огненно-красное свечение. А его глаза... его глаза — словно окна в какое-то другое МЕСТО. Он поднимает руки, вдоль которых потрескивают языки пламени, превращающиеся в огромные огненные хлысты. «*Ты ССССГОРИШЬ!*»~ */
  IF ~~ THEN REPLY #57665 /* ~«Игнус, ты сам *напросился*...»~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.2 28.3
  SAY #57666 /* ~Когда ты произносишь это, треск пламени вокруг тела Игнуса спадает, как будто сам огонь слушается тебя... Когда ты заканчиваешь, Игнус тихонько шипит, и огонь в его глазах угасает, как будто он задумался. «*Да-а-а...*»~ */
  IF ~~ THEN REPLY #57667 /* ~«Тогда поговорим об этом позже, Игнус... а пока успокойся».~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 16.0 26.0 27.0
  SAY #57668 /* ~«*Таким...*» Небольшой волдырь на щеке Игнуса *лопается* и дымящейся струйкой стекает по его челюсти. «*Таким... Игнусссс был всссегда...*»~ */
  IF ~~ THEN REPLY #57669 /* ~«Но... ты похож на человека. Или, по крайней мере, ты выглядишь так, будто когда-то был человеком».~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 32
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57670 /* ~«Я хочу поговорить еще об огне и горении...»~ */ GOTO 27
  IF ~~ THEN REPLY #57671 /* ~«У меня есть другие вопросы к тебе...»~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57672 /* ~«Понятно. Поговорим еще... попозже».~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #57673 /* ~Игнус поворачивается, опустив голову на грудь, его тело медленно вращается над землей... Создается впечатление огненного вихря; потоки тепла от его тела растворяются в окружающем воздухе. «*Всссе еще Игнуссс... всссегда Игнуссс...*»~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57674 /* ~«Я хочу поговорить еще об ог...»~ */ GOTO 33
  IF ~~ THEN REPLY #57675 /* ~«Ладно, неважно. У меня есть другие вопр...»~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 33
  IF ~~ THEN REPLY #57676 /* ~«Понятно. Что ж, пока хватит об э...»~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1 32.2
  SAY #57677 /* ~Только ты раскрываешь рот, как Игнус вдруг налетает на тебя... ты вынужден проглотить слова: жар его пламени накрывает тебя волной. «*Игнуссссом мог бы ссстать ТЫ... исссскры в телах, всссегда готовые проклюнутьсссся...*»~ */
  IF ~~ THEN REPLY #57678 /* ~«Искры в телах? Что ты имеешь в виду?»~ */ DO ~SetAnimState("Ignus",ANIM_MIMESPELL1)
~ GOTO 34
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57679 /* ~«Я хочу поговорить еще об огне и горении...»~ */ GOTO 27
  IF ~~ THEN REPLY #57680 /* ~«У меня есть другие вопросы к тебе...»~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57681 /* ~«Понятно. Поговорим еще... попозже».~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #57682 /* ~«*ВСССЕ горит... внутри...*» Игнус откидывает голову назад и широко разводит руки, по ним пробегают завихрения огня и жара. «*Нужно лишь РАЗЖЕЧЬ огонь, чтобы ссстать Игнуссссом... и ТЫ мог бы ссстать... Игнусссом...*»~ */
  IF ~~ THEN REPLY #57683 /* ~«Вообще-то, когда ты пытаешься разжечь в людях огонь, обычно это заканчивается их смертью».~ */ GOTO 35
  IF ~~ THEN REPLY #57684 /* ~«То есть... ты говоришь, что у каждого есть возможность стать таким, как ты, при наличии правильной... искры?»~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 35
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57685 /* ~«Я хочу поговорить еще об огне и горении...»~ */ GOTO 27
  IF ~~ THEN REPLY #57686 /* ~«У меня есть другие вопросы к тебе...»~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57688 /* ~«Понятно. Поговорим еще... попозже».~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0 34.1
  SAY #57689 /* ~«*Да-а-а...*» — «ухмыляется» Игнус, склонив голову набок, пепел сыпется с его черепа и сметается огненным венком, которые его окружает.~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57690 /* ~«Я хочу поговорить еще об огне и горении...»~ */ GOTO 27
  IF ~~ THEN REPLY #57691 /* ~«У меня есть другие вопросы к тебе...»~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57693 /* ~«Понятно. Поговорим еще... попозже».~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 16.1 26.1 27.1
  SAY #57694 /* ~Лицо Игнуса перекашивается, плоть у кончиков его рта трескается, потом превращается в насмешливые обугленные красно-черные кусочки. «*Да-а-а... ссссон покажет Игнуссс...*»~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57696 /* ~«Может, позже. А пока я хотел бы поговорить больше о гор...»~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 37
  IF ~~ THEN REPLY #57697 /* ~«Э-э... не сейчас. У меня тут другие вопр...»~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 37
  IF ~~ THEN REPLY #57698 /* ~«Я услышал достаточно. Погов...»~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0 36.1 36.2
  SAY #57700 /* ~Из Игнуса вырывается поток огня, и ты отступаешь на шаг; воздух *колышется* от жары. «*Ночью улицы... так холодны... Игнуссс СЖИГАЛ дома с жильцами... всссе БЕЖАЛИ от Игнуссса, огонь, дома как огонь... вопли — жильцы ссстановилисссь ФАКЕЛАМИ...*»~ */
  IF ~~ THEN REPLY #57701 /* ~«Я услышал достаточно, Игн...»~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 38
  IF ~~ THEN REPLY #57703 /* ~Молча слушать, ожидая, пока не утихнет его бормотание.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #57704 /* ~«*Дома — ССССКЕЛЕТЫ... угловатые, тела — ссскелеты... красссные, оранжевые и черные; огонь расссходитьсся, лассскает... ссстолько СССВЕТА...*»~ */
  IF ~~ THEN REPLY #57706 /* ~«Игнус, я услышал ДОСТАТОЧНО...»~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 39
  IF ~~ THEN REPLY #57707 /* ~Молча слушать, ожидая, пока не утихнет его бормотание.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0 38.1
  SAY #57709 /* ~«*Ссс...*» Ярость Игнуса спадает, ореол огня вокруг него немного ослабевает. Похоже, он задумался, быть может, погряз в воспоминаниях. «*Сссс... Игнусссс был доволен...*»~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57710 /* ~«Я хочу поговорить еще об огне и горении...»~ */ GOTO 27
  IF ~~ THEN REPLY #57712 /* ~«У меня к тебе есть другие вопросы, Игнус...»~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57713 /* ~«Понятно. Мы с тобой еще поговорим об этом...»~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 16.2 26.2 27.2
  SAY #57714 /* ~На мгновение тебе кажется, что Игнус тебя не расслышал, но вдруг огонь в его глазах немного меркнет и он издает тихое шипение; зола и пепел танцуют по краям его челюсти. «*Игнуссс... когда-то... НИЧЕГО не знал об огне...*»~ */
  IF ~~ THEN REPLY #57717 /* ~«Да?»~ */ GOTO 41
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57718 /* ~«Я хочу поговорить еще об огне и горении...»~ */ GOTO 27
  IF ~~ THEN REPLY #57719 /* ~«Неважно. У меня есть другие вопросы...»~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57723 /* ~«Неважно, Игнус. Как-нибудь еще поговорим».~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #57725 /* ~«*Когда-то... Игнусссс НИЧЕГО не знал об огне... он зажигал маленькие огни, огоньки, вccспышки... часccтички пламени...*» Игнус снова шипит, пепел и угольки слетают с остатков его рта. «*Огонь росссс... Игнусссс поджигал улицы... и разжигал пламя злобы в сссердцах...*»~ */
  IF ~~ THEN REPLY #57726 /* ~«Да?»~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 42
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57727 /* ~«Я хочу поговорить еще об огне и горении...»~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 42
  IF ~~ THEN REPLY #57729 /* ~«Неважно. У меня есть другие вопросы...»~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 42
  IF ~~ THEN REPLY #57730 /* ~«Неважно, Игнус. Как-нибудь еще поговорим».~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0 41.1 41.2 41.3
  SAY #57733 /* ~Похоже, Игнус не слышит тебя... Он будто попал в другое место, оживив воспоминания своими словами... Против своей воли ты умолкаешь и вслушиваешься.~ */
  IF ~~ THEN DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #57734 /* ~«*Они пыталисссь наказать Игнусссса, мошкара из Улья. Они хотели ССССЖЕЧЬ Игнусссса посссле того, как Игнусссс поджег их улицы... ученички магов, захудалые волшебники, рунные заклинатели... исссскорки магии заявилисссь, чтобы ПОКАРАТЬ Игнусссса за то, что обидел их близких... они приговорили Игнуссса ГОРЕТЬ, сссделали из Игнусссса ФАКЕЛ, шипящее ПЛАМЯ, огонь, огонь... Это ПРАВОССССУДИЕ, говорили они...*»~ */
  IF ~~ THEN DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #57736 /* ~«*Правоссссудие...*» Ты завороженно наблюдаешь, как Игнус снова начинает медленно вращаться, как раньше, над решеткой в Тлеющем трупе. *»Но это был не приговор... огня и боли так много, что боли НЕТ... Есссть ССССВЕТ и ТЕПЛО, и плоть ссстекает как ВОСССК по моим коссстям... и впервые... Игнусссс был ДОВОЛЕН...*»~ */
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #57738 /* ~Игнус перестает вращаться, его взгляд падает на тебя. При этом огни в его глазах вспыхивают, лицо расплывается в опаленной улыбке, кожа трещит и лопается, плавясь и стекая по лицу. У него лицо всех преисподней, огненное лицо; его следующие слова звучат как смертный приговор, не только для тебя, но и для всех остальных. «*Когда планы загорятссся и вссссе ссстанут факелами, Игнусссс, наконец... обретет мир...*»~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57739 /* ~«Я хотел бы поговорить еще об огне и горении, Игнус...»~ */ GOTO 27
  IF ~~ THEN REPLY #57740 /* ~«Понятно... У меня есть другие вопросы...» ~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57741 /* ~Предоставить Игнуса его мыслям об огне...~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 16.3 26.3 27.3
  SAY #57743 /* ~«*Как учить и учитьссся, знаешь ты...*» Изо рта у Игнуса вылетают сгустки пламени — ужасное подобие смеха. «*Ты ВССССЕГДА учил Игнусссса... УЧИТЕЛЕМ Игнуссса ты *был**».~ */
  IF ~~ THEN REPLY #57744 /* ~«Я? Ты *уверен*?..»~ */ JOURNAL #57592 /* ~Игнус утверждает, что я — его учитель, который обучил его Искусству. Он говорит, что это единственная причина, по которой он мне подчиняется...~ */ GOTO 47
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57745 /* ~«Я хотел бы поговорить еще об огне и горении, Игнус...»~ */ GOTO 19
  IF ~~ THEN REPLY #57747 /* ~«Понятно... У меня есть другие вопросы...» ~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57748 /* ~«Неважно, Игнус... поговорим об этом позже».~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 16.4 26.4 27.4 46.0
  SAY #57751 /* ~Игнус *понижает* тон, треск пламени стихает. «*Да-а-а... это единсссственная причина, почему... Игнуссссс... ПОДЧИНЯЕТСССЯ тебе... — огонь вокруг него поднимается трескучей спиралью. — Пока СССМЕРТЬ не придет к нам обоим... сказал ты МНЕ... сссвоему ученику Игнуссссу... Игнусссс НЕ ЗАБЫЛ... Учитель...*»~ */
  IF ~~ THEN REPLY #57753 /* ~«Игнус... Должно быть, прошло немало времени с тех пор, как ты изучал Искусство... Ты точно уверен, что это был я?»~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 48
  IF ~~ THEN REPLY #57754 /* ~«Игнус, раз я был твоим 'учителем'... ты можешь что-нибудь вспомнить обо мне?»~ */ GOTO 50
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57755 /* ~«Я хотел бы поговорить еще об огне и горении, Игнус...»~ */ GOTO 27
  IF ~~ THEN REPLY #57757 /* ~«Понятно... У меня есть другие вопросы...» ~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57759 /* ~«Неважно, Игнус... поговорим об этом позже».~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #57760 /* ~«*Да-а-а... — Игнус хихикает. — Да-а-а-а... Лицо изменилосссссь... но много уроков ты преподал Игнуссссу...*»~ */
  IF ~~ THEN REPLY #57761 /* ~«Раз мое лицо изменилось, как ты меня узнал?»~ */ GOTO 49
  IF ~~ THEN REPLY #57763 /* ~«Игнус... это важно. Ты можешь что-нибудь вспомнить обо мне?»~ */ GOTO 50
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57764 /* ~«Я хотел бы поговорить еще об огне и горении, Игнус...»~ */ GOTO 27
  IF ~~ THEN REPLY #57765 /* ~«Понятно... У меня есть другие вопросы...» ~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57766 /* ~«Неважно, Игнус... мы еще поговорим об этом позже».~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #57768 /* ~«*Во вссссем ессссть... крохотные огоньки... ИССССКРЫ, огонь — одно и ТО ЖЕ... неважно, что за кожа у тебя... кожа может лишитьсссся крови... кожа может ссссгореть... но ВНУТРЕННИЙ огонь осссстанется...*»~ */
  IF ~~ THEN REPLY #57769 /* ~«Игнус... это важно. Ты можешь что-нибудь вспомнить обо мне?»~ */ GOTO 50
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57771 /* ~«Я хотел бы поговорить еще об огне и горении, Игнус...»~ */ GOTO 27
  IF ~~ THEN REPLY #57773 /* ~«Понятно... У меня есть другие вопросы...» ~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57775 /* ~«Неважно, Игнус... поговорим об этом позже».~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 47.1 48.1 49.0
  SAY #57776 /* ~Игнус шипит... на какое-то мгновение в его *лице* что-то показывается. Сперва тебе кажется, что это огонь, но это не он... Это тень *воспоминания*...~ */
  IF ~~ THEN REPLY #57777 /* ~Предаться воспоминанию.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
PlaySoundNotRanged("SPTR_01")
~ GOTO 52
  IF ~~ THEN REPLY #57778 /* ~Стряхнуть воспоминание.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1 52.1 53.1 54.1 55.1 56.1 57.1 58.1 59.1 60.1 61.1 62.0 62.1 62.2
  SAY #57779 /* ~Твой взор проясняется; воспоминание уносится прочь как дым. Игнус завис над тобой, его голова склонена набок, лицо перекошено в безумной почерневшей ухмылке... «*Учитель... Игнусссс НЕ ЗАБЫЛ твои учения...*»~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57780 /* ~«Я хотел бы поговорить еще об огне и горении, Игнус...»~ */ GOTO 27
  IF ~~ THEN REPLY #57781 /* ~«Понятно... У меня есть другие вопросы...» ~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57782 /* ~«Неважно, Игнус... поговорим об этом позже».~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 50.0
  SAY #57783 /* ~Треск пламени Игнуса стихает, уменьшаясь, в то время как обгоревшие кости Игнуса скрючиваются и замирают, превратившись в стопку поленьев в огромном железном камине... Ты глядишь в огонь, ярко пылающий в сводчатом помещении. Пламя трещит и выплевывает угольки на каменный пол; над камином витают пылинки. Из темноты за твоей спиной до тебя доносится тихое скрипучее дыхание. ~ */
  IF ~~ THEN REPLY #57784 /* ~Воспоминание: «Я тебя *слышу*... Выйди на свет».~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 53
  IF ~~ THEN REPLY #57785 /* ~Стряхнуть воспоминание.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #57786 /* ~Слышится шарканье сандалий, и к камину подходит хилый юноша. Его большие черные глаза ловят отражения огня. Он взволнован: ты слышишь, как он трясется, и голос у него дрожит. Это лишь усиливает твое раздражение. «Простите мне мое вторжение, учитель. Я...»~ */
  IF ~~ THEN REPLY #57787 /* ~Воспоминание: «Ты *уже* вторгся, проситель. И не просто так. Я выслушаю тебя, а затем ты предоставишь меня моим размышлениям».~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 54
  IF ~~ THEN REPLY #57788 /* ~Стряхнуть воспоминание.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #57789 /* ~Мальчишка делает глубокий вздох и бросает взгляд на пламя. «Учитель, мне... вчера снова снился огонь... он был как настоящий, а вы велели прийти, если...»~ */
  IF ~~ THEN REPLY #57790 /* ~Воспоминание: «Это был всего лишь *сон*. А теперь ступай». ~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 55
  IF ~~ THEN REPLY #57791 /* ~Стряхнуть воспоминание.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #57792 /* ~Мальчишка не сходит с места. С хмурым выражением лица он медленно показывает свои руки. Кожа на пальцах... почернела, обгорела.~ */
  IF ~~ THEN REPLY #57793 /* ~Воспоминание: «Как ты обжег себе руки, проситель?» ~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 56
  IF ~~ THEN REPLY #57794 /* ~Стряхнуть воспоминание.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #57795 /* ~«Я проснулся и мои руки были как пепел». Мальчишка встречается с тобой взглядом. Он все еще слабо дрожит, но рвение в его голосе начинает тебя злить. «Мне снилось, что я парил над землей; небо и земля были в огне. Сам мир был таким ярким, что было... больно на него смотреть, учитель. А когда я проснулся, мои руки... они были обожжены, как будто я держал в руках огонь».~ */
  IF ~~ THEN REPLY #57796 /* ~Воспоминание: «Ты лжешь, проситель. Ты пришел ко мне с выдумкой и теперь рискуешь *разозлить* меня». ~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 57
  IF ~~ THEN REPLY #57797 /* ~Стряхнуть воспоминание.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #57798 /* ~«Нет, учитель...» Лицо мальчишки блестит от пота — блеск страха. «Нет, честное слово, это не так!»~ */
  IF ~~ THEN REPLY #57799 /* ~Воспоминание: «Ты обжегся свечой. Или сунул руку в один из погребальных костров в Склепе источников. А теперь пришел ко мне и рассказываешь, что тебя обжег сон. Я устал от твоего вранья».~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 58
  IF ~~ THEN REPLY #57800 /* ~Стряхнуть воспоминание.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #57801 /* ~Мальчишка умолкает и, к твоему удивлению, его лицо перекашивает от гнева. «Нет, я не вру. Это *сон* меня обжег, учитель. Вы же сами говорили, что так может случиться, если мы почувствуем проблески силы. Это были *ваши* слова, и я пришел *повторить* их вам и сказать, что это *правда*, — он поднимает руки. — Поглядите, учитель...»~ */
  IF ~~ THEN REPLY #57802 /* ~Воспоминание: Схватить его за руки.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 59
  IF ~~ THEN REPLY #57803 /* ~Стряхнуть воспоминание.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #57804 /* ~Прежде чем мальчишка успел среагировать, твоя рука, огромная в сравнении, выстреливает и хватает его опаленные руки; паренек вскрикивает, вызывая эхо в помещении. Усмехаясь, ты швыряешь его на пол перед камином. Его колени с резким треском ударяются о плиты.~ */
  IF ~~ THEN REPLY #57805 /* ~Воспоминание: «Посмотри на это пламя, проситель! Подними голову, взгляни!» ~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 60
  IF ~~ THEN REPLY #57806 /* ~Стряхнуть воспоминание.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #57807 /* ~Мальчишка вздрагивает от боли в коленях... Ты видишь, что его глаза заволокли слезы, когда он поднимает голову, чтобы посмотреть в камин. Пламя бросает на его лицо мрачные красные отблески...~ */
  IF ~~ THEN REPLY #57808 /* ~Воспоминание: «Ты *это* хочешь взять, проситель? Твое сердце трепещет от вида пламени? Знай: пламя может ожечь. Изучая его силу, тебе придется страдать от его прикосновения».~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 61
  IF ~~ THEN REPLY #57809 /* ~Стряхнуть воспоминание.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #57810 /* ~Мальчик молчит, глядя в пламя. Он словно заворожен. Его слезы высохли в тепле, он больше не дрожит. Он сосредоточился на огне. Он НЕ СЛУШАЕТ тебя, и ты чувствуешь, как тебя захлестывает ярость.~ */
  IF ~~ THEN REPLY #57811 /* ~Воспоминание: «Если то, что тебя гложет, стало для тебя достаточной причиной, чтобы *прервать* мою медитацию, то я обучу тебя владению огнем, проситель». ~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 62
  IF ~~ THEN REPLY #57812 /* ~Стряхнуть воспоминание.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #57814 /* ~Ты кидаешься и хватаешь мальчишку за запястье. Он воет, а ты подтаскиваешь его к камину, затем суешь его руки в угли. Слышен треск, шипение горящей плоти и его *крики*, такие ужасные, и все же...~ */
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",0)
~ THEN REPLY #57815 /* ~Воспоминание: «Чтобы научиться, тебе придется *страдать*, проситель. Тебе придется позволить силе, которой ты обладаешь, обжечь тебя. Познай ее пытки — и ты поймешь, как обращать ее против твоих врагов».~ */ DO ~SetGlobal("Memory_Ignus_Taught","GLOBAL",1)
GiveExperience(Protagonist,10000)
SetAnimState("Ignus",ANIM_MIMETALK1)
~ JOURNAL #57818 /* ~У меня было четкое воспоминание, в котором я видел встречу Игнуса с его «учителем». Похоже, что... когда-то в прошлом... *я* был тем, что обучил его Искусству, хотя мне кажется, что Игнус научился от меня не тому, чему надо.~ */ GOTO 51
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #57816 /* ~Воспоминание: «Чтобы научиться, тебе придется *страдать*, проситель. Тебе придется позволить силе, которой ты обладаешь, обжечь тебя. Познай ее пытки — и ты поймешь, как обращать ее против твоих врагов».~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
  IF ~~ THEN REPLY #57817 /* ~Стряхнуть воспоминание.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 63 // from: 16.5 26.5 27.5
  SAY #57819 /* ~«*Сссс... Игнусссс когда-то *много* знал... но не теперь... Игнусссс горит... в ссстраданиях, Игнусссс учитсссся...*» Из его рта вырывается небольшая вспышка огня и поток угольков — нечто вроде смеха. «*Сссстрадай... учиссссь...*»~ */
  IF ~~ THEN REPLY #57820 /* ~«Я готов страдать за эти знания...»~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 64
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57821 /* ~«Я хотел бы поговорить еще об огне и горении, Игнус...»~ */ GOTO 27
  IF ~~ THEN REPLY #57822 /* ~«Понятно... У меня есть другие вопросы...» ~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57823 /* ~«Может, в другой раз, Игнус... Мы можем поговорить об этом позже».~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #57824 /* ~Не успев сказать эти слова, ты ощущаешь покалывание в затылке... и вдруг тебя осеняет, что знания, которые может дать Игнус, могут навсегда ранить тебя... но ты не знаешь, *откуда* тебе это известно.~ */
  IF ~~ THEN REPLY #57825 /* ~Повторить: «Я готов страдать за эти знания...»~ */ GOTO 65
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57826 /* ~«Я хотел бы поговорить еще об огне и горении, Игнус...»~ */ GOTO 27
  IF ~~ THEN REPLY #57827 /* ~«Понятно... У меня есть другие вопросы...» ~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57828 /* ~«Может, в другой раз, Игнус... Мы можем поговорить об этом позже».~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 16.6 26.6 27.6 64.0 68.0
  SAY #57829 /* ~«*Сссстрадать...?*» В уголках рта Игнуса ярко сверкают языки пламени, пробегая вверх по расплавленным остатка его лица. «*Жечь? Чассстички тебя сссгорели... ссссс... Игнуссс... Игнуссс вссссе же может *КОЕ-ЧЕМУ* научить*».~ */
  IF ~  Global("Ignus_Teach","GLOBAL",0)
~ THEN REPLY #57830 /* ~«Я хочу учиться, Игнус... Ты можешь обучить меня Искусству?»~ */ DO ~SetGlobal("Ignus_Teach","GLOBAL",1)
SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 66
  IF ~  Global("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57831 /* ~«Я хочу учиться, Игнус... Ты можешь продолжить обучать меня Искусству?»~ */ DO ~SetGlobal("Ignus_Teach","GLOBAL",2)
SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 69
  IF ~  GlobalGT("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57832 /* ~«Я хочу учиться, Игнус... Ты можешь продолжить обучать меня Искусству?»~ */ GOTO 73
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57833 /* ~«Я хотел бы поговорить еще об огне и горении, Игнус...»~ */ GOTO 27
  IF ~~ THEN REPLY #57834 /* ~«Понятно... У меня есть другие вопросы...» ~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57835 /* ~«Может, в другой раз, Игнус... Мы можем поговорить об этом позже».~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #57836 /* ~«*Там, где когда-то горело пламя, можно разжечь его сссснова...*» Прежде чем ты успеваешь отреагировать, Игнус выбрасывает свою когтистую руку и хватает тебя за палец. С жадным *хссссс* он СЖИГАЕТ его, и ты, охваченный жгучей болью, закрываешь глаза и КРИЧИШЬ...~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,1)
PermanentStatChange(Protagonist,RESISTMAGICFIRE,RAISE,3)
PermanentStatChange(Protagonist,RESISTFIRE,RAISE,3)
GiveExperience(Protagonist,6000)
~ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #57837 /* ~Ты с усилием открываешь глаза и видишь обожженную массу, оставшуюся от твоей руки там, где Игнус коснулся ее... Он безразлично парит вверху, бережно удерживая твой палец, затем *отламывает* кончик, оставив лишь основание. Он *шипит*, из его рта вылетают угольки и пепел, затем бросает тебе обугленные остатки твоего пальца. ~ */
  IF ~~ THEN REPLY #57838 /* ~«Эрххх... что... ты... наделал?..»~ */ DO ~GiveItemCreate("Ignus01",Protagonist,1,0,0)
SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ JOURNAL #57839 /* ~Игнус «обучил» меня кое-чему из Искусства, отломав мне палец, спалив его до кости, а затем вернув его мне... Кажется, он думает, что я знаю, что с ним делать. Пройдя через испытание, я, кажется, получил какой-то невосполнимый урон своему здоровью, однако мое сопротивление огню увеличилось. Несмотря на муки, похоже, что мой палец снова отрастает, так что это не должно сказаться на моих бойцовских или чародейских способностях.~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #57840 /* ~«*Обучение...*» — хихикает Игнус. Теперь этот звук почему-то отдается болью в твоих ушах. «*Чтобы учитьсссся, придетсссся сссстрадать*».~ */
  IF ~~ THEN REPLY #57841 /* ~«Я... хочу... продолжить... обучение...»~ */ GOTO 65
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57842 /* ~«Я... хотел бы... поговорить еще... немного о пламени и горении, Игнус...»~ */ GOTO 27
  IF ~~ THEN REPLY #57843 /* ~«Понятно... У меня... есть... другие вопросы...»~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57844 /* ~«Хватит... Игнус... мы еще поговорим позже».~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 65.1
  SAY #57845 /* ~«*Да-а-а-а...*» Прежде чем ты успеваешь отреагировать, Игнус выбрасывает свою когтистую клешню и хватает тебя за левую руку. С жадным *хссссс* он СЖИГАЕТ ее, и ты, охваченный жгучей болью, закрываешь глаза и КРИЧИШЬ...~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,3)
PermanentStatChange(Protagonist,RESISTMAGICFIRE,RAISE,5)
PermanentStatChange(Protagonist,RESISTFIRE,RAISE,5)
GiveExperience(Protagonist,12000)
~ GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY #57846 /* ~Ты с усилием открываешь глаза и видишь обожженную массу, оставшуюся от твоей руки там, где Игнус коснулся ее... осталась только подергивающаяся обугленная *культя*, из которой фонтаном бьет кровь. Похоже, что Игнус слеп к твоей боли: его внимание приковано к твоей оторванной руке, которую он держит, любуясь ею как трофеем.~ */
  IF ~~ THEN REPLY #57847 /* ~«Иг... нус... ВЕРНИ... мне... мою... руку...»~ */ GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #57848 /* ~Игнус не обращает на тебя внимания. Ты видишь, как пламя его рук окружает твою оторванную руку, подобно ореолу, медленно, подобно скульптору, выжигая всю оставшуюся плоть, покуда не остается лишь оплавленная кость. Он издает долгое низкое шипение, затем швыряет тебе свое «творение». Тебе удается поймать его оставшейся рукой. Ты замечаешь, что плоть твоей оторванной руки восстанавливается, медленно и болезненно... кажется, она отрастает заново.~ */
  IF ~~ THEN REPLY #57849 /* ~«Что ты... наделал...»~ */ DO ~GiveItemCreate("Ignus04",Protagonist,1,0,0)
SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ JOURNAL #57850 /* ~Игнус «обучил» меня кое-чему из Искусства, спалив и оторвав мою руку: он выжег на ней плоть, затем вернул ее мне... Кажется, он думает, что я знаю, что с ней делать. Пройдя через испытание, я, кажется, получил какой-то невосполнимый урон своему здоровью, однако мое сопротивление огню увеличилось. Несмотря на муки, похоже, что моя рука отрастает обратно, так что это не должно сказаться на моих бойцовских или чародейских способностях.~ */ GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #57851 /* ~«*Обучение...*» — хихикает Игнус. Теперь этот звук почему-то отдается болью в твоих ушах. «*Чтобы учитьсссся, придетсссся сссстрадать*».~ */
  IF ~~ THEN REPLY #57852 /* ~«Я... хочу... продолжить... обучение...»~ */ GOTO 73
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57853 /* ~«Я... хотел бы... поговорить еще... немного о пламени и горении, Игнус...»~ */ GOTO 27
  IF ~~ THEN REPLY #57854 /* ~«Понятно... У меня... есть... другие вопросы...»~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57855 /* ~«Хватит... Игнус... мы еще поговорим позже».~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 16.7 26.7 27.7 65.2 72.0 77.0 83.0
  SAY #57856 /* ~«*Сссс... — Игнус подбрасывает себя в воздух, оставляя за собой шипящий огненный след. — Хватит! Кусочки сссожжены... ссссс... Игнуссс... Игуссссу больше нечему тебя обучить*».~ */
  IF ~  PartyHasItem("Eyeball")
Global("Ignus_Teach","GLOBAL",2)
~ THEN REPLY #57857 /* ~«Чтобы обучить меня, тебе нужна моя часть? Как насчет моего глаза?»~ */ DO ~SetGlobal("Ignus_Teach","GLOBAL",3)
GiveExperience(Protagonist,12000)
SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 74
  IF ~  PartyHasItem("Intest")
~ THEN REPLY #57858 /* ~«Чтобы обучить меня, тебе нужна моя часть? Как насчет этого мотка моих кишок?»~ */ DO ~DestroyPartyItem("Intest",TRUE)
GiveExperience(Protagonist,24000)
SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 78
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57859 /* ~«Хорошо. Я хотел бы поговорить еще немного об огне и горении, Игнус...»~ */ GOTO 27
  IF ~~ THEN REPLY #57860 /* ~«Понятно... У меня есть другие вопросы...» ~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57861 /* ~«Тогда забудь об этом, Игнус... Мы еще поговорим позже».~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #57862 /* ~Игнус снова выбрасывает руку, его палец подобен копью... но он попадает не в тот глаз, который ты можешь вынимать. Вместо этого он протыкает ДРУГОЙ глаз... На миг ты не чувствуешь боли, только удивление. затем ты начинаешь *кричать*, когда Игнус выпускает в твою глазницу поток пламени. Оно, казалось бы, вгрызается в твой череп... шипение горящей плоти заполняет твои ноздри, дым заволакивает твой взор...~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,2)
PermanentStatChange(Protagonist,RESISTMAGICFIRE,RAISE,3)
PermanentStatChange(Protagonist,RESISTFIRE,RAISE,3)
~ GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #57863 /* ~Ты с трудом открываешь глаза и сквозь кровавую пелену — ОДНИМ открытым глазом — едва различаешь, как Игнус, зависнув перед тобой в воздухе, держит в сложенных ковшом ладонях небольшой огненный шарик, твой глаз: кажется, он не пострадал от жары. Пока ты смотришь, его руки закрывают глаз, и ты вновь ощущаешь жгучую боль в глазнице...~ */
  IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY #57864 /* ~И вдруг, даже сквозь жгучую боль, ты снова начинаешь видеть четко... Игнус открывает ладонь, и в ней ты находишь то, что осталось от твоего глаза, теперь едва напоминающее его... тем не менее... твой глаз все еще в глазнице. Он хихикает, и от огненного выдоха глаз слетает с его ладони и подлетает к тебе, подобно хлопьям пепла в воздухе.~ */
  IF ~~ THEN REPLY #57865 /* ~Взять глаз... твой глаз...~ */ DO ~GiveItemCreate("Ignus02",Protagonist,1,0,0)
~ JOURNAL #57866 /* ~Игнус «обучил» меня кое-чему из Искусства, опалив мой глаз, а затем вернув его мне... Похоже, он думает, что я знаю, что с ним делать. Пройдя через испытание, я, кажется, получил какой-то невосполнимый урон своему здоровью, однако мое сопротивление огню увеличилось. Временами мне хочется, чтобы Игнус пользовался ЧЕРТОВЫМИ СВИТКАМИ вместо своих пыток... По крайней мере, я все еще вижу своим глазом.~ */ GOTO 77
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #57867 /* ~Крохотные язычки пламени вьются в разрушенных глазницах Игнуса, двигаясь вверх через его обугленный череп. «*Больше обучения...*» Два языка пламени обвивают его, затем вспыхивают факелами в его руках. «*Больше сссстраданий...*»~ */
  IF ~~ THEN REPLY #57868 /* ~«Я готов страдать за новые знание... Ты можешь научить меня чему-нибудь еще?»~ */ GOTO 73
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57869 /* ~«Я хотел бы поговорить еще об огне и горении, Игнус...»~ */ GOTO 27
  IF ~~ THEN REPLY #57870 /* ~«Понятно... У меня есть другие вопросы...» ~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57871 /* ~«Пожалуй... спасибо, Игнус. Мы еще поговорим позже».~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 73.1
  SAY #57872 /* ~Ты показываешь свои внутренности; Игнус запрокидывает голову, потом вдруг падает и выхватывает их у тебя из рук. Он натягивает их между руками как веревку и шипит себе под нос... ты видишь, как кишки начинают испарятся в его руках, чернея... и чувствуешь глухую жгучую боль в животе...~ */
  IF ~~ THEN DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.0
  SAY #57873 /* ~Игнус разматывает внутренности, пядь за пядью, и каждый моток, падая с его рук, начинает вращаться вокруг него по спирали, медленно извиваясь. Каждый моток зажаривается в его пламени: огонь будто облизывает внутренности в каком-то танце, медленно покрывая копотью их до тех пор, пока они не становятся похожими на длинную ленту обугленного мяса...~ */
  IF ~~ THEN DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79.0
  SAY #57874 /* ~При виде собственных горящих внутренностей ты вздрагиваешь, но это ничто в сравнении с болью, которую ты испытывал, когда Игнус сжигал другие части твоего тела. Ты наблюдаешь, как твои горящие кишки вьются в пламени Игнуса, но тут они гаснут и падают Игнусу в руки. Он издает шипение и бросает их тебе. «*МНОГО ссссилы в органах бессссссмертного...*»~ */
  IF ~~ THEN REPLY #57875 /* ~Взять опаленные внутренности...~ */ DO ~GiveItemCreate("Ignus03",Protagonist,1,0,0)
~ JOURNAL #57876 /* ~Игнус «обучил» меня кое-чему из Искусства, опалив мои внутренности и вернув их мне... Похоже, он думает, что я знаю, что с ними делать. В отличие от других пыток, я, кажется, не пострадал, когда Игнус «обрабатывал» мои внутренности огнем.~ */ GOTO 83
END

IF ~~ THEN BEGIN 81 // from: 16.8 26.8 27.8
  SAY #57877 /* ~«*Пламя... без... мучений...*» Игнус медленно поворачивается, вращаясь над землей; может, он тебя и услышал, но ты не уверен, *значат* ли что-нибудь для него твои слова...~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #57878 /* ~«Ты уверен, проситель?»~ */ DO ~SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 82
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57879 /* ~«Я хотел бы поговорить еще об огне и горении, Игнус...»~ */ GOTO 27
  IF ~~ THEN REPLY #57880 /* ~«По крайней мере, я попытался... Игнус, у меня есть к тебе другие вопросы...»~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57881 /* ~«Что ж, не знаю, насколько это важно для тебя, Игнус, но мне жаль, что ты закончил вот так... поговорим об этом позже».~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY #57882 /* ~Игнус внезапно останавливается и бросается на тебя, из его груди и черепа со страшным треском рождается *новое* пламя... словно из скрытой полости в теле Игнуса вдруг вырвался клубок огненных змей. «*БОЛЬШЕ не проссситель Игнусссс!.. Еще раз так сссскажешь — Игнусссс тебя СССОЖЖЕТ!*»~ */
  IF ~~ THEN REPLY #57883 /* ~«Попробуй, *проситель*. Похоже, придется напомнить тебе твое место...»~ */ GOTO 29
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57884 /* ~«Тогда неважно. Я хотел бы поговорить еще об огне и горении...»~ */ GOTO 27
  IF ~~ THEN REPLY #57885 /* ~«Понятно... У меня есть другие вопросы...»~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57886 /* ~«Тогда забудь об этом, Игнус... Мы еще поговорим позже».~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from: 80.0
  SAY #57887 /* ~Ты держишь в руке свои обожженные внутренности; они похожи на почерневшую веревку. Игнус парит над тобой, с его горящего истощенного торса слетают крохотные частички пепла.~ */
  IF ~~ THEN REPLY #57888 /* ~«Я готов страдать за новые знание... Ты можешь научить меня чему-нибудь еще?»~ */ GOTO 73
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57889 /* ~«Я хотел бы поговорить еще об огне и горении, Игнус...»~ */ GOTO 27
  IF ~~ THEN REPLY #57890 /* ~«Понятно... У меня есть другие вопросы...» ~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57891 /* ~«Спасибо, Игнус... поговорим об этом позже».~ */ EXIT
END

IF ~  GlobalGT("Ignus","GLOBAL",1)
!InParty("Ignus")
Global("Party_Ignus_Waiting_VO","GLOBAL",1)
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 84 // from:
  SAY #61827 /* ~Пламя обвивает горло Игнуса и танцует по краям его черепа. Его опаленные губы размыкаются и он произносит потрескивающим голосом: «Я... жду».~ [IGN148] */
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",0)
~ THEN REPLY #61828 /* ~«Игнус, мне нужна твоя помощь».~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 15
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",1)
~ THEN REPLY #61829 /* ~«Игнус, мне нужна твоя помощь».~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 86
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",2)
~ THEN REPLY #61830 /* ~«Игнус, мне нужна твоя помощь».~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 87
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",3)
~ THEN REPLY #61831 /* ~«Игнус, мне нужна твоя помощь».~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 88
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",4)
~ THEN REPLY #61832 /* ~«Игнус, мне нужна твоя помощь».~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 89
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",5)
~ THEN REPLY #61833 /* ~«Игнус, мне нужна твоя помощь».~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 90
  IF ~~ THEN REPLY #61834 /* ~«Э-э... Ясно. Тогда прощай».~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
~ EXIT
END

IF ~  GlobalGT("Ignus","GLOBAL",1)
!InParty("Ignus")
Global("Party_Ignus_Waiting_VO","GLOBAL",2)
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 85 // from:
  SAY #61835 /* ~Когда ты подходишь, Игнус издает протяжное трескучее шипение.«Я жду, чтобы всссстать на путь огня».~ [IGN149] */
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",0)
~ THEN REPLY #61836 /* ~«Игнус, мне нужна твоя помощь».~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 15
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",1)
~ THEN REPLY #61837 /* ~«Игнус, мне нужна твоя помощь».~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 86
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",2)
~ THEN REPLY #61838 /* ~«Игнус, мне нужна твоя помощь».~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 87
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",3)
~ THEN REPLY #61839 /* ~«Игнус, мне нужна твоя помощь».~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 88
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",4)
~ THEN REPLY #61840 /* ~«Игнус, мне нужна твоя помощь».~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 89
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",5)
~ THEN REPLY #61841 /* ~«Игнус, мне нужна твоя помощь».~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 90
  IF ~~ THEN REPLY #61842 /* ~«Э-э... Ясно. Тогда прощай».~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 86 // from: 14.1 84.1 85.1
  SAY #61843 /* ~Слышен треск и хлопки плавящейся плоти, после чего Игнус издает протяжное низкое шипение. «Как ссскажешь».~ [IGN106] */
  IF ~~ THEN REPLY #61844 /* ~«Вперед».~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 87 // from: 14.2 84.2 85.2
  SAY #61845 /* ~Игнус клацает зубами, из его рта вырывается поток угольков. «Пламя пронессссется по улицам».~ [IGN077] */
  IF ~~ THEN REPLY #61846 /* ~«Вперед».~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 88 // from: 14.3 84.3 85.3
  SAY #61847 /* ~Частички пепла слетают со рта Игнуса, когда тот кивает. «Игнус слушаетсссся...»~ [IGN101] */
  IF ~~ THEN REPLY #61848 /* ~«Вперед».~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 89 // from: 14.4 84.4 85.4
  SAY #61849 /* ~Игнус говорит тихо, при этом огоньки вокруг его разрушенного лица угасают. «Я пойду путем пламени сссс тобой».~ [IGN151] */
  IF ~~ THEN REPLY #61850 /* ~«Вперед».~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 90 // from: 14.5 84.5 85.5
  SAY #61851 /* ~Изо рта Игнуса вырывается язык пламени, прямо как у змеи, и превращается в шипящий дым, от которого остаются лишь крохотные хлопья пепла. «Да-а-а».~ [IGN191A] */
  IF ~~ THEN REPLY #61852 /* ~«Вперед».~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",0)
~ EXIT
END

IF ~  Global("Fortress_Ignus","GLOBAL",3)
~ THEN BEGIN 91 // from:
  SAY #68216 /* ~Игнус шевелится, воздух вокруг него вздрагивает — как раз настолько, чтобы вернуть его к жизни.~ */
  IF ~  Global("Absorb","GLOBAL",0)
~ THEN REPLY #68218 /* ~«Встань, Игнус. Ты мне нужен».~ */ DO ~SetGlobal("Fortress_Ignus","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 92
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68387 /* ~ВСТАНЬ, ИГНУС.~ */ GOTO 93
END

IF ~~ THEN BEGIN 92 // from: 91.0
  SAY #68217 /* ~Поднимается пламя и жар. Игнус воспаряет в воздух, который *дрожит* от исходящей от него теплоты. Он поворачивается к тебе; его глаза подобны порталам в ад. «*Я твой... покуда смерть не придет к нам обоим*».~ [IGN248] */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68219 /* ~«Возможно, этот день настал, Игнус...»~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68220 /* ~«Возможно, этот день настал, Игнус...»~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68221 /* ~«Возможно, этот день настал, Игнус...»~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68243 /* ~«Возможно, этот день настал, Игнус...»~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",1)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68441 /* ~«Возможно, этот день настал, Игнус...»~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 93 // from: 91.1
  SAY #68388 /* ~Поднимается пламя и жар. Игнус воспаряет в воздух, который *дрожит* от исходящей от него теплоты. Он поворачивается к тебе; его глаза подобны порталам в ад. Он издает тихое протяжное шипение... но в нем нет угрозы, лишь осторожность, которой ты раньше не замечал.~ */
  IF ~~ THEN REPLY #68389 /* ~Я СКОРО ПОКИНУ ЭТО МЕСТО, ИГНУС. Я ВЕРНУ ТЕБЯ В СИГИЛ, ЕСЛИ ХОЧЕШЬ.~ */ GOTO 94
END

IF ~~ THEN BEGIN 94 // from: 93.0
  SAY #68390 /* ~Игнус пристально смотрит на тебя. Из-за повреждений невозможно прочесть выражение его лица... И вдруг ты осознаешь, чего жаждет Игнус.~ */
  IF ~  GlobalGT("Memory_Ignus_Taught","GLOBAL",0)
~ THEN REPLY #68391 /* ~Я ПОШЛЮ ТЕБЯ НА СТИХИЙНЫЙ ПЛАН ОГНЯ, ИГНУС. ТАМ ТЫ БУДЕШЬ ПАРИТЬ В ОГНЕННЫХ НЕБЕСАХ, И ВСЕ СОЗДАНИЯ ПОЗНАЮТ ТВОЕ СЕРДЦЕ. В ВЕЧНОМ ПЛАМЕНИ ТЫ БУДЕШЬ ЖИТЬ, КАК И БЫЛО ПРЕДРЕШЕНО.~ */ GOTO 95
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",0)
~ THEN REPLY #68422 /* ~Я ПОШЛЮ ТЕБЯ НА СТИХИЙНЫЙ ПЛАН ОГНЯ, ИГНУС. ТАМ ТЫ БУДЕШЬ ПАРИТЬ В ОГНЕННЫХ НЕБЕСАХ, И ВСЕ СОЗДАНИЯ ПОЗНАЮТ ТВОЕ СЕРДЦЕ. В ВЕЧНОМ ПЛАМЕНИ ТЫ БУДЕШЬ ЖИТЬ, КАК И БЫЛО ПРЕДРЕШЕНО.~ */ GOTO 96
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #68392 /* ~Игнус какое-то время молча парит, и когда он начинает говорить, его голос звучит... по-другому, как у ребенка, ученика, того, которого ты помнишь с давних времен, в другом своем воплощении. «Учитель, прости... Я предал твое учение».~ [IGN254] */
  IF ~~ THEN REPLY #68393 /* ~КОГДА-ТО Я ОБУЧИЛ ТЕБЯ СТРАДАНИЮ, ИГНУС. ЭТО Я ТЕБЯ ПРЕДАЛ. ТЕПЕРЬ Я ПОШЛЮ ТЕБЯ В МИРНОЕ МЕСТО, ГДЕ ТВОЕ СЕРДЦЕ СМОЖЕТ СТАТЬ СВОБОДНЫМ.~ */ GOTO 96
  IF ~~ THEN REPLY #68394 /* ~БЫЛО МНОГО ПРЕДАТЕЛЬСТВ, ИГНУС. Я ПРОЩАЮ ТЕБЯ.~ */ GOTO 96
END

IF ~~ THEN BEGIN 96 // from: 94.1 95.0 95.1
  SAY #68395 /* ~Игнус не отвечает, лишь кивает. Пламя вокруг него трещит. Клочки пепла вьются вокруг него, как крохотные листья.~ */
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68396 /* ~ПРОЩАЙ, ИГНУС.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
~ THEN REPLY #68397 /* ~ПРОЩАЙ, ИГНУС.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
~ THEN REPLY #68467 /* ~ПРОЩАЙ, ИГНУС.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF ~  Global("Fortress_Ignus","GLOBAL",4)
~ THEN BEGIN 97 // from:
  SAY #68418 /* ~Игнус похож на бушующий пожар, потоки пламени скатываются с его тела подобно волнам какого-то огненного океана. «*Гори-и-и-и...*»~ [IGN090A] */
  IF ~~ THEN REPLY #68419 /* ~«Продолжай натиск, Игнус, не давай ему шанса сосредоточиться».~ */ EXIT
END
