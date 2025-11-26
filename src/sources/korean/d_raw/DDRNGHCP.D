// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRNGHCP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRNGHCP~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #38515 /* ~이 여자 굴은 주위의 다른 굴들보다 더 큰 권한을 지니고 있는 듯하다. 그녀의 눈은 또렸하며, 또한 덜 동물적이다. "무슨 도움이 필요한가... 고기?"~ */
  IF ~~ THEN REPLY #38516 /* ~"당신은 누구요? 당신은 여기서 뭘 하고 있는 거요?~ */ GOTO 1
  IF ~~ THEN REPLY #38565 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 4
  IF ~~ THEN REPLY #38566 /* ~"사양하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 3.0
  SAY #38517 /* ~"나? 나는... 얼레이나. 이들은 내 부하 굴들이야. 우리는 저엉찰병들이자 사아냥꾼들이지. 우리는 영토를 더 넓히려고 해... 우리는 더 많은 *음식*을 찾으려고 해. 당신 질문에 대애답했으니 이번엔 내가 묻겠어어... 여기서 뭘 하고 있는 거지?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38518 /* ~"나는 청동 구체를 찾고 있소."~ */ GOTO 2
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38561 /* ~"나는 물 유리병을 찾고 있소."~ */ GOTO 5
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38562 /* ~"나는 함정으로 가득 찬 무덤을 찾고 있소."~ */ GOTO 6
  IF ~~ THEN REPLY #38563 /* ~"나는 그냥 방황을 하고 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #38564 /* ~"모르겠소."~ */ GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.2 4.0
  SAY #38519 /* ~"청동... 구우체? 우린 그런 건... 찾지 못했어. 이 곳의 깊숙한 곳까지 뒤지면 원하는 걸 찾을 수 있을지도 몰라."~ */
  IF ~~ THEN REPLY #38520 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #38560 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0 6.2 7.0 8.0 9.1 10.0 11.1 12.0
  SAY #38521 /* ~"대답할 수 있는 거라면... 대답해주겠어."~ */
  IF ~~ THEN REPLY #38522 /* ~"당신은 누구요? 당신은 여기서 뭘 하고 있는 거요?~ */ GOTO 1
  IF ~~ THEN REPLY #38523 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 4
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38556 /* ~"나는 청동 구체를 찾고 있소."~ */ GOTO 2
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38557 /* ~"나는 물 유리병을 찾고 있소."~ */ GOTO 5
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38558 /* ~"나는 함정으로 가득 찬 무덤을 찾고 있소."~ */ GOTO 6
  IF ~~ THEN REPLY #38559 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 3.1
  SAY #38524 /* ~"이이 곳은 익사한 왕국이이야. 이이 곳은 우리리 사냥터야. 이이 곳은 우리들 사냥꾼들이이 지배하는 곳이야. 여기서 뭘 원하는 거지?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38525 /* ~"나는 청동 구체를 찾고 있소."~ */ GOTO 2
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38526 /* ~"나는 물 유리병을 찾고 있소."~ */ GOTO 5
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38530 /* ~"나는 함정으로 가득 찬 무덤을 찾고 있소."~ */ GOTO 6
  IF ~~ THEN REPLY #38543 /* ~"나는 그냥 방황을 하고 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #38551 /* ~"모르겠소."~ */ GOTO 11
END

IF ~~ THEN BEGIN 5 // from: 1.1 3.3 4.1
  SAY #38527 /* ~"우리는 이 곳의 급수수원을 찾지 못했어, 하지만 동동쪽이 가장 습한 것 같아. 거길 뒤져 보면 그걸 찾을 수 있을지도 몰라."~ */
  IF ~~ THEN REPLY #38528 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #38529 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2 3.4 4.2
  SAY #38531 /* ~"우우리 주변에는 무덤들이 많아, 그리고 우리는 그 주민들을 보호해... 말하지 않겠어."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #38532 /* ~"나는 그것을 꼭 찾아야만 하오."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #38536 /* ~"나는 그것을 꼭 찾아야만 하오."~ */ GOTO 8
  IF ~~ THEN REPLY #38541 /* ~"좋소. 그럼 다른 질문들에 좀 대답해주시오..."~ */ GOTO 3
  IF ~~ THEN REPLY #38542 /* ~"좋소. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #38533 /* ~굴 대장은 당신을 냉정한 눈으로 살피며 평가를 한다. "남남동동쪽으로 가. 이이들 무덤들의 주민들의 잠을 깨우지 마, 아니면 대대가를 치르게 될 테니." ~ */
  IF ~~ THEN REPLY #38534 /* ~"고맙소. 그 밖에도 물어보고 싶은 것들이 좀 있소." ~ */ GOTO 3
  IF ~~ THEN REPLY #38535 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #38537 /* ~굴 대장은 당신을 이글거리는 눈으로 노려본다. "난 그게 네게 얼마나 중요한지 관심없어, 고기. 너에게 말해주지 않겠어." ~ */
  IF ~~ THEN REPLY #38538 /* ~"알았소. 그럼 날 위해 다른 질문들에 대답해주시오."~ */ GOTO 3
  IF ~~ THEN REPLY #38539 /* ~"말하지 않으면 당신은 죽은 목숨이오."~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #38540 /* ~"어쨌든 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.3 4.3
  SAY #38544 /* ~"이이 곳은 돌아다니기 좋은 곳이 아니야. 위험이 많이 도사리고 있어. 우리는 토템을 가지고 안전한 경계선선을 표시했어... 그 경계선을 넘어어가지 않으면 안안전할 거야. 이 곳에 서식하는 괴물들을 조심해 - 놈들은 매우 위험하고, 떼를 지어 달달려드니까."~ */
  IF ~~ THEN REPLY #38545 /* ~"어떤 생물들 말이오?"~ */ GOTO 10
  IF ~~ THEN REPLY #38549 /* ~"고맙소. 그 밖에도 물어보고 싶은 것들이 좀 있소." ~ */ GOTO 3
  IF ~~ THEN REPLY #38550 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0
  SAY #38546 /* ~"이 곳은 트로코포타카... 하얗고 뿔이 달렸으며, 끝끝없는 식욕과 잔인한 성격을 지닌 괴물들로 들끓고 있어. 이 곳엔 바구일들도 많은 데 지지하 묘지의 이 깊숙한 곳까지 내려오는 얼간이들 그들의 수는 계속 늘고 있어."~ */
  IF ~~ THEN REPLY #38547 /* ~"알겠소... 날 위해 몇 가지 질문에 더 대답해줄 수 있겠소?~ */ GOTO 3
  IF ~~ THEN REPLY #38548 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.4 4.4
  SAY #38552 /* ~"몰라? 몰라? 당신은... 떠나는 게 좋겠어. 이 곳은... 산 고기에게는... 위험해."~ */
  IF ~~ THEN REPLY #38553 /* ~"위험? 어떻게 위험하오?"~ */ GOTO 10
  IF ~~ THEN REPLY #38554 /* ~"물어볼 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #38555 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #38567 /* ~"돌아아왔어? 뭘 원하는 거지?"~ */
  IF ~~ THEN REPLY #38568 /* ~"몇 가지 질문에 대해 대답을 듣고 싶소..."~ */ GOTO 3
  IF ~~ THEN REPLY #38569 /* ~"몇 가지 질문에 대해 대답을 듣고 싶소..."~ */ EXIT
END
