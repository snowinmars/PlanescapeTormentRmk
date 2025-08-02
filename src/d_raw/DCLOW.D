// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCLOW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCLOW~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2903 /* ~Я один из низкоуровневых механических конструктов, что наполняют Лабиринт модронов. В мои обязанности входит проверка на храбрость всех вошедших в лабиринт незваных гостей. Ты чувствуешь, что готов сразиться со мной?~ */
  IF ~~ THEN REPLY #2904 /* ~Пока нет, но уверен, что почувствую. Прощай.~ */ EXIT
END
