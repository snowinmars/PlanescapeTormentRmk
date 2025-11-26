// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWIT02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DWIT02~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43025 /* ~Этот человек тяжело дышит и весь блестит от пота, как будто он только что закончил какое-то тяжелое упражнение. При твоем приближении он оборачивается. «Да?»~ */
  IF ~~ THEN REPLY #43026 /* ~«Что это за место?»~ */ GOTO 1
  IF ~~ THEN REPLY #43027 /* ~«Ничего... просто проходил мимо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #43028 /* ~Он кивает на тренировочные чучела. «Тренировочный зал воинов».~ */
  IF ~  Global("Qui_Sai","GLOBAL",0)
~ THEN REPLY #43029 /* ~«Где учитель?»~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",1)
~ JOURNAL #66874 /* ~Я зашел в тренировочный зал воинов в Городском Фестхолле, но не обнаружил там наставника. Один из тренирующихся подсказал мне, что Ки-Саи — наставник воинов — должен быть где-то в Фестхолле, и его будет трудно не заметить, поскольку у него кожа серая как камень.~ */ GOTO 2
  IF ~  GlobalGT("Qui_Sai","GLOBAL",0)
GlobalLT("Qui_Sai","GLOBAL",4)
~ THEN REPLY #66875 /* ~«Где учитель?»~ */ GOTO 2
  IF ~~ THEN REPLY #43030 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #43031 /* ~«Ки-Саи? — он пожимает плечами, смахнув со лба пот. — Скорее всего, где-то в Фестхолле. Его трудно пропустить... его кожа сера как камень».~ */
  IF ~~ THEN REPLY #43032 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END
