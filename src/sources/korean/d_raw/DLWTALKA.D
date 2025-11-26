// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWTALKA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWTALKA~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3038 /* ~아마 나는 마계구에서 모르는 사람과 얘기하는 것을 즐기는 유일한 사람일 거요. 나는 매우 드문 예외요.~ */
  IF ~~ THEN REPLY #3039 /* ~뭐든 간에. 프로그램상 당신이 실행되게 되면 당신과 다시 얘기를 해 당신이 예외인지 아닌지 확인해 보겠소. ~ */ EXIT
END
