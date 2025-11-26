// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRNGHCP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DRNGHCP~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #38437 /* ~이 여자 굴은 주위의 다른 굴들보다 더 큰 권한을 지니고 있는 듯하다. 그녀의 눈은 또렸하며, 또한 덜 동물적이다. "무슨 도움이 필요한가... 고기?"~ */
  IF ~~ THEN REPLY #38438 /* ~"당신은 누구요? 당신은 여기서 뭘 하고 있는 거요?"~ */ GOTO 1
  IF ~~ THEN REPLY #38439 /* ~"이 곳 어떤 곳이오?"~ */ GOTO 2
  IF ~~ THEN REPLY #38440 /* ~"사양하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 8.0
  SAY #38441 /* ~"나? 나는... 얼레이나. 이들은 내 부하 굴들이야. 우리는 저엉찰병들이자 사아냥꾼들이지. 우리는 영토를 더 넓히려고 해... 우리는 더 많은 *음식*을 찾으려고 해. 당신 질문에 대애답했으니 이번엔 내가 묻겠어어... 여기서 뭘 하고 있는 거지?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38442 /* ~"나는 청동 구체를 찾고 있소."~ */ GOTO 3
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38443 /* ~"나는 물 유리병을 찾고 있소."~ */ GOTO 4
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38444 /* ~"나는 함정으로 가득 찬 무덤을 찾고 있소."~ */ GOTO 5
  IF ~~ THEN REPLY #38445 /* ~"나는 그냥 방황을 하고 있소."~ */ GOTO 6
  IF ~~ THEN REPLY #38446 /* ~"모르겠소."~ */ GOTO 7
END

IF ~~ THEN BEGIN 2 // from: 0.1 8.1
  SAY #38447 /* ~"이이 곳은 익사한 왕국이이야. 이이 곳은 우리리 사냥터야. 이이 곳은 우리들 사냥꾼들이이 지배하는 곳이야. 여기서 뭘 원하는 거지?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38448 /* ~"나는 청동 구체를 찾고 있소."~ */ GOTO 3
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38449 /* ~"나는 물 유리병을 찾고 있소."~ */ GOTO 4
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38450 /* ~"나는 함정으로 가득 찬 무덤을 찾고 있소."~ */ GOTO 5
  IF ~~ THEN REPLY #38451 /* ~"나는 그냥 방황을 하고 있소."~ */ GOTO 6
  IF ~~ THEN REPLY #38452 /* ~"모르겠소."~ */ GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 8.2
  SAY #38453 /* ~"청동... 구우체? 우린 그런 건... 찾지 못했어. 이 곳의 깊숙한 곳까지 뒤지면 원하는 걸 찾을 수 있을지도 몰라."~ */
  IF ~~ THEN REPLY #38454 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #38455 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 8.3
  SAY #38456 /* ~"우리는 이 곳의 급수수원을 찾지 못했어, 하지만 동동쪽이 가장 습한 것 같아. 거길 뒤져 보면 그걸 찾을 수 있을지도 몰라."~ */
  IF ~~ THEN REPLY #38457 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #38458 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 2.2 8.4
  SAY #38459 /* ~"우우리 주변에는 무덤들이 많아, 그리고 우리는 그 주민들을 보호해... 말하지 않겠어."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #38460 /* ~"나는 그것을 꼭 찾아야만 하오."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #38461 /* ~"나는 그것을 꼭 찾아야만 하오."~ */ GOTO 10
  IF ~~ THEN REPLY #38462 /* ~"좋소. 그럼 다른 질문들에 좀 대답해주시오..."~ */ GOTO 8
  IF ~~ THEN REPLY #38463 /* ~"좋소. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.3 2.3
  SAY #38464 /* ~"이이 곳은 돌아다니기 좋은 곳이 아니야. 위험이 많이 도사리고 있어. 우리는 토템을 가지고 안전한 경계선선을 표시했어... 그 경계선을 넘어어가지 않으면 안안전할 거야. 이 곳에 서식하는 괴물들을 조심해 - 놈들은 매우 위험하고, 떼를 지어 달달려드니까."~ */
  IF ~~ THEN REPLY #38465 /* ~"어떤 생물들 말이오?"~ */ GOTO 11
  IF ~~ THEN REPLY #38466 /* ~"고맙소. 그 밖에도 물어보고 싶은 것들이 좀 있소." ~ */ GOTO 8
  IF ~~ THEN REPLY #38467 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.4 2.4
  SAY #38468 /* ~"몰라? 몰라? 당신은... 떠나는 게 좋겠어. 이 곳은... 산 고기에게는... 위험해."~ */
  IF ~~ THEN REPLY #38469 /* ~"위험? 어떻게 위험하오?"~ */ GOTO 11
  IF ~~ THEN REPLY #38470 /* ~"물어볼 것들이 좀 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #38471 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.0 4.0 5.2 6.1 7.1 9.0 10.0 11.0 12.0
  SAY #38472 /* ~"대답할 수 있는 거라면... 대답해주겠어."~ */
  IF ~~ THEN REPLY #38473 /* ~"당신은 누구요? 당신은 여기서 뭘 하고 있는 거요?"~ */ GOTO 1
  IF ~~ THEN REPLY #38474 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 2
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38475 /* ~"나는 청동 구체를 찾고 있소."~ */ GOTO 3
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38476 /* ~"나는 물 유리병을 찾고 있소."~ */ GOTO 4
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38477 /* ~"나는 함정으로 가득 찬 무덤을 찾고 있소."~ */ GOTO 5
  IF ~~ THEN REPLY #38478 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0
  SAY #38479 /* ~굴 대장은 당신을 냉정한 눈으로 살피며 평가를 한다. "남남동동쪽으로 가. 이이들 무덤들의 주민들의 잠을 깨우지 마, 아니면 대대가를 치르게 될 테니." ~ */
  IF ~~ THEN REPLY #38480 /* ~"고맙소. 그 밖에도 물어보고 싶은 것들이 좀 있소." ~ */ GOTO 8
  IF ~~ THEN REPLY #38481 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY #38482 /* ~굴 대장은 당신을 이글거리는 눈으로 노려본다. "난 그게 네게 얼마나 중요한지 관심없어, 고기. 너에게 말해주지 않겠어." ~ */
  IF ~~ THEN REPLY #38483 /* ~"알았소. 그럼 날 위해 다른 질문들에 대답해주시오."~ */ GOTO 8
  IF ~~ THEN REPLY #38484 /* ~"말하지 않으면 당신은 죽은 목숨이오."~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #38485 /* ~"어쨌든 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.0 7.0
  SAY #38486 /* ~"이 곳은 트로코포타카... 하얗고 뿔이 달렸으며, 끝끝없는 식욕과 잔인한 성격을 지닌 괴물들로 들끓고 있어. 이 곳엔 바구일들도 많은 데 지지하 묘지의 이 깊숙한 곳까지 내려오는 얼간이들 그들의 수는 계속 늘고 있어."~ */
  IF ~~ THEN REPLY #38487 /* ~"알겠소... 날 위해 몇 가지 질문에 더 대답해줄 수 있겠소?~ */ GOTO 8
  IF ~~ THEN REPLY #38488 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #38489 /* ~"돌아왔어? 뭘 원하지?"~ */
  IF ~~ THEN REPLY #38490 /* ~"몇 가지 질문에 대해 대답을 듣고 싶소..."~ */ GOTO 8
  IF ~~ THEN REPLY #38491 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END
