// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAILEENA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DAILEENA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58096 /* ~더러운 작업복을 입은 젊은 여자가 보인다. 당신이 다가가자 그녀는 인사를 한다. ~ */
  IF ~~ THEN REPLY #58098 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #58099 /* ~그녀를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58100 /* ~"안녕하시오... 뭔가 필요하신가요?"~ */
  IF ~~ THEN REPLY #58101 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58102 /* ~"아니, 필요없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.1 5.1 6.1 7.0 8.0 9.0 10.0
  SAY #58103 /* ~"좋아요."~ */
  IF ~~ THEN REPLY #58104 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #58105 /* ~"뭘 하고 있는 거요?"~ */ GOTO 4
  IF ~~ THEN REPLY #58106 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 8
  IF ~~ THEN REPLY #58107 /* ~"나는 어떤 디바를 찾고 있소. 나는 그가 커스트에 있다고 들었소."~ */ GOTO 9
  IF ~~ THEN REPLY #58108 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58109 /* ~"내 이름은 아일리나예요."~ */
  IF ~~ THEN REPLY #58110 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58111 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #58112 /* ~"주문을 철하고 있었어요. 나는 시의 여러 상인들로부터 주문을 받은 후, 물건을 창고에서 꺼내 발송할 준비를 하지요."~ */
  IF ~~ THEN REPLY #58113 /* ~"흥미로운 일 같소."~ */ GOTO 5
  IF ~~ THEN REPLY #58114 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58115 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58116 /* ~그녀는 미소짓는다. "실은 그래요..." 그녀는 한숨을 쉬고 어깨를 으쓱한다. "그렇지 않다면 이 일을 하고 있지 않겠죠."~ */
  IF ~~ THEN REPLY #58117 /* ~"그건 왜요?"~ */ GOTO 6
  IF ~~ THEN REPLY #58118 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58119 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58120 /* ~그녀는 생각을 하느라 눈살을 찌푸린다. "이건 결코 쉬운 일이 아니고, 실은 두 사람 이상의 인력이 필요한 일이에요. 하지만 보스는 정말 후레자식 같은 작자라 추가로 인력을 고용할 생각은 하지도 않고 있어요"~ */
  IF ~~ THEN REPLY #58121 /* ~"그렇다면 왜 당신은 이 곳에 머무르는 거요?"~ */ GOTO 7
  IF ~~ THEN REPLY #58122 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58123 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58124 /* ~그녀는 다시 미소짓는다. "보스인 디보어는 더러운 작자이긴 하지만 좋은 구석이 딱 하나 있어요. 그는 매주 하루씩 우리를 쉬게 해주죠, 그것도 일당까지 주면서!~ */
  IF ~~ THEN REPLY #58125 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58126 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #58127 /* ~그녀는 어깨를 으쓱한다. "얘기할 것이 없네요. 창고는 어느 창고나 마찬가지니까요."~ */
  IF ~~ THEN REPLY #58128 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58129 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY #58130 /* ~그녀는 잠시 어리둥절한 표정으로 당신을 쳐다본다. "나는 당신에게 커스트에서 디바를 찾다니 미친 게 아니냐고 말하려고 했어요... 하지마 디바에 대해 뭔가 둘은 기억이 나는군요." 그녀는 말을 잠시 멈춘다. "내 생각에 당신은 행정부 사무실로 가서 거기 있는 사람들에게 물어보는 게 좋을 것 같아요. 그 곳은 시 광장에 있어요."~ */
  IF ~~ THEN REPLY #58131 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58132 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #58133 /* ~창고 근로자 아일리나가 보인다. 당신이 다가가자 그녀는 고개를 끄덕이며 미소를 짓는다. "다시 만나 반가워요. 잘 지냈나요?"~ */
  IF ~~ THEN REPLY #58134 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58135 /* ~"아무 것도 아니오. 안녕히 계시오."~ */ EXIT
END
