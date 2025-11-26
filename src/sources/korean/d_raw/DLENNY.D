// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLENNY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLENNY~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 33 38 40 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36484 /* ~허름한 옷을 입은 야성적인 용모의 청년이 보인다. 그의 눈은 주변을 둘러보며 총알처럼 움직인다. 그는 당신이 다가오는 것을 눈치채고 경계하는 눈초리로 당신을 본다. ~ */
  IF ~~ THEN REPLY #36525 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #36526 /* ~그를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36485 /* ~그는 당신을 아래위로 훑어보더니 주변을 두리번거린다. 그는 시선을 다시 당신에게로 돌리면서 사악하게 웃는다. "이 렌니를 방해한 데는 그만한 이유가 있어야 할 거요."~ */
  IF ~~ THEN REPLY #36527 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #36528 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 32.0
  SAY #36486 /* ~그는 당신을 비웃는다. "나는 가이드가 아니니까 가서 가이드를 구하시오." 그는 더 환하게 미소짓는다. "내가 당신을 찌르기 전에 꺼지는 게 좋을 거요."~ */
  IF ~~ THEN REPLY #36529 /* ~"나는 몇 가지 질문에 대한 답을 듣고자 할 뿐이오.."~ */ GOTO 3
  IF ~  Global("Know_Lenny","GLOBAL",1)
~ THEN REPLY #36530 /* ~"만약 내가 바이런 픽잇이 보내서 온 거라면?"~ */ GOTO 4
  IF ~~ THEN REPLY #36531 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36487 /* ~그는 미소짓는 것을 멈추고 얼굴을 찌푸린다. "아니, 난 질문 따위엔 대답하지 않소. 난 당신보고 가서 가이드를 찾으라고 했소, 그러니 꺼지시오." 그는 당신을 노려본다.~ */
  IF ~~ THEN REPLY #36532 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #36488 /* ~그는 미소짓는 것을 멈추고 당신을 한동안 살펴본다. 그는 당신의 흉터들을 눈여겨보며 침을 약간 삼킨다. 잠시 후 그는 얼굴을 찌푸린다, 그리고 그는 불안한 듯한 기색을 보인다. "픽잇이 당신을 보냈소? 왜?"~ */
  IF ~~ THEN REPLY #36533 /* ~"그는 당신이 내 질문에 대답해줄 수 있을 거라고 했소..."~ */ GOTO 5
  IF ~~ THEN REPLY #36534 /* ~"관두시오, 그건 별로 중요하지 않소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.2 7.1 8.0 28.2 29.1 30.1 31.0
  SAY #36489 /* ~그는 눈살을 찌푸린다. "무슨 질문..." 당신은 그가 상당히 긴장하고 있다는 사실을 눈치챈다. ~ */
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #36535 /* ~"나는 해골을 하나 도난당했고 그것을 되찾고 싶소. 누가 그런 짓을 할만한 사람이 누군지 혹시 아시오?"~ */ JOURNAL #66540 /* ~렌니라는 도둑은 아마 로타라는 자가 모트가 도난당한 일에 책임이 있을 것이라고 했다. 이 로타란 자를 한번 찾아가 봐야겠다. ~ */ GOTO 6
  IF ~  Global("Stolen_Papers","GLOBAL",1)
~ THEN REPLY #36536 /* ~"당신이 트리스트로부터 훔친 서류에 대해 얘기하고 싶소."~ */ GOTO 9
  IF ~  
