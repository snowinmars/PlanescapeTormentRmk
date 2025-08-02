// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDALLNGF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DDALLNGF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #49445 /* ~Эта молодая девушка, красиво улыбаясь тебе, прижимается к боку мужчины. Она не произносит ни слова, а когда ты пытаешься с ней заговорить, отдаляется еще дальше.~ */
  IF ~~ THEN REPLY #49446 /* ~«Ладно, прощай». ~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #49448 /* ~Заметив твое приближение, она пытается скрыться, пряча от тебя взгляд. Кажется, она очень молода.~ */
  IF ~~ THEN REPLY #49449 /* ~«Прощай».~ */ EXIT
END
