// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSLAVE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSLAVE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #53237 /* ~겁에 질린 커스트 시민이 보인다. "도와줘 고맙소... 나는 어떻게 해야 할지 몰랐소... 그들이 날 죽였을지도 모르오." 그는 한동안 감사의 말을 늘어놓는다, 그리고, "나도 도와야겠소. 지금 이 도시의 상황은 이기적인 행동을 할 때가 아니오. 감사 또 감사하오. 안녕히 계시오."~ */
  IF ~~ THEN REPLY #53238 /* ~"천만의 말씀. 안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END