!Class(Protagonist,THIEF)
~ THEN REPLY #36537 /* ~"나는 도둑질을 배우는 데 관심이 있소. 내게 가르쳐 줄 수 있겠소?"~ */ GOTO 27
  IF ~~ THEN REPLY #36538 /* ~"이 구역에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 28
  IF ~~ THEN REPLY #36539 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #36490 /* ~그는 잠시 주저한다, 그리고 나서 그는 약간 긴장을 푼다. 당신은 그가 당신이 다른 질문을 할 거라고 생각하고 있었다는 인상을 받는다. 그는 미소를 짓는다. "도둑맞은 해골? 그건 로타의 부하들 짓이지 나하고는 상관없소."~ */
  IF ~  !Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #36540 /* ~"로타가 누구요?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #36541 /* ~"이미 로타에 대한 얘기는 들었소, 나는 그를 만날 방법만 알면 되오."~ */ GOTO 8
  IF ~~ THEN REPLY #36542 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #36543 /* ~"고맙소, 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #36491 /* ~그는 사악한 미소를 짓는다. "그들은 그를 뼈들의 지배자라고 부르며, 그것은 매우 적절한 호칭이오. 그는 어떤 상급 신의 고위 사제들 중에서도 최고의 위치에 있소, 하지만 정확히 어떤 신인지는 나도 모르오." 그는 웃는다. "그는 밤의 뼈들이란 곳에서 살고 있소."~ */
  IF ~~ THEN REPLY #36544 /* ~"이 곳은 어디요?"~ */ JOURNAL #66541 /* ~렌니는 공성탑 남쪽의 흉가에 가면 로타를 만날 수 있다고 말했다. 나는 가서 그에게 모트를 훔친 일에 대해 따져야겠다. ~ */ GOTO 8
  IF ~~ THEN REPLY #36545 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #36546 /* ~"고맙소, 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.0
  SAY #36492 /* ~그는 눈살을 찌푸린다. "글쎄, 나는 내가 그 질문에 대답해야 하는지 모르겠소..." 그는 당신을 한동안 노려보더니 어깨를 으쓱한다. "공성탑의 바로 남쪽에 있는 폐허가 된 건물이오. 쉽게 알아볼 수 있을 거요." 그는 다시 사악한 미소를 짓는다.~ */
  IF ~~ THEN REPLY #36547 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #36548 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY #36493 /* ~그는 침을 꿀꺽 삼키고 당신을 빤히 쳐다본다. 당신은 그의 전신의 근육이 긴장하고 있으며, 그가 도망칠 준비를 하고 있다는 사실을 눈치챈다. 그는 한 손을 태연하게 엉덩이에 갖다 댄다, 그러나 당신은 그가 용수철처럼 팽팽한 상태라는 것을 알 수가 있다. "난 당신이 무슨 말을 하는지 모르겠소. 그만 떠나는 게 좋을 거요."~ */
  IF ~~ THEN REPLY #36549 /* ~사악한 미소를 짓는다: "당신은 내가 무슨 말을 하는지 알고 있소, 렌니. 바이런은 당신에게 트리스트부터 어떤 문서들을 훔치라고 시켰소. 난 그것들을 받으러 왔소."~ */ GOTO 10
  IF ~~ THEN REPLY #36550 /* ~진실: "당신이 트리스트로부터 훔친 서류를 내게 주지 않으면 당신을 죽이겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Lenny_1","GLOBALGood",-1)
~ GOTO 10
  IF ~~ THEN REPLY #36551 /* ~허풍: "당신이 트리스트로부터 훔친 서류를 내게 주지 않으면 당신을 죽이겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lenny_1","GLOBALLaw",-1)
~ GOTO 10
  IF ~~ THEN REPLY #36552 /* ~"더 이상은 못 참겠군. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1 9.2
  SAY #36494 /* ~그는 침을 꿀꺽 삼킨다, 그리고 그의 눈 한쪽 구석이 씰룩거리기 시작한다. 그는 당신의 몸을 뒤덮고 있는 흉터들을 훑어 본다, 그리고 당신을 정면으로 마주보려고 하나 그러지 못한다. "난... 나는 바이런이 시키는 대로 서류들을 훔친 후 파기해 버렸소." 그는 마침내 당신을 똑바로 본다. ~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
