// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART11.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DART11~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34203 /* ~На этой картине изображена громадная гранитная цитадель — уродливая штуковина, продолговатая и низкая, покрытая гаргульями со злобными взглядами. Она висит среди чего-то, похожего на ночное небо. На заднем плане вдоль правой стороны клубится облако малиновых и фиолетовых испарений. Надпись на табличке незамысловатая — «Библиотека».~ */
  IF ~~ THEN REPLY #42678 /* ~Уйти.~ */ DO ~SetGlobal("View_Art_11","AR0608",1)
~ EXIT
END
