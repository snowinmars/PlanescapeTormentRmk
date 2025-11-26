// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DART02~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34188 /* ~Это массивный рог из кованого свинца, обвитый медными цепями. Он ужасно покорежен, будто его раздавила какая-то чудовищная сила. По всей его длине торчат зазубренные лезвия, как будто он служил какому-то гигантскому существу не только боевым рогом, но и дубиной. Табличка, прикрепленная под рогом, гласит: «Очищающий рог Ахерона».~ */
  IF ~~ THEN REPLY #34189 /* ~Попробовать самое очевидное и попытаться дунуть в рог.~ */ DO ~SetGlobal("View_Art_02","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42670 /* ~Уйти.~ */ DO ~SetGlobal("View_Art_02","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42669 /* ~Как бы ты не старался, ты не можешь выдавить из рога ни звука. Ты убираешь губы от мундштука, ощущая привкус крови, дыма и металла.~ */
  IF ~~ THEN REPLY #42671 /* ~Уйти.~ */ EXIT
END