!Global("Lenny_Gave_Exp","GLOBAL",1)
~ THEN REPLY #36553 /* ~"정말? 그럼 당신은 왜 그렇게 안절부절 못하고 있소? 내가 맞춰 볼까? 바이런은 당신이 서류를 파기했다고 생각하고 있으나 당신은 파기하지 않았소. 아마 다른 곳에 보관을 했겠지. 아마 추후의 공갈용으로?"~ */ DO ~AddexperienceParty(1000)
SetGlobal("Lenny_Gave_Exp","GLOBAL",1)
~ GOTO 11
  IF ~  CheckStatLT(Protagonist,12,INT)
!Global("Lenny_Gave_Exp","GLOBAL",1)
~ THEN REPLY #36554 /* ~"그럼 당신은 왜 그렇게 안절부절 못하고 있소, 렌니? 난 당신이 거짓말을 하고 있다고 생각하오."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Lenny_Gave_Exp","GLOBAL",1)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,11,INT)
Global("Lenny_Gave_Exp","GLOBAL",1)
~ THEN REPLY #67296 /* ~"정말? 그럼 당신은 왜 그렇게 안절부절 못하고 있소? 내가 맞춰 볼까? 바이런은 당신이 서류를 파기했다고 생각하고 있으나 당신은 파기하지 않았소. 아마 다른 곳에 보관을 했겠지. 아마 추후의 공갈용으로?"~ */ GOTO 11
  IF ~  CheckStatLT(Protagonist,12,INT)
Global("Lenny_Gave_Exp","GLOBAL",1)
~ THEN REPLY #67297 /* ~"그럼 왜 그렇게 안절부절 못하는 거요, 렌니? 당신은 거짓말을 하고 있는 것 같소."~ */ GOTO 11
  IF ~~ THEN REPLY #67298 /* ~"이만 실례해야겠소, 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1 10.2 10.3
  SAY #36495 /* ~그는 잠시 당신을 쳐다보더니 갑자기 돌아서서 도망친다. ~ */
  IF ~  CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #36556 /* ~도망치기 전에 그를 붙잡는다.~ */ GOTO 12
  IF ~  CheckStatLT(Protagonist,12,DEX)
~ THEN REPLY #36557 /* ~도망치기 전에 그를 붙잡는다.~ */ GOTO 13
  IF ~~ THEN REPLY #36558 /* ~그를 그냥 보내준다.~ */ DO ~RunAwayFromEx(Protagonist,TEN_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #36496 /* ~그가 도망치려고 하는 순간 당신은 앞으로 도약하여 그의 팔을 움켜쥔다. 그는 잠시 몸부림을 친다, 그러나 그는 당신의 괴력의 적수가 되지 못한다. 마침내 그는 당신 손아귀에서 힘없이 늘어진다. "좋소, 난 그 서류들을 파기하지 않았소! 날 놓아주면 그것들을 당신에게 주겠소." 당신은 그를 잡고 있던 손을 느슨하게 풀어 준다. ~ */
  IF ~~ THEN REPLY #36559 /* ~"문서를 내게 넘기시오, 렌니."~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #36560 /* ~"왜 그 문서를 보존한 거요, 렌니? 공갈용이라 생각되는군."~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #36561 /* ~"그래, 당신은 그 문서를 보존해 두었군. 왜?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #36497 /* ~그가 도망치려고 하는 순간 당신은 앞으로 도약하여 그를 잡으려고 시도한다. 하지만 그는 민첩하게 당신 손아귀를 벗어난 후 당신 옆으로 비켜나려고 한다. 당신의 사냥감이 도망치는 데 성공할 듯하자 당신은 더욱 필사적으로 그를 향해 돌격한다. 당신은 그를 잡는 데는 실패하나, 그와 세게 충돌해 그가 균형을 잃도록 만든다. 당신은 그의 도망을 저지하는 데 성공한다. "좋소, 난 그 서류들을 파기하지 않았소! 날 놓아주면 그것들을 당신에게 주겠소." ~ */
  IF ~~ THEN REPLY #36562 /* ~"문서를 내게 넘기시오, 렌니."~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #36563 /* ~"왜 그 문서를 보존한 거요, 렌니? 공갈용이라 생각되는군."~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #36564 /* ~"그래, 당신은 그 문서를 보존해 두었군. 왜?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 14 // from: 12.0 13.0
  SAY #36498 /* ~그는 한숨을 쉰다. "나는... 그것들을 내 몸에 지니고 있지 않소." 당신이 인상을 찌푸리자 그는 더욱 공포에 질린다. "맹세하오! 난 그것들을 지니고 있지 않소! 난 그것들을 창고에 보관했소!" 그는 숨을 헐떡이며 당신을 계속 쳐다본다.~ */
  IF ~~ THEN REPLY #36565 /* ~"그럼 가서 문서를 가져오시오."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #36499 /* ~그는 슬프게 고개를 젓는다. "그럴 수가 없소. 서류들은 창고에 있고, 그 곳은 지금은 영업을 하고 있지 않소. 소문에 의하면 경영진이 바뀌었다고 하오... 하지만 그것이 사실인지는 나도 모르오. 어쨌든 지금은 찾을 수가 없소." 그는 겁먹은 표정으로 당신을 바라본다. ~ */
  IF ~  Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36566 /* ~"그 문제는 내가 이미 처리했소, 그러니 우린 가서 문서를 가져올 수 있소."~ */ GOTO 16
  IF ~  !Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36567 /* ~"그럼 난 이 사건에 대해 조사하고 문서도 내가 직접 찾도록 하겠소."~ */ GOTO 16
  IF ~~ THEN REPLY #36568 /* ~"더 이상은 못 참겠군. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 15.1 21.1
  SAY #36500 /* ~그는 어깨를 으쓱한다. "좋소. 그 독사같은 픽잇이 이번에도 승리하는군..." 그는 반항적인 표정으로 당신을 쳐다본다. ~ */
  IF ~~ THEN REPLY #36569 /* ~"그냥 가서 문서나 가져오시오, 렌니."~ */ GOTO 17
  IF ~~ THEN REPLY #36570 /* ~"실은 이 게임의 승자는 트리스트요, 렌니."~ */ GOTO 26
