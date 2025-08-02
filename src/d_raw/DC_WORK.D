// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_WORK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_WORK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67978 /* ~Рабочий отвлекается от своего занятия всего лишь на секунду. «Послушай... Мое дело не сделается само собой, если я буду трепаться здесь с любым прохожим. Просто оставь меня в покое, пока я тут работаю, хорошо?» Он возвращается к своей работе.~ */
  IF ~~ THEN REPLY #67979 /* ~Уйти.~ */ EXIT
END
