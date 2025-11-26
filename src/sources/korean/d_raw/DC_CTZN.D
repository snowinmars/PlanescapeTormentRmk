// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_CTZN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_CTZN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67990 /* ~이 사람은 당신이 대화를 중단시킨 것이 화가 나는 듯 당신을 노려본다, 그리고 다시 돌아선다. ~ */
  IF ~~ THEN REPLY #67993 /* ~"물어볼 것들이 좀 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #67994 /* ~"그럼 안녕히 계시오..."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #67991 /* ~대답은 짤막하다: "당신은 방해하고 있소. 물론 아니오."~ */
  IF ~~ THEN REPLY #67992 /* ~"그럼 좋소. 안녕히 계시오."~ */ EXIT
END
