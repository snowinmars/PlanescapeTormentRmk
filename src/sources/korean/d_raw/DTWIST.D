// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTWIST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTWIST~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2794 /* ~뒤틀린 입술은 아직 말을 할 수가 없다. 그의 이름이 왜 그런지를 잘 설명해 주고 있다.~ */
  IF ~~ THEN REPLY #2795 /* ~좋소. 뭐든 간에.~ */ EXIT
END
