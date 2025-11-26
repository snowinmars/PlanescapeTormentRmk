// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38101 /* ~Очень важно записывать свои путешествия, чтобы ты смог узнавать о их. Тем не менее, еще важнее — держать обнаруженные источники информации, которые помогли тебе раскрыть тайну, в безопасности. Убей или уничтожь ключевые фигуры, документы или предсказателей, и ты никогда не узнаешь, кто ты или как оказался в таком положении.~ */
  IF ~  Global("Inscr_3","GLOBAL",0)
~ THEN REPLY #53707 /* ~Осмотреть панель.~ */ GOTO 1
  IF ~~ THEN REPLY #53708 /* ~Отойти от описания.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53709 /* ~Мастерство весьма изыскано. Панель вставлена в стену с такой точностью, какую мог достичь настоящий мастер. Тебе кажется, что панель можно вдавить в стену еще дальше.~ */
  IF ~~ THEN REPLY #53710 /* ~Надавить на панель.~ */ DO ~SetGlobal("Inscr_3","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #53711 /* ~Оставить панель в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53712 /* ~Под легким нажимом твоей руки панель уходит в стену. Ты слышишь щелчок от саркофага позади тебя.~ */
  IF ~~ THEN REPLY #53713 /* ~Отойти от описания.~ */ EXIT
END
