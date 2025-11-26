// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSDSTL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSDSTL~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3170 /* ~Эти ворота удерживаются тяжелыми замками и шипами. Похоже на то, что никакими подручными средствами их открыть не удастся.~ */
  IF ~  Global("Curst_key","GLOBAL",7)
~ THEN REPLY #3171 /* ~Произнести слова, которые дал тебе Триас.~ */ GOTO 1
  IF ~~ THEN REPLY #68141 /* ~Оставить дверь в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #68142 /* ~От первого слова врата начинают трещать и скрипеть, от второго металлические шипы выгибаются и вытягиваются, а от третьего врата распахиваются.~ */
  IF ~~ THEN REPLY #68143 /* ~«Вот и все».~ */ DO ~SetDoorLocked("ar702d03",FALSE)
OpenDoor("AR702d03")
~ EXIT
END
