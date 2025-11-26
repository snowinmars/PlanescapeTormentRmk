// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRNGHGD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRNGHGD~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from: 3.0
  SAY #38492 /* ~"쉿... 고기, 여여긴 네가 올 곳이 아냐."~ */
  IF ~~ THEN REPLY #38493 /* ~"당신은 여기서 뭘 하고 있는 거요?~ */ GOTO 1
  IF ~~ THEN REPLY #38494 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 2
  IF ~~ THEN REPLY #38495 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #38496 /* ~"그럼 가리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 5.0
  SAY #38497 /* ~"우리는 영토를 확확장하려고 해. 적적을 말살하고... 걸어다니는 고기를 먹지 말도록 음식을 찾고... 알겠어? 치임묵의 왕이 우우리에게 명령해... 걸어다니는 고기 먹지 말라고."~ */
  IF ~~ THEN REPLY #38498 /* ~"침묵의 왕이 누구요?"~ */ GOTO 4
  IF ~~ THEN REPLY #38499 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 2
  IF ~~ THEN REPLY #38500 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #38501 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1 5.1
  SAY #38502 /* ~"이이 곳? 익사한 왕국이야. 이이 곳은 우리의 새로운 사냥터야... 그리고 식품 창고야."~ */
  IF ~~ THEN REPLY #38503 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.2 4.0 5.2
  SAY #38504 /* ~"우리는 죽은 자의 왕국의 정정찰병이야 ."~ */
  IF ~~ THEN REPLY #38505 /* ~"당신은 뭘 정찰하고 있소?"~ */ GOTO 0
  IF ~~ THEN REPLY #38506 /* ~"알겠소. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #38507 /* ~"쉿!" 굴은 짜증을 쉿 소리로 표현한다. "치임묵의 왕은 지배자, 아카스트는 우리 지도자! 곧곧 둘 사이의 균형을 찾을 거야!"~ */
  IF ~~ THEN REPLY #38508 /* ~"어쨌든 당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #38509 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #38510 /* ~"쉿... 고기가 돌아왔군군..."~ */
  IF ~~ THEN REPLY #38511 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 1
  IF ~~ THEN REPLY #38512 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 2
  IF ~~ THEN REPLY #38513 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #38514 /* ~"그럼 가리다.안녕히 계시오."~ */ EXIT
END
