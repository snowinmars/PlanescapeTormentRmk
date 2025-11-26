// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGATHUG~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2825 /* ~"안녕하시오, 여행자! 당신은 지금 레이저 앤젤스의 영토 안에 있소. 가서 우리 리더인 크리스톨과 얘기하시오. 그녀가 당신에게 할 말이 있을 거요."~ */
  IF ~~ THEN REPLY #3365 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #3565 /* ~"내 말을 들으시오. 내게 말을 하지 말고 가서 크리스톨과 얘기를 하시오. 크리스톨과 얘기를 하라고. 무슨 소린지 알겠소?"~ */
  IF ~~ THEN REPLY #3566 /* ~떠난다.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from:
  SAY #3567 /* ~"이보시오, 친구... 그 자칭 정의의 사도를 처치해줘 고맙소. 이건 우리 모두를 대표해서 하는 얘기요. 크리스톨도 물론 기뻐할 거요."~ */
  IF ~~ THEN REPLY #3568 /* ~떠난다.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #3569 /* ~"그 자칭 정의의 사도를 처치해 주겠다나 고맙소. 그 일에 행운을 빌겠소."~ */
  IF ~~ THEN REPLY #3570 /* ~떠난다.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 4 // from:
  SAY #3571 /* ~"그거면 다크앨리 쉬브 놈들을 쫒아낼 수 있을 거요! 골목은 이제 우리 것이오!"~ */
  IF ~~ THEN REPLY #3572 /* ~떠난다.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 5 // from:
  SAY #3573 /* ~"그 다크앨리 쉬브 놈들에게 버릇을 좀 가르쳐 주시오!"~ */
  IF ~~ THEN REPLY #3574 /* ~떠난다.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 6 // from:
  SAY #3575 /* ~"네가 감히 이 곳에 나타나? 죽어라, 이 악당!~ */
  IF ~~ THEN REPLY #3576 /* ~떠난다.~ */ DO ~Enemy()
SetGlobal("0301_Good_Angry","AR0301",1)
~ EXIT
END
