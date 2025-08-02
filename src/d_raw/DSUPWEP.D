// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSUPWEP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DSUPWEP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #55077 /* ~Это оружие сделано из необычного металла. Осмотр показывает, что оно сделано из целого куска металла, а не клинка, вставленного в эфес. В твоих руках клинок начинает вибрировать и меняться. Похоже, он пытается вырваться из своей текущей формы.~ */
  IF ~~ THEN REPLY #55079 /* ~Заставить клинок измениться.~ */ EXIT
END
