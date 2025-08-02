// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMIME.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DMIME~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #49773 /* ~Лицо этого человека выкрашено в белый цвет. На его лбу нарисованы дуги бровей; небольшие красные круги на щеках сделаны из красной пудры, ею же обведены губы. Он что-то говорит, но ты его не слышишь. Его ладони упираются в невидимую стену.~ */
  IF ~~ THEN REPLY #49774 /* ~«Что? Я тебя не слышу...»~ */ GOTO 1
  IF ~~ THEN REPLY #49775 /* ~Попробовать прикоснуться к нему.~ */ GOTO 2
  IF ~~ THEN REPLY #49776 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49777 /* ~Он опускает голову, беззвучно вздыхает и пожимает плечами. Затем немного отступает, машет тебе рукой на прощанье и начинает показывать пантомиму: тянет веревку, спускается по ступенькам и так далее.~ */
  IF ~  NearbyDialog("Dgrace")
~ THEN EXTERN ~DGRACE~ 144
  IF ~  !NearbyDialog("Dgrace")
~ THEN REPLY #49778 /* ~Попробовать прикоснуться к нему.~ */ GOTO 2
  IF ~  !NearbyDialog("Dgrace")
~ THEN REPLY #49779 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1
  SAY #49780 /* ~Ты протягиваешь руку, чтобы прикоснуться к нему, но ее останавливает невидимая сила. Похоже, мим попал в ловушку, попав в своего рода невидимую коробку или клетку.~ */
  IF ~~ THEN REPLY #49781 /* ~Уйти.~ */ EXIT
END
