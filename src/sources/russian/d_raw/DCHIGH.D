// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCHIGH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCHIGH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2901 /* ~Я особо опасный механический конструкт, сделанный из самого лабиринта модронов для того, чтобы встретить незваных гостей. Не уверен, будет ли у меня диалог, но если что — это его начало.~ */
  IF ~~ THEN REPLY #2902 /* ~Ну, рад был с тобой поболтать. Уверен, у тебя все сложится... э, то есть, как только дизайнер тебя закончит. ~ */ EXIT
END
