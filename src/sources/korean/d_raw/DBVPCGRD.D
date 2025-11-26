// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBVPCGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBVPCGRD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #56950 /* ~당신이 다가가자 경비병은 눈을 가늘게 뜨고 당신을 쳐다본다, 하지만 아무 말도 하지 않는다~ */
  IF ~  !GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN REPLY #56953 /* ~"저 아치를 지나면 무엇이 있소?"~ */ GOTO 1
  IF ~  GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN REPLY #56955 /* ~"저 아치를 지나면 무엇이 있소?"~ */ GOTO 2
  IF ~~ THEN REPLY #56959 /* ~그를 무시하고 지나간다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #56961 /* ~"파로드와 그의 궁정이오. 거기서는 몸과 주둥아리를 조심하시오. 그는 지금 기분이 매우 더러우니까."~ */
  IF ~~ THEN REPLY #56963 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #56964 /* ~"별로 없소. 난 내가 왜 아직도 여기서 어슬렁거리고 있는지조차 모르겠소." 그는 어깨를 으쓱한다.~ */
  IF ~~ THEN REPLY #56967 /* ~"안녕히 계시오."~ */ EXIT
END
