// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDDABUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DDDABUS~

IF ~  Global("Alley_Dabus_SC","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #50355 /* ~Ты видишь тело мертвого дабуса. Запах гниения просто невыносим. Судя по скованной, неестественной позе, тело давно охватило трупное окоченение. Однако все же тебе каким-то образом удалось пробудить место.~ */
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #50356 /* ~Использовать на трупе свою способность «История костей».~ */ DO ~SetGlobal("Alley_Dabus_SC","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #50370 /* ~Оставить мертвеца в покое.~ */ DO ~SetGlobal("Alley_Dabus_SC","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 7.0
  SAY #50357 /* ~В течение нескольких секунд ничего не происходит. Затем из открытого рта трупа неожиданно издается слабое сопение.~ */
  IF ~~ THEN REPLY #50358 /* ~«Привет? Ты слышишь меня?»~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #50359 /* ~Несколько секунд висит тишина, после которых рот трупа без предупреждения начинает шевелиться. «Конечно я слышу тебя! Я же *мертвый*, а не глухой... ты, словоблудный ниггер».[Temp Line written by Steve Bokkes]~ */
  IF ~~ THEN REPLY #50360 /* ~«Спокойнее... Я просто хочу задать пару вопросов».~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #50361 /* ~«Вопросов? Я что, похож на справочную, засранец?»[Temp Line written by Steve Bokkes]~ */
  IF ~~ THEN REPLY #50362 /* ~«Какой странный говор... А разве вы, дабусы, не должны говорить загадками?»[Temp Line written by Steve Bokkes]~ */ GOTO 4
  IF ~~ THEN REPLY #50369 /* ~«Хоть скажи мне, как ты умер, чтобы я смог завершить этот чертов квест Беременной улицы и попасть в Нижний район».~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #50363 /* ~«Черт! Еще одна тупая белая жопа. Всем известно, что смерть — универсальный язык. Какой черт мне прок от этих тупорылых знаков, если ты даже кусок из них понять не можешь? И как тогда ты потом квест решать будешь, а? Да и к тому же, это всего лишь заготовка диалога, балда».[Temp Line written by Steve Bokkes]~ */
  IF ~~ THEN REPLY #50364 /* ~«Хоть скажи мне, как ты умер, чтобы я смог завершить этот чертов квест Беременной улицы и попасть в Нижний район».~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #50365 /* ~«Запросто, белозадый. Вышло типа того. Я приперся сюда на улицу, выяснить, какого хрена здесь творится с домами и все такое. Ну так вот, я ввалился сюда, и все что я понял — двери и окна типа захлопнулись. Я пытался пробить выход, вот только при каждом вылетевшем из стены куске дом ремонтировался обратно».[Temp Line written by Steve Bokkes]~ */
  IF ~~ THEN REPLY #50366 /* ~«Спасибо, ты мне очень помог».~ */ DO ~SetGlobal("Know_Dead_Dabus","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #50367 /* ~«Хватит трепаться, обезьяна!»[Temp Line written by Steve Bokkes]~ */
  IF ~~ THEN REPLY #50368 /* ~Уйти.~ */ EXIT
END

IF ~  GlobalGT("Alley_Dabus_SC","GLOBAL",0)
Global("Know_Dead_Dabus","GLOBAL",0)
~ THEN BEGIN 7 // from:
  SAY #50371 /* ~Ты видишь тело мертвого дабуса. Запах гниения просто невыносим. Судя по скованной, неестественной позе, тело давно охватило трупное окоченение. Однако все же тебе каким-то образом удалось пробудить место.~ */
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #50372 /* ~Использовать на трупе свою способность «История костей».~ */ GOTO 1
  IF ~~ THEN REPLY #50373 /* ~Оставить мертвеца в покое.~ */ EXIT
END

IF ~  GlobalGT("Alley_Dabus_SC","GLOBAL",0)
Global("Know_Dead_Dabus","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY #50374 /* ~Мертвому дабусу больше нечего тебе сказать. Попробуй как-нибудь в другой раз, когда Стив доделает этот диалог.[Temp Line written by Steve Bokkes]~ */
  IF ~~ THEN REPLY #50375 /* ~Уйти.~ */ EXIT
END
