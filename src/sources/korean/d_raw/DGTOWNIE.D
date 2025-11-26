// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGTOWNIE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGTOWNIE~

IF ~  GlobalLT("Gehreleth_Dead","AR0900",2)
~ THEN BEGIN 0 // from:
  SAY #67872 /* ~게흐렐레스들이 사람들을 학살하는 것을 보며 이 사람의 눈은 공포로 질린다. "제발 우릴 구해주시오 !"~ */
  IF ~~ THEN REPLY #67873 /* ~"최선을 다하리다..."~ */ EXIT
END

IF ~  GlobalGT("Gehreleth_Dead","AR0900",1)
~ THEN BEGIN 1 // from:
  SAY #67874 /* ~"고맙소! 당신이 없었다면 우린 모두 갈가리 찢겼을 것이오!~ */
  IF ~~ THEN REPLY #67875 /* ~"알고 있소. 안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END