END

IF ~~ THEN BEGIN 17 // from: 16.0 26.0
  SAY #36501 /* ~"창고에 가서 사무원에게 *나는 대출을 받으러 왔소*라고 말하시오, 그러면 그가 서류를 내줄 거요. 나중에 봅시다." 그는 갑자기 줄행랑을 친다. ~ */
  IF ~~ THEN REPLY #36571 /* ~떠난다.~ */ DO ~AddexperienceParty(2000)
SetGlobal("Stolen_Papers","GLOBAL",3)
RunAwayFromEx(Protagonist,TEN_AI_SECONDS,FALSE)
~ JOURNAL #36021 /* ~렌니는 트리스트의 채무 서류를 창고에 보관하고 있다고 한다. 난 그것을 사무원으로부터 찾을 수가 있다. ~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.1 13.1
  SAY #36502 /* ~그는 코웃음을 치고 반항적인 표정으로 당신을 쳐다본다. "나는 당신 보스 픽잇에게 배신을 때리고 트리스트를 구하기 위해 그것들을 보관해 두었소!" 그는 고개를 젓는다. "어디 내게 공갈을 쳐 보시오..."~ */
  IF ~~ THEN REPLY #36572 /* ~"배신을 때려?"~ */ GOTO 19
  IF ~~ THEN REPLY #36573 /* ~"왜 그에게 배신을 때리오?"~ */ GOTO 21
  IF ~~ THEN REPLY #36574 /* ~"그런데 픽잇은 내 보스가 아니오."~ */ GOTO 22
END

IF ~~ THEN BEGIN 19 // from: 18.0 20.0
  SAY #36503 /* ~"그래, 배신을 때린단 말이오." 그는 당신을 잠시 쳐다보다가 당신이 그 말의 의미를 모른다는 사실을 비로소 깨닫는다. "그 말은 내가 그를 하모니움에 고발할 생각이었다는 뜻이오."~ */
  IF ~~ THEN REPLY #36575 /* ~"왜 그에게 배신을 때리오?"~ */ GOTO 21
  IF ~~ THEN REPLY #36576 /* ~"그런데 픽잇은 내 보스가 아니오."~ */ GOTO 22
