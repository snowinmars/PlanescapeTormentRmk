// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBODY1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBODY1~

IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #20615 /* ~시체는 가만히 누워 있다. 아무리 찔러도 움직이거나 말을 할 것 같지는 않다. ~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #20616 /* ~"좀비가 아닌 모양이군, 그럼..."~ */ EXTERN ~DANNAH~ 111
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #54873 /* ~"좀비가 아닌 모양이군, 그럼..."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #20617 /* ~시체는 마치 전기 충격이라도 받은 듯 경련을 일으킨다, 그리고 그의 입으로부터 탄식이 흘러나온다.~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #20618 /* ~"안녕하시오."~ */ EXTERN ~DANNAH~ 112
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #20619 /* ~"당신은 누구요?"~ */ EXTERN ~DANNAH~ 112
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #20620 /* ~"난 당신에게 질문을 좀 해야겠소."~ */ EXTERN ~DANNAH~ 112
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #20621 /* ~"안녕하시오."~ */ GOTO 2
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #20631 /* ~"당신은 누구요?"~ */ GOTO 2
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #20632 /* ~"난 당신에게 질문을 좀 해야겠소."~ */ GOTO 2
  IF ~~ THEN REPLY #20633 /* ~"관두시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.3 1.4 1.5
  SAY #20622 /* ~"으음! 아아...!" 시체는 그의 녹아버린 혀를 가지고 뭐라고 중얼거리나 당신은 한 마디도 이해할 수가 없다.~ */
  IF ~~ THEN REPLY #20624 /* ~"그럼 관두시오..."~ */ EXIT
END
