// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLECTURE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLECTURE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50862 /* ~이 사람은 약간 불쾌한 표정으로 당신을 쳐다본다. "나는 강의를 듣는 중이오. 강의 중에는 날 좀 그냥 내버려 두시면 고맙겠소. 안녕히 가시오."~ */
  IF ~~ THEN REPLY #50863 /* ~떠난다.~ */ EXIT
END
