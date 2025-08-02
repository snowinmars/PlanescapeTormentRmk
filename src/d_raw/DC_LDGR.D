// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_LDGR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_LDGR~

IF ~  NumTimesTalkedTo(0)
RandomNum(2,1)
~ THEN BEGIN 0 // from:
  SAY #67947 /* ~«Какого... Я же точно *помню*, что запирал за собой дверь! Давай, уходи отсюда».~ */
  IF ~~ THEN REPLY #67948 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #67949 /* ~«Может быть, я забыл запереть дверь... Но ты-то уж точно не должен находиться в моей комнате. Выйди, пожалуйста». Он указывает на дверь.~ */
  IF ~~ THEN REPLY #67950 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #67951 /* ~Он злобно смотрит на тебя, безмолвно указывая на дверь.~ */
  IF ~~ THEN REPLY #67952 /* ~Уйти.~ */ EXIT
END
