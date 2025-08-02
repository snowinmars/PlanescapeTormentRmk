// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBVPCGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DBVPCGRD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #56950 /* ~Стражник прищуривается и молча наблюдает за твоим приближением.~ */
  IF ~  !GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN REPLY #56953 /* ~«Что за этой аркой?»~ */ GOTO 1
  IF ~  GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN REPLY #56955 /* ~«Что за этой аркой?»~ */ GOTO 2
  IF ~~ THEN REPLY #56959 /* ~Не обращать на него внимания, пройти мимо.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #56961 /* ~«Фарод со своим двором, рубака. Следи за собой и своим языком: он, как всегда, не в духе».~ */
  IF ~~ THEN REPLY #56963 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #56964 /* ~«Теперь уже мало чего. Даже не знаю, зачем я здесь торчу, правда». Он пожимает плечами.~ */
  IF ~~ THEN REPLY #56967 /* ~«Прощай».~ */ EXIT
END
