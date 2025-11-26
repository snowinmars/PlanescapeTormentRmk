// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPAIDOOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DPAIDOOR~

IF ~  GlobalLT("Know_Painted_Door","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #47816 /* ~То, что ты сперва принял за дверь в арке, оказалось картиной. Художник использовал тени от нависающей арки и несколько утонченных эффектов детализации, чтобы придать этой двери иллюзию материальности.~ */
  IF ~  NearbyDialog("DAnnah")
GlobalLT("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #47817 /* ~«Анна, ты уверена, что это и есть та дверь?»~ */ EXTERN ~DANNAH~ 228
  IF ~  Global("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #47818 /* ~Закрыть глаза, открыть дверь.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 1
  IF ~~ THEN REPLY #47819 /* ~Осмотреть дверь.~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Painted_Door","GLOBALKnow_Painted_Door",0)
~ GOTO 2
  IF ~~ THEN REPLY #47820 /* ~Оставить «дверь» в покое.~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Painted_Door","GLOBALKnow_Painted_Door",0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.1
  SAY #47822 /* ~Ты закрываешь глаза, тянешь руку к двери и нащупываешь ее... к своему удивлению, ты обнаруживаешь ручку. Приложив небольшое усилие, ты открываешь дверь. Узкий проход ведет в здание; оттуда доносится отдаленное завывание.~ */
  IF ~~ THEN REPLY #47823 /* ~«Настало время идти...»~ */ DO ~SetGlobal("Know_Painted_Door","GLOBAL",3)
SetDoorLocked("ar0400d1",FALSE)
OpenDoor("ar0400d1")
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY #47824 /* ~Не считая мастерства исполнения, в этой картине нет ничего примечательного. «Дверь» нарисована на грубой каменной стене; ты ощущаешь камень и раствор под нарисованной деревянной поверхностью.~ */
  IF ~  NearbyDialog("DAnnah")
GlobalLT("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #47825 /* ~«Анна, ты уверена, что это и есть та дверь?»~ */ EXTERN ~DANNAH~ 228
  IF ~  Global("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #47826 /* ~Закрыть глаза, открыть дверь.~ */ GOTO 1
  IF ~~ THEN REPLY #47827 /* ~Оставить «дверь» в покое.~ */ EXIT
END