END

IF ~~ THEN BEGIN 20 // from: 12.2 13.2
  SAY #36504 /* ~그는 코웃음을 치고 반항적인 표정으로 당신을 쳐다본다. "나는 당신 보스 픽잇에게 배신을 때리고 트리스트를 구하기 위해 그것들을 보관해 두었소!"~ */
  IF ~~ THEN REPLY #36577 /* ~"배신을 때려?"~ */ GOTO 19
  IF ~~ THEN REPLY #36578 /* ~"왜 그에게 배신을 때리오?"~ */ GOTO 21
  IF ~~ THEN REPLY #36579 /* ~"그런데 픽잇은 내 보스가 아니오."~ */ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 18.1 19.0 20.1
  SAY #36505 /* ~그는 다소의 긍지를 가지고 당신을 쳐다본다. "나는 도둑일지는 모르나 나름대로의 도덕적 기준은 지니고 있소. 나는 불쌍한 사람을 죽이거나, 픽잇이 트리스트와 그녀의 남편에게 한 것과 같은 짓은 하지 않소." 그는 고개를 젓고 눈길을 돌린다. "나는 당신 보스에게 그가 하는 일은 옳지 못하다고 말했고, 그러자 그는 날 비웃었소."~ */
  IF ~~ THEN REPLY #36580 /* ~"그런데 픽잇은 내 보스가 아니오."~ */ GOTO 22
  IF ~~ THEN REPLY #36581 /* ~"가서 문서를 가져옵시다, 렌니."~ */ GOTO 16
END

IF ~~ THEN BEGIN 22 // from: 18.2 19.1 20.2 21.0 26.1
  SAY #36506 /* ~그는 믿을 수 없다는 표정으로 당신을 쳐다본다. "정말이오? 난... 하지만 당신은..." 그는 당신을 자세히 살피더니 곧 웃음을 터뜨린다. "당신은 내가 입을 열게 하려고 날 속였군!" 그는 고개를 저으며 존경하는 눈빛으로 당신을 본다. "훌륭한 솜씨요, 친구."~ */
  IF ~~ THEN REPLY #36582 /* ~"가서 문서를 가져옵시다, 렌니."~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #36507 /* ~"그럴 수가 없소. 서류들은 창고에 있고, 그 곳은 지금은 영업을 하고 있지 않소. 소문에 의하면 경영진이 바뀌었다고 하오... 하지만 그것이 사실인지는 나도 모르오. 어쨌든 지금은 찾을 수가 없소." 그는 겁먹은 표정으로 당신을 바라본다. "그게 내가 트리스트를 아직 돕지 못한 이유요, 친구. 그 염병할 서류들을 찾을 수가 없소."~ */
  IF ~  Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36583 /* ~"그 문제는 내가 이미 처리했소, 그러니 우린 가서 문서를 가져올 수 있소."~ */ GOTO 24
  IF ~  !Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36584 /* ~"그럼 난 이 사건에 대해 조사하고 문서도 내가 직접 찾도록 하겠소."~ */ GOTO 24
  IF ~~ THEN REPLY #36585 /* ~"더 이상은 못 참겠군. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 23.1 35.1 36.0
  SAY #36508 /* ~그는 미소를 짓는다. "창고에 가서 사무원에게 *나는 대출을 받으러 왔소*라고 말하시오, 그러면 그가 트리스트의 서류를 내줄 거요. 만약 당신이 그에게 *나는 픽잇에게 웃음을 주었소*라고 말하면 그가 보너스를 줄 거요..."~ */
  IF ~~ THEN REPLY #36586 /* ~"무슨 보너스?"~ */ DO ~AddexperienceParty(4000)
