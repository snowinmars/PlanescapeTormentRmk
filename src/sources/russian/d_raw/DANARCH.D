// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANARCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DANARCH~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3162 /* ~Этот человек окидывает тебя полным недоверия взглядом, быстро отводит глаза в сторону, проигнорировав тебя, и возвращается к незавершенному делу. Вся толпа как будто готовится к какому-то вооруженному восстанию.~ */
  IF ~~ THEN REPLY #3163 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #64388 /* ~Как и раньше, тебя тщательно игнорируют.~ */
  IF ~~ THEN REPLY #64389 /* ~Уйти.~ */ EXIT
END
