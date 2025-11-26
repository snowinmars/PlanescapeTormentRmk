// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTESTES.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTESTES~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #61602 /* ~이 당장이라도 무너질 것 같은 여인숙의 로비에 해당하는 장소에 키가 작은 대머리 사내가 서 있다. 그는 자신의 커다란 주먹코에 앉은 딱지를 떼는 데 온신경을 쏟느라 숱이 많은 눈썹을 찌푸리고 있다. ~ */
  IF ~~ THEN REPLY #61604 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #61605 /* ~그가 자신의 건강법을 실천하도록 내버려 두고 방을 살펴본다.~ */ JOURNAL #61617 /* ~이것은 테스트다. 만약 이것이 진짜 일지 항목이었다면... 아마 틀림없이 좋은 것이었을 것이다. ~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61603 /* ~사내는 당신을 바라볼 생각도 하지 않는다. 대신 그는 모들뜬 눈으로 자신의 코를 계속 내려다보고 있다. "뭐요? 뭘 원하오?"~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #61606 /* ~"여기서 휴식을 취해도 괜찮겠소?"~ */ EXIT
END
