// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMAJORD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMAJORD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #44696 /* ~당신 눈에 팔, 다리, 날개가 각각 두 개씩 달린 입방체의 모습이 들어온다. 입방체의 정면은 활기에 찬 얼굴이다. 당신이 접근하자 그 생명체는 당신을 주시한다.~ */
  IF ~~ THEN REPLY #44697 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #44698 /* ~그를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #44699 /* ~그는 아무런 감정도 없는 눈으로 당신을 주시한다. "안녕하십니까, 모험자. 던젼 구조물 루비콘에 오신 것을 환영합니다. 루비콘에서 던젼 탐험을 즐기기로 하신 데 대해 감사를 드립니다. 루비콘으로는 이 문을 통해서 들어가실 수 있습니다." ~ */
  IF ~~ THEN REPLY #44700 /* ~"루비콘이란 무엇이오?"~ */ GOTO 2
  IF ~~ THEN REPLY #44701 /* ~"던젼 구조물이란 뭐요?"~ */ GOTO 3
  IF ~~ THEN REPLY #44702 /* ~"관두시오. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #44703 /* ~그는 아무런 대답도 없이 당신을 빤히 쳐다본다.~ */
  IF ~~ THEN REPLY #44704 /* ~"던젼 구조물이란 뭐요?"~ */ GOTO 3
  IF ~~ THEN REPLY #44705 /* ~"관두시오. 이만 실례해야겠소.. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0
  SAY #44706 /* ~그는 당신을 보며 눈을 깜박인다, 하지만 그가 당신 말을 알아들었는지는 알 수가 없다.~ */
  IF ~~ THEN REPLY #44708 /* ~"루비콘이란 무엇이오?"~ */ GOTO 2
  IF ~~ THEN REPLY #44709 /* ~"관두시오. 이만 실례해야겠소.. 안녕히 계시오."~ */ EXIT
END
