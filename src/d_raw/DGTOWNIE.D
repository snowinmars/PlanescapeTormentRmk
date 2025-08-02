// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGTOWNIE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DGTOWNIE~

IF ~  GlobalLT("Gehreleth_Dead","AR0900",2)
~ THEN BEGIN 0 // from:
  SAY #67872 /* ~Глаза этого человека наполняются страхом при виде гехрелетов, ведущих расправу над толпой. «Спаси нас, пожалуйста!»~ */
  IF ~~ THEN REPLY #67873 /* ~«Посмотрим, что я смогу сделать...»~ */ EXIT
END

IF ~  GlobalGT("Gehreleth_Dead","AR0900",1)
~ THEN BEGIN 1 // from:
  SAY #67874 /* ~«Спасибо! Без тебя они бы порвали нас на части!»~ */
  IF ~~ THEN REPLY #67875 /* ~«Я знаю. Прощай».~ */ DO ~EscapeArea()
~ EXIT
END
