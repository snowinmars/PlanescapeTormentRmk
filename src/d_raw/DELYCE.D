// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DELYCE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DELYCE~

IF ~  Global("Elyce","AR0400",0)
~ THEN BEGIN 0 // from:
  SAY #21865 /* ~К тебе подбегает испуганная девушка, задыхающаяся и вся в слезах. «Пожалуйста, сэр! Останови их! Они *убьют* друг друга!»~ */
  IF ~~ THEN REPLY #33509 /* ~«В чем дело?»~ */ GOTO 1
  IF ~~ THEN REPLY #33510 /* ~«Извини, но это не моя проблема. Прощай».~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33499 /* ~«Там мой брат и мой парень... они дерутся! Просто повздорили немного, но я-то знаю, что они могут прирезать друг друга и глазом не моргнув! Помоги остановить их, прошу тебя!»~ */
  IF ~~ THEN REPLY #33511 /* ~«Я немедленно с ними переговорю...»~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Elyce_1","GLOBALGood",1)
~ GOTO 2
  IF ~~ THEN REPLY #33512 /* ~«Я могу остановить их, но не буду ничего делать за просто так...»~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Elyce_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #33513 /* ~«Извини, но это не моя проблема. Прощай».~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #33500 /* ~«Тысяча благодарностей, знаток! Они дерутся прямо тут!»~ */
  IF ~~ THEN REPLY #33514 /* ~«Я вернусь, как только поговорю с ними».~ */ DO ~SetGlobal("Elyce","AR0400",3)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #33501 /* ~«Я дам тебе звенелки, знаток... у меня есть сто монет... только останови их!»~ */
  IF ~~ THEN REPLY #33515 /* ~«Я вернусь, как только поговорю с ними».~ */ DO ~SetGlobal("Elyce","AR0400",3)
~ EXIT
  IF ~~ THEN REPLY #33516 /* ~«Хотя, если подумать, это меня совсем не касается. Прощай».~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~  Global("Elyce","AR0400",1)
~ THEN BEGIN 4 // from:
  SAY #33502 /* ~«Спасибо, рубака, что остановил драку. Я боялась, что они убьют друг друга. Не хочу потерять ни своего брата, ни моего любимого Майта».~ */
  IF ~~ THEN REPLY #33517 /* ~«С этим не было никаких проблем. Прощай».~ */ EXIT
  IF ~~ THEN REPLY #33518 /* ~«Неплохо бы выразить признательность в иной форме...»~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Elyce_1","GLOBALGood",-1)
Enemy()
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1 7.1
  SAY #33503 /* ~Радость на лице девушки тут же пропадает. «Где мы, по-твоему находимся, рубака? В районе Леди? Все, что я зарабатываю, я трачу на пропитание моей семьи! Извини, но я не могу *наградить* тебя... моя благодарность — это все, что у меня есть». Девушка сердито отводит от тебя взгляд.~ */
  IF ~~ THEN REPLY #33519 /* ~Уйти.~ */ EXIT
END

IF ~  Global("Elyce","AR0400",3)
~ THEN BEGIN 6 // from:
  SAY #33504 /* ~«Пожалуйста, рубака! Останови их!»~ */
  IF ~~ THEN REPLY #33520 /* ~«Я попытаюсь...»~ */ EXIT
  IF ~~ THEN REPLY #33521 /* ~«Вообще-то, я решил, что это меня совсем не касается. Прощай».~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~  Global("Elyce","AR0400",4)
~ THEN BEGIN 7 // from:
  SAY #33505 /* ~«Спасибо, рубака, что остановил драку. Я боялась, что они убьют друг друга. Не хочу потерять ни своего брата, ни моего любимого Майта».~ */
  IF ~  Global("Good_Elyce_1","GLOBAL",1)
~ THEN REPLY #33522 /* ~«Был рад помочь. Прощай».~ */ EXIT
  IF ~  Global("Good_Elyce_1","GLOBAL",1)
~ THEN REPLY #33523 /* ~«Неплохо бы выразить признательность в иной форме...»~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Elyce_1","GLOBALGood",-1)
Enemy()
~ GOTO 5
  IF ~  Global("Evil_Elyce_1","GLOBAL",1)
~ THEN REPLY #33524 /* ~«Да-да, конечно. А теперь моя награда...»~ */ DO ~SetGlobal("Elyce","AR0400",5)
GiveItemCreate("TsilBra",Protagonist,1,0,0)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.2
  SAY #33506 /* ~Кивая, она снимает с себя потускневший серебряный браслет: «Держи, рубака... Это единственное мое сокровище. Но их жизни мне дороже...» Она горестно вздыхает.~ */
  IF ~~ THEN REPLY #33525 /* ~«Постой... возьми его назад. Пусть браслет останется у тебя».~ */ DO ~TakePartyItemNum("TsilBra",1)
IncrementGlobalOnceEx("GLOBALGood_Elyce_1","GLOBALGood",1)
~ GOTO 9
  IF ~~ THEN REPLY #33526 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #33507 /* ~Взгляд девушки проясняется. «Спасибо тебе, рубака! Да минует тебя тень Леди!»~ */
  IF ~~ THEN REPLY #33527 /* ~«Конечно... Прощай».~ */ EXIT
END

IF ~  Global("Elyce","AR0400",5)
~ THEN BEGIN 10 // from:
  SAY #33508 /* ~«Спасибо еще раз, рубака, что остановил ту драку».~ */
  IF ~~ THEN REPLY #33528 /* ~«Нет проблем. Прощай».~ */ EXIT
END