SetGlobal("Stolen_Papers","GLOBAL",3)
SetGlobal("Evidence_Papers","GLOBAL",3)
~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #36509 /* ~그는 웃는다. "증거요. 그것을 확실한 사람에게 전해만 주면 픽잇은 당분간 감옥에서 썩게 될 거요..." 그는 잠시 생각한다. "만약 하모니움 멤버들 중 아는 사람이 있다면 그것을 그에게 주시오."~ */
  IF ~  Dead("Byron")
~ THEN REPLY #36587 /* ~"그는 갔소, 렌니. 바이런은 죽었소."~ */ GOTO 41
  IF ~~ THEN REPLY #39445 /* ~"좋소. 안녕히 계시오."~ */ JOURNAL #36022 /* ~렌니는 바이런 픽잇의 불법 활동에 대한 증거를 창고에 보관하고 있다고 한다. 그는 증거를 믿을 수 있는 하모니움에게 가져가라고 권했다. 증거는 사무원에게 얘기하면 찾을 수가 있다. ~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 16.1
  SAY #36510 /* ~그는 눈살을 찌푸린다. "무슨 뜻이오?"~ */
  IF ~~ THEN REPLY #36588 /* ~"당신과는 상관없는 일이오."~ */ GOTO 17
  IF ~~ THEN REPLY #36589 /* ~"나는 픽잇을 위해 일하지 않소, 렌니."~ */ DO ~AddexperienceParty(1000)
~ GOTO 22
END

IF ~~ THEN BEGIN 27 // from: 5.2 33.1 34.1 38.1 40.1
  SAY #36511 /* ~"정말 현재 직업을 포기하고 도둑이 되고 싶소?"~ */
  IF ~~ THEN REPLY #36590 /* ~"그렇소..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 42
  IF ~~ THEN REPLY #52390 /* ~"아니, 생각할 여유를 주시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 5.3
  SAY #36512 /* ~그는 주변을 둘러보더니 어깨를 으쓱한다. "이 곳은 평민들이 사는 마계구요. 이 곳의 삶은 벌통만큼 절박하지는 않소, 그러나 사무구만큼 윤택하지도 않소." 그는 다시 주변을 둘러본다. "그것 말고는 달리 할 말이 없소."~ */
  IF ~~ THEN REPLY #36591 /* ~"내게 벌통에 대해 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 29
  IF ~~ THEN REPLY #36592 /* ~"내게 사무구에 대해 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 30
  IF ~~ THEN REPLY #36593 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #36594 /* ~"고맙소, 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 30.0
  SAY #36513 /* ~그는 고개를 저으며 웃는다. "그 곳은 시길의 슬럼이라고 할 수 있소. 저승 말고는 달리 갈 곳이 없는 자들이 사는 곳이오" 그는 잠시 멈춘다. "그 곳에 대해서는 달리 할 말이 없소."~ */
  IF ~~ THEN REPLY #36595 /* ~"내게 사무구에 대해 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 30
  IF ~~ THEN REPLY #36596 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #36597 /* ~"고맙소, 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.1 29.0
  SAY #36514 /* ~그는 미소짓는다. "이름 그대로요. 사무직에 종사하는 사람들로 득실거리는 곳이오. 만약 서류에 관련된 일 때문에 골머리를 앓고 있다면 그 곳에 가는 것이 최선이오." 그는 어깨를 으쓱한다. "그 곳에 대해서는 달리 할 말이 없소."~ */
  IF ~~ THEN REPLY #36598 /* ~"내게 벌통에 대해 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 29
  IF ~~ THEN REPLY #36599 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #36600 /* ~"고맙소, 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #36515 /* ~그는 미소를 지은 후 웃음을 터뜨린다. "대부분의 사람들은 시길이 다원 우주의 중심이라고 믿고 있소. 내 개인적인 생각으로 그건 이 도시에 사는 작자들이 싸는 똥같은 얘기요." 그는 계속 미소를 짓는다. ~ */
  IF ~~ THEN REPLY #36601 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #36602 /* ~"고맙소, 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 33 38 40 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 32 // from:
  SAY #36516 /* ~렌니가 보인다. 당신이 다가가자 그는 미소짓는 시늉을 한다. "다시 만나 반갑소. 이 영광을 누구에게 돌려야겠소?"~ */
  IF ~~ THEN REPLY #36603 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #36604 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 38 40 even though they appear after this state */
