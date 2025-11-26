// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDILIG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DDILIG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2889 /* ~Эта суровая пожилая женщина явно куда-то спешит. Заметив твое приближение, она неодобрительно тебя разглядывает, хмуро поджав губы.~ */
  IF ~~ THEN REPLY #2890 /* ~Не раньше, чем ты покажешь свои буфера, лапочка.~ */ EXIT
END
