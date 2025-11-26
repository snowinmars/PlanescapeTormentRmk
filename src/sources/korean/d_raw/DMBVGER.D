// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMBVGER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMBVGER~

IF ~  Global("BV_Enemy","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #20067 /* ~당신이 다가가자 그 수척한 남자는 공포에 질려 도망친다. ~ */
  IF ~~ THEN REPLY #20068 /* ~"아마 다음 번에..."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~  GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #20069 /* ~수척한 사내는 당신을 공포에 질린 표정으로 바라본다. 그러다가 그는 당신에게 자기를 당장 해치려는 의사가 없음을 깨닫고 몸을 똑바로 세운다. "뭘 원하오?"~ */
  IF ~~ THEN REPLY #20070 /* ~"당신은 누구요?"~ */ GOTO 2
  IF ~~ THEN REPLY #20071 /* ~"무엇을 하고 있는 거요?"~ */ GOTO 4
  IF ~~ THEN REPLY #20072 /* ~"무엇을 두려워하는 거요?"~ */ GOTO 5
  IF ~~ THEN REPLY #20073 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #20074 /* ~"그건 중요하지 않소. 오래 전에 갈라진 틈으로 떨어졌소 - 아니 떨어진 건 내 아버지였을 거요. 어쨌든 난 삶을 영위하기 위해 발버둥치는 평범한 사람에 불과하오."~ */
  IF ~~ THEN REPLY #20075 /* ~"좋소. 그 밖에도 질문할 것들이 있소."~ */ GOTO 3
  IF ~~ THEN REPLY #20076 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.0 5.2 6.0 7.0 8.0
  SAY #20077 /* ~"빨리 하시오, 난 부양할 가족이 있으니까."~ */
  IF ~~ THEN REPLY #20078 /* ~"당신은 누구요?"~ */ GOTO 2
  IF ~~ THEN REPLY #20079 /* ~"무엇을 하고 있는 거요?"~ */ GOTO 4
  IF ~  GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN REPLY #20080 /* ~"무엇을 두려워하는 거요?"~ */ GOTO 5
  IF ~~ THEN REPLY #20081 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 3.1
  SAY #20082 /* ~"내가 뭘 하는 것처럼 보이오? 나는 먹고 살려고 발버둥치고 있소. 하지만 당신이 계속 그렇게 질문을 하면 난 그럴 수가 없소. 이제 됐소?"~ */
  IF ~~ THEN REPLY #20083 /* ~"아니오. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #20084 /* ~"지금으로선."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 3.2
  SAY #20085 /* ~"다버스가 이 곳을 벽돌 아래에 묻어 버리거나, 석두들(하모니움의 별명)이 우리들을 쓸어버리거나, 지하 묘지에서 언데드들이 기어 나오거나, 크래니움 랫들이 우리 마을을 점거하려 하거나, 우리들이 서로의 목에 칼을 들이대거나, 아니면 굶주려 죽는 것 말고 다른 것 말이오? 이러한 일상적인 것들을 제외한다면 내가 두려워 하는 건 파로드를 죽인 괴물들일 거요."~ */
  IF ~~ THEN REPLY #20086 /* ~"괴물? 어떤 괴물 말이오?"~ */ GOTO 6
  IF ~~ THEN REPLY #20087 /* ~"파로드가 죽었소?"~ */ GOTO 6
  IF ~~ THEN REPLY #20088 /* ~"그럼 다른 질문들을 좀 하겠소..."~ */ GOTO 3
  IF ~~ THEN REPLY #20089 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #20090 /* ~"베이터의 주둥아리에서 직접 나온 괴물들이 틀림없소... 순수한 그림자로 만들어진, 가장 끔찍한 악몽과 공포의 괴물들. 그들은 파로드를 잡아서 갈기갈기 찢어 죽였소. 그의 시체에서 온전한 데라고는 없었소. 우리는 그 중에서 그나마 남은 것을 모아 장례를 치러 주었소."~ */
  IF ~~ THEN REPLY #20091 /* ~"좋소. 그럼 내게 다른 것에 대해 얘기해주시오..."~ */ GOTO 3
  IF ~~ THEN REPLY #20092 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #20093 /* ~그는 손에다 대고 시끄럽게 기침을 한다 "이번엔 뭘 원하오?"?"~ */
  IF ~~ THEN REPLY #20094 /* ~"난 내 질문에 대한 답을 원하오."~ */ GOTO 3
  IF ~~ THEN REPLY #20095 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 8 // from:
  SAY #20096 /* ~누더기를 입은 수척한 남자가 보인다. 그로부터는 연기와 쓰레기 냄새가 나며, 그의 피부는 누런 빛이 감돈다. 그는 당신을 곁눈질한다. "내게 뭘 원하오?"~ */
  IF ~~ THEN REPLY #20097 /* ~"질문에나 답해주시오..."~ */ GOTO 3
  IF ~~ THEN REPLY #20098 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END