~  Global("Stolen_Papers","GLOBAL",2)
~ THEN BEGIN 33 // from:
  SAY #36517 /* ~렌니가 보인다. 그는 당신이 별로 반갑지 않은 듯하다. "뭘 원하는 거요?"~ */
  IF ~~ THEN REPLY #36605 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 34
  IF ~  
!Class(Protagonist,THIEF)
~ THEN REPLY #36606 /* ~"나는 도둑질을 배우는 데 관심이 있소. 내게 가르쳐 줄 수 있겠소?"~ */ GOTO 27
  IF ~~ THEN REPLY #36607 /* ~"아무 것도 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #36518 /* ~그는 눈살을 찌푸린다. "더 이상 질문도 대답도 없소. 당신 보스 픽잇에게로 돌아가서 날 그냥 내버려 두라고 전하시오." 그는 당신을 노려본다.~ */
  IF ~~ THEN REPLY #36608 /* ~"픽잇은 내 보스가 아니오."~ */ GOTO 35
  IF ~  
!Class(Protagonist,THIEF)
~ THEN REPLY #36609 /* ~"나는 도둑질을 배우는 데 관심이 있소. 내게 가르쳐 줄 수 있겠소?"~ */ GOTO 27
  IF ~~ THEN REPLY #36610 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #36519 /* ~그는 믿을 수 없다는 표정으로 당신을 쳐다본다. "정말이오? 난... 하지만 당신은..." 그는 당신을 자세히 살피더니 곧 웃음을 터뜨린다. "당신은 내가 입을 열게 하려고 날 속였군!" 그는 고개를 저으며 존경하는 눈빛으로 당신을 본다. "훌륭한 솜씨요, 친구." 그는 잠시 멈춘다. "당신은 픽잇에게 어떻게 웃음을 주고 싶소?"~ */
  IF ~~ THEN REPLY #36611 /* ~"'그에게 웃음을 주었다?'"~ */ GOTO 36
  IF ~~ THEN REPLY #36612 /* ~"그래, 그거 좋을 것 같소."~ */ DO ~SetGlobal("Evidence_Papers","GLOBAL",3)
~ GOTO 24
  IF ~~ THEN REPLY #36613 /* ~"아니오, 온 목적을 달성한 이상 이제는 관심이 없소."~ */ GOTO 37
  IF ~~ THEN REPLY #36614 /* ~"난 그렇게 생각하지 않소, 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #36520 /* ~그는 미소짓는다. "그렇소, 그에게 웃음을 준다는 말은... 그를 골탕먹인다, 따돌린다, 감방에 처넣는다는 뜻이오."~ */
  IF ~~ THEN REPLY #36615 /* ~"그래, 그거 좋을 것 같소."~ */ DO ~SetGlobal("Evidence_Papers","GLOBAL",3)
~ GOTO 24
  IF ~~ THEN REPLY #36616 /* ~"아니오, 온 목적을 달성한 이상 이제 그런 일에는 관심이 없소."~ */ GOTO 37
  IF ~~ THEN REPLY #36617 /* ~"난 그렇게 생각하지 않소, 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.2 36.1
  SAY #36521 /* ~그는 어깨를 으쓱한다. "그럼 더 이상 할 말이 없군. 안녕히 가시오."~ */
  IF ~~ THEN REPLY #36618 /* ~"안녕히 계시오."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 40 even though they appear after this state */
~  GlobalGT("Evidence_Papers","GLOBAL",2)
~ THEN BEGIN 38 // from:
  SAY #36522 /* ~렌니가 보인다. 당신이 다가가자 그는 미소를 짓는다. "안녕하시오, 친구. 어떤 도움이 필요하오?"~ */
  IF ~~ THEN REPLY #36619 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 39
  IF ~  
