// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLSCRIBE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLSCRIBE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51723 /* ~당신이 다가가자 사내는 소심한 미소를 지으며 인사를 한다. "당신이 들어왔을 때 잠시 난 당신이 내 고용주의 부하라고 생각했었소. 아니라 정말 다행이오!"~ */
  IF ~~ THEN REPLY #51724 /* ~"왜요? 당신은 왜 여기에 있는거요?~ */ GOTO 2
  IF ~~ THEN REPLY #51725 /* ~"그거 참 다행이오. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #51726 /* ~남자는 꺼림칙하게 고개를 끄덕인다. "그래, 그래, 나는 아직 여기 있소" 그는 어깨를 으쓱한다.~ */
  IF ~~ THEN REPLY #51727 /* ~"왜요?"~ */ GOTO 2
  IF ~~ THEN REPLY #51728 /* ~"그래, 그건 나도 눈치챘소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #51729 /* ~"나는 기록 보관소 제7 별관에서의 내 직무를 한 순간이라도 더 견딜 수가 없어서 도망쳐 나왔소. 만약 내가 그냥 집으로 갔다면, 내 고용주는 심부름꾼을 그 곳으로 보냈을 거요... 그 폭군 같으니! 그것이 바로 내가 여기서 숨어 있는 이유요. 나는 다시 내 비좁은 책상으로 돌아가기 전에 여기서 조금 더 빈둥댈 생각이오."~ */
  IF ~~ THEN REPLY #51730 /* ~"그럼 안녕히 계시오."~ */ EXIT
END
