// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWFEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWFEM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2897 /* ~"질문하고 싶은 것이 좀 있소..."~ */
  IF ~~ THEN REPLY #2898 /* ~"내 용모에 무슨 문제라도 있소?"~ */ EXIT
END
