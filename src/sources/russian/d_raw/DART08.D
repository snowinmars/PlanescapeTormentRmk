// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART08.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DART08~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34200 /* ~На этой картине — высокие черные скалы на фоне кроваво-красного неба. Кажется, будто среди утесов прячутся какие-то фигуры, но когда ты прищуриваешься и пытаешься разглядеть их, они исчезают. Табличка гласит: «Мародеры Внешних Земель».~ */
  IF ~~ THEN REPLY #42672 /* ~Уйти.~ */ DO ~SetGlobal("View_Art_08","AR0608",1)
~ EXIT
END
