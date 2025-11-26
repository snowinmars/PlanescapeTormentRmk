// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWIT01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DWIT01~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43023 /* ~Этот человек отрабатывает на деревянном чучеле разнообразные боевые приемы. Похоже, в текущий момент он слишком занят, чтобы говорить с тобой.~ */
  IF ~~ THEN REPLY #43024 /* ~Уйти.~ */ EXIT
END
