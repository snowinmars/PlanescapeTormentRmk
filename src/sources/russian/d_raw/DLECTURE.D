// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLECTURE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DLECTURE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50862 /* ~Человек поворачивается и смотрит на тебя слегка раздраженно. «Я слушаю лекцию, сэр. Прошу, вы не откажете мне в любезности и не будете меня беспокоить, пока я ее слушаю. Прощайте».~ */
  IF ~~ THEN REPLY #50863 /* ~Уйти.~ */ EXIT
END
