// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRUNKZ.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRUNKZ~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9711 /* ~Этот мужчина покачивается из стороны в сторону, пытаясь поймать равновесие. На какое-то мгновение ему это удается, и он болезненно улыбается твоему правому уху.~ */
  IF ~~ THEN REPLY #9864 /* ~«Приветствую...»~ */ GOTO 1
  IF ~~ THEN REPLY #9866 /* ~Оставить его в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9855 /* ~Он медленно кивает, после чего издает какой-то булькающий звук. Из уголка рта по грязной и нечесаной бороде начинает стекать зеленая жидкость. Похоже, относительно ровно стоять ему удается гораздо лучше, чем поддерживать с тобой разговор».~ */
  IF ~~ THEN REPLY #9867 /* ~«Неважно... Прощай».~ */ EXIT
END
