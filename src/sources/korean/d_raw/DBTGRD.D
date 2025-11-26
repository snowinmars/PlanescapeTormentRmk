// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBTGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBTGRD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67912 /* ~경비병은 다음 말을 할 동안만 린치를 멈춘다: "만약 당신이 자신에게  뭐가 좋은지를 안다면 당신은 아무 것도 보지 않은 거요." 그는 자신의 희생자 쪽으로 돌아선다. ~ */
  IF ~~ THEN REPLY #67913 /* ~"안녕히 계시오."~ */ EXIT
END
