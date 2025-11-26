// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGENSHPF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGENSHPF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36034 /* ~한가하게 물건들을 살피고 있는 여인이 보인다. ~ */
  IF ~~ THEN REPLY #36035 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #36036 /* ~그녀를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36037 /* ~여자는 당신을 흘긋 본다. "무슨 용건이죠?"~ */
  IF ~~ THEN REPLY #36038 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #36039 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #36040 /* ~그녀는 당신에게 다른 데로 가라고 손짓한다. "난 이럴 시간이 없어요. 날 그냥 내버려 두세요." 그녀는 당신으로부터 고개를 돌린다.~ */
  IF ~~ THEN REPLY #36041 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #36042 /* ~여자는 당신이 다가오는 것을 눈치채고 등을 돌린다. 그녀는 대화를 하려는 당신의 시도를 무시한다.~ */
  IF ~~ THEN REPLY #36043 /* ~떠난다.~ */ EXIT
END