!Class(Protagonist,THIEF)
~ THEN REPLY #36620 /* ~"나는 도둑질을 배우는 데 관심이 있소. 내게 가르쳐 줄 수 있겠소?"~ */ GOTO 27
  IF ~~ THEN REPLY #36621 /* ~"아무 것도 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0 40.0
  SAY #36523 /* ~"나는 이미 당신에게 내가 아는 것을 모두 말했소. 다 이상 당신에게 대답해줄 것이 없소."~ */
  IF ~~ THEN REPLY #36622 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Byron_Arrested","GLOBAL",0)
~ THEN BEGIN 40 // from:
  SAY #36524 /* ~렌니가 보인다. 당신이 다가가자 그는 미소를 짓는다. "안녕하시오, 친구. 바이런에 대해선 들었소. 이보다 더 기분이 좋을 순 없소." 그는 싱긋 웃는다. "어떤 도움이 필요하오?"~ */
  IF ~~ THEN REPLY #36623 /* ~"질문할 것들이 있소..."~ */ GOTO 39
  IF ~  
!Class(Protagonist,THIEF)
~ THEN REPLY #36624 /* ~"나는 도둑질을 배우는 데 관심이 있소. 내게 가르쳐 줄 수 있겠소?"~ */ GOTO 27
  IF ~~ THEN REPLY #36625 /* ~"아무 것도 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 25.0
  SAY #39446 /* ~그는 잠시 머뭇거리더니 짓궂은 미소를 짓는다. "정말이오? 멋지군... 인과응보요."~ */
  IF ~~ THEN REPLY #39447 /* ~"안녕히 계시오, 렌니."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 27.0
  SAY #52391 /* ~"내게 당신이 알고 있는 것을 보여주면 조언을 해줄 수는 있소." 그는 당신이 아는 것에 대해 시범을 보이는 것을 유심히 지켜본다. 그는 때때로 중단을 시키고, 당신에게 기술을 향상시킬 수 있는 방법을 일러준다. 이렇게 몇 시간이 지나자 당신은 스스로의 도둑로서의 능력에 자신을 가지게 된다. ~ */
  IF ~  Global("Thief_Training","GLOBAL",0)
HasItem("Zpunch",Myself)
~ THEN REPLY #52392 /* ~"고맙소, 렌니."~ */ DO ~SetGlobal("Thief_Training","GLOBAL",3)
GiveExperience(Protagonist,2500)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ GOTO 43
  IF ~  GlobalGT("Thief_Training","GLOBAL",0)
HasItem("Zpunch",Myself)
~ THEN REPLY #52392 /* ~"고맙소, 렌니."~ */ GOTO 43
  IF ~  !HasItem("Zpunch",Myself)
~ THEN REPLY #64222 /* ~"고맙소. 그만 가야겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0 42.1
  SAY #64223 /* ~렌니는 미소를 짓고 고개를 끄덕인다. "여기 있소. 이것도 가져가시오. 당신이 새 직업에 적응하는 것을 돕기 위한 내 선물이오... 내게는 그것이 더 이상 필요가 없소." 그는 당신에게 한 쌍의 펀치 대거를 건네준다.~ */
  IF ~~ THEN REPLY #64224 /* ~"고맙소, 렌니. 안녕히 계시오."~ */ DO ~GiveItem("Zpunch",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from:
  SAY #64783 /* ~"내게 당신이 알고 있는 것을 보여주면 조언을 해줄 수는 있소." 그는 당신이 아는 것에 대해 시범을 보이는 것을 유심히 지켜본다. 그는 때때로 중단을 시키고, 당신에게 기술을 향상시킬 수 있는 방법을 일러준다. 이렇게 몇 시간이 지나자 당신은 스스로의 도둑로서의 능력에 자신을 가지게 된다. ~ */
  IF ~~ THEN REPLY #64784 /* ~"고맙소. 이만 실례해야겠소."~ */ EXIT
END
