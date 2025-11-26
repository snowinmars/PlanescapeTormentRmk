// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANIZIUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DANIZIUS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 26 even though they appear after this state */
~  Global("Current_Area","GLOBAL",702)
~ THEN BEGIN 0 // from:
  SAY #59314 /* ~기스양키는 통렬한 시선으로 당신을 쳐다본다, 그리고 아무 말도 하지 않는다. 당신이 그에게 말을 걸자,그는 바닥에 침을 뱉고 당신으로부터 돌아선다. ~ */
  IF ~~ THEN REPLY #59317 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 26 even though they appear after this state */
~  NumTimesTalkedTo(0)
!NearbyDialog("Ddakkon")
~ THEN BEGIN 1 // from:
  SAY #59321 /* ~얼굴이 가늘고 눈빛이 심술궂은 청황색 피부의 기스양키가 보인다. 그의 분노는 냄새를 맡을 수 있을 정도로 격렬하다. 당신이 다가가자 그는 당신을 쳐다본다. "무엇을 원하시오?" 그는 으르렁거린다.~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59323 /* ~"한 친구가 당신이 도움을 필요로 하고 있다고 내게 말했주었소."~ */ GOTO 11
  IF ~~ THEN REPLY #59327 /* ~"당신은 누구요?"~ */ GOTO 2
  IF ~~ THEN REPLY #59328 /* ~"커스트에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ GOTO 3
  IF ~~ THEN REPLY #59329 /* ~"이 곳에 있다는 디바에 대해 뭐라도 들은 바가 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #59331 /* ~"아무 것도 아니오. 신경 쓰지 마시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 3.2 18.1 25.1
  SAY #59334 /* ~"나는 안'이지우스요, 그리고 나를 부를 때는 각하라는 호칭을 붙이시오. 나는 도시의 지도자들 중 하나로 그럴 만한 자격이 있소" 그는 당신을 유심히 쳐다본다. "당신은 이 곳 사람이 아니군. 뭘 원하오 ?"~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59335 /* ~"한 친구가 당신이 도움을 필요로 하고 있다고 내게 말해주었소."~ */ GOTO 11
  IF ~~ THEN REPLY #59338 /* ~"나는 어떤 디바를 찾고 있소."~ */ GOTO 4
  IF ~~ THEN REPLY #59339 /* ~"나는 내가 잃어버린 것을 찾고 있소."~ */ GOTO 5
  IF ~~ THEN REPLY #59341 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 18.2 25.2
  SAY #59345 /* ~그는 냉소한다. "시간이 있는 사람에게 물어보시오. 내겐 생각해야 할 중요한 일들이 있소."~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59346 /* ~"한 친구가 당신이 도움을 필요로 하고 있다고 내게 말했주었소."~ */ GOTO 11
  IF ~~ THEN REPLY #59350 /* ~"시의 중대사?"~ */ GOTO 6
  IF ~~ THEN REPLY #59352 /* ~"어쨌든 당신은 누구요?"~ */ GOTO 2
  IF ~~ THEN REPLY #59354 /* ~"나는 어떤 디바를 찾고 있소."~ */ GOTO 4
  IF ~~ THEN REPLY #59356 /* ~"그러리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.3 2.1 3.3 18.3 25.3
  SAY #59401 /* ~그는 눈살을 찌푸린다. "디바? 대체 디바와 무슨 용건이오, 그리고 왜 커스트에서 디바를 찾는 거요?"~ */
  IF ~~ THEN REPLY #59410 /* ~"나는 그가 내 죽음의 비밀을 가지고 있다고 생각하오."~ */ GOTO 7
  IF ~~ THEN REPLY #59411 /* ~"나는 디바가 여기 있다는 얘기를 들었소.혹시 그에 대해 아는 바가 없소?"~ */ GOTO 8
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59413 /* ~"그 일은 잊으시오. 한 친구가 당신이 도움을 필요로 한다고 내게 말해주었소."~ */ GOTO 11
  IF ~~ THEN REPLY #59415 /* ~"관두시오. 가야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #59417 /* ~"그래 그게 뭐요? 시의 지도자로서 내가 당신을 도울 수 있을지도 모르오."~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59418 /* ~"시의 지도자로서 당신에겐 *내* 도움이 필요할 거요. 한 친구가 당신이 도움을 필요로 한다고 내게 말해주었소."~ */ GOTO 11
  IF ~~ THEN REPLY #59419 /* ~"나는 내 죽음을 잃어버렸소. 난 그것을 찾아야만 하오."~ */ GOTO 7
  IF ~~ THEN REPLY #59420 /* ~"별로 중요한 것이 아니오. 내 스스로 찾을 수가 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #59421 /* ~"별로 중요한 것이 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1 8.0
  SAY #59422 /* ~그는 당신을 유심히 살피면서 당신을 평가하고 있는 듯하다, 그리고 결론을 내린다. "당신이 도울 일은 아무 것도 없소. 이제 비켜 주시오. 생각을 해야겠소."~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59423 /* ~"한 친구가 당신이 도움을 필요로 하고 있다고 내게 말했주었소."~ */ GOTO 11
  IF ~~ THEN REPLY #59424 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 5.1
  SAY #59427 /* ~그는 당신이 완전히 돌았다고 생각하는 표정으로  당신을 쳐다본다. "당신은 정말 도움이 심각하게 필요한 것 같소. 안녕히 계시오." 그는 빳빳하게 당신으로부터 돌아선다.~ */
  IF ~~ THEN REPLY #59431 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY #59434 /* ~"내가 생각할 수 있는 한은 아니오." 그는 계속 당신을 쳐다본다. "미안하지만 용무가 있어 실례해야겠소."~ */
  IF ~~ THEN REPLY #59436 /* ~"시의 중대사?"~ */ GOTO 6
  IF ~~ THEN REPLY #59438 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.2
  SAY #59441 /* ~"그럼 왜 내 명상을 방해한 거요? 쇠방망이로 맞아야 정신을 차리겠소? 꺼지시오!" 그는 당신으로부터 고개를 돌린다.~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59444 /* ~"한 친구가 당신이 도움을 필요로 하고 있다고 내게 말했주었소."~ */ GOTO 11
  IF ~~ THEN REPLY #59448 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #59451 /* ~"좋소. 당신은 커스트 지하에 갇혀 있는 동안 자신이 원하는 것을 찾을 수 있을 거요. 경비병!" 경비병들이 당신 주위에 갑자기 나타난다, 그리고 당신은 후두부를 세게 얻어맞는다. 눈 앞이 캄캄해진다...~ */
  IF ~~ THEN REPLY #59454 /* ~"빌어먹을..."~ */ DO ~FadeToColor([20.0],0)
SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.0 2.0 3.0 4.2 5.0 6.0 9.0 18.0 25.0
  SAY #59460 /* ~그는 바짝 긴장한다. "무슨 얘기를 들었소?"~ */
  IF ~~ THEN REPLY #59462 /* ~"당신이 정적 때문에 곤란을 겪고 있다고 들었을 뿐이오."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #59464 /* ~그의 눈이 잠시 벌어졌다가 다시 가늘어진다. "알겠소. 당신은 날 도울 거요?"~ */
  IF ~~ THEN REPLY #59468 /* ~"그건 당신이 나로부터 무엇을 원하는지에 달려 있소."~ */ GOTO 14
  IF ~~ THEN REPLY #59471 /* ~"그렇소."~ */ DO ~SetGlobal("C_Off","GLOBAL",3)
~ GOTO 15
  IF ~~ THEN REPLY #59473 /* ~"아니오."~ */ DO ~SetGlobal("C_Off","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.2 14.1
  SAY #59485 /* ~"그럼 당신은 내게 쓸모가 없소. 꺼지시오!" 그는 가벼운 손짓으로 당신에게 꺼지라고 한 후  당신을 무시한다.~ */
  IF ~~ THEN REPLY #59486 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #59490 /* ~"미묘한 문제요. 내 라이벌 중 하나에게 버릇을 좀 가르쳐 줄 필요가 있소. 만약 당신에게 결벽증이 있다면 그녀를 꼭 죽여야 할 필요는 없소."~ */
  IF ~~ THEN REPLY #59493 /* ~"그럼 하겠소."~ */ DO ~SetGlobal("C_Off","GLOBAL",3)
~ GOTO 15
  IF ~~ THEN REPLY #59496 /* ~"관두시오."~ */ DO ~SetGlobal("C_Off","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 12.1 14.0 19.0
  SAY #59499 /* ~"다음과 같은 일을 해주어야겠소. 샤바라는 여자... 그녀는 가장 많은 돈을 제시하는 자에게 자신의 영향력을 팖으로서 이 도시의 시장과 내 관계를 위협하고 있소. 나는 당신이 그녀에게 굴욕을 주길 원하오. 당신이 해야 할 일은 경비대 대장에게 가서 그녀가 당신을 고용해 나를 해치려고 했다는 말만 하면 되오. 이 일만 해주면 후사하겠소. 그녀를 사전에 만나고 싶다면 그녀는 행정부 건물 근처에 있소."~ */
  IF ~~ THEN REPLY #59502 /* ~"다녀오겠소."~ */ JOURNAL #59505 /* ~커스트의 관료인 기스양키 안'이지우스는 내가  경비대 대장에게 거짓말을 하여 그의 정적을 망신시키기를 원한다. 그녀의 이름은 샤바이며 행정부 건물 부근에 있다.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 26 even though they appear after this state */
~  NumTimesTalkedTo(0)
NearbyDialog("Ddakkon")
~ THEN BEGIN 16 // from:
  SAY #59515 /* ~얼굴이 가늘고 눈빛이 심술궂은 청황색 피부의 기스양키가 보인다. 그의 분노는 냄새를 맡을 수 있을 정도로 격렬하다. 당신이 다가가자 그는 당신을 쳐다본다. "무엇을 원하시오?" 그는 으르렁거린다.~ */
  IF ~~ THEN REPLY #59516 /* ~"당신에게 물어볼 것이 좀 있소..."~ */ EXTERN ~DDAKKON~ 357
END

IF ~~ THEN BEGIN 17 // from:
  SAY #59519 /* ~기스양키가 눈을 가늘게 뜬다. "나는 내가 당신네 종족에게 가지고 있었던 증오를 버렸소. 나는 우리 두 종족 간의 하찮은 불화 따위는 극복했소. 이 때문에 그들은 나를 추방했소 - 하지만 정신적으로 나는 그들에게 승리했소. 당신도 그렇다고 자신있게 말 할 수 있소?"~ */
  IF ~~ THEN REPLY #59526 /* ~"자, 당신들 두 사람... 그만 멈추시오. 질문할 것이 있소."~ */ GOTO 18
  IF ~~ THEN REPLY #59527 /* ~"관두시오. 우린 떠나겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #59530 /* ~"무슨 질문이오?"~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59533 /* ~"한 친구가 당신이 도움을 필요로 하고 있다고 내게 말했주었소."~ */ GOTO 11
  IF ~~ THEN REPLY #59537 /* ~"당신은 누구요?"~ */ GOTO 2
  IF ~~ THEN REPLY #59540 /* ~"커스트에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ GOTO 3
  IF ~~ THEN REPLY #59542 /* ~"이 곳에 있다는 디바에 대해 뭐라도 들은 바가 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #59544 /* ~아무 것도 아니오. 신경 쓰지 마시오 ."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 26 even though they appear after this state */
~  Global("C_Off","GLOBAL",1)
~ THEN BEGIN 19 // from:
  SAY #59547 /* ~"뭘 원하나, 개야?"~ */
  IF ~~ THEN REPLY #59549 /* ~"마음을 바꿨소. 돕겠소. 무엇이 필요하시오?"~ */ DO ~SetGlobal("C_Off","GLOBAL",3)
~ GOTO 15
  IF ~~ THEN REPLY #59553 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 26 even though they appear after this state */
~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",9)
~ THEN BEGIN 20 // from:
  SAY #59558 /* ~"그래, 진전은 좀 있소?"~ */
  IF ~  Global("C_Off","GLOBAL",4)
~ THEN REPLY #59560 /* ~"당신 라이벌이 만약 당신을 배신한다면 많은 돈을 주겠다고 내게 제의했소."~ */ GOTO 21
  IF ~  Global("C_Off","GLOBAL",7)
~ THEN REPLY #59562 /* ~"나는 경비대 대장과 얘기를 나누었고, 그는 그녀를 감옥으로 호위하기 위해 부대를 파견하겠다고 했소."~ */ DO ~SetGlobal("C_Off","GLOBAL",9)
GivePartyGold(3000)
AddexperienceParty(100000)
~ JOURNAL #59578 /* ~안'이지우스는 내게 샤바를 커스트 경비대에 넘긴 대가를 두둑하게 주었다 - 그처럼 사소한 거짓말을 정당화 시키고도 남을 정도로.~ */ GOTO 22
  IF ~~ THEN REPLY #59568 /* ~"노력 중이오. 질문할 것이 좀 있소..."~ */ GOTO 23
  IF ~~ THEN REPLY #59574 /* ~"노력 중이오. 곧 돌아오리다."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #59582 /* ~"뭐?" 그럼 나도 두 배를 주겠소!"~ */
  IF ~~ THEN REPLY #59585 /* ~"거래 성립이오."~ */ DO ~SetGlobal("C_Off","GLOBAL",5)
~ GOTO 23
  IF ~~ THEN REPLY #59588 /* ~"어디 봅시다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #59590 /* ~"그럼 내가 당신에게 이걸 줘야겠군. "그는 당신에게 동전이 든 묵직한 주머니를 준다. "그만 가보시오."~ */
  IF ~~ THEN REPLY #59592 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.2 21.0
  SAY #59595 /* ~"그렇다면 꺼지시오! 아니면 산 채로 당신 가죽을 벗기겠소!"~ */
  IF ~~ THEN REPLY #59599 /* ~"안녕히 계시오."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 26 even though they appear after this state */
~  GlobalGT("C_Off","GLOBAL",5)
~ THEN BEGIN 24 // from:
  SAY #59601 /* ~"우리는 더 이상 서로에게 할 말이 없소. 우리의 협력 관계는 이제 끝났소. 의심받을 일은 피해야 하오. 날 그냥 내버려 두시오."~ */
  IF ~~ THEN REPLY #59603 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 26 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 25 // from:
  SAY #59605 /* ~"왜 날 이렇게 귀찮게 하는 거요?"~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59606 /* ~"한 친구가 당신이 도움을 필요로 하고 있다고 내게 말했주었소."~ */ GOTO 11
  IF ~~ THEN REPLY #59609 /* ~"당신은 누구요?"~ */ GOTO 2
  IF ~~ THEN REPLY #59610 /* ~"커스트에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ GOTO 3
  IF ~~ THEN REPLY #59611 /* ~"이 곳에 있다는 디바에 대해 뭐라도 들은 바가 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #59612 /* ~아무 것도 아니오. 신경 쓰지 마시오."~ */ EXIT
END

IF WEIGHT #0 ~  CreatureInArea("AR0900")
~ THEN BEGIN 26 // from:
  SAY #66922 /* ~기스양키 관료는 필사적이다. "제발! 당신은 날 도와주어야만 하오! 판사에게 내가 받고있는 혐의들 중 그 어느 것도 범죄로서 성립되지 않는다는 걸 설명해 주시오!"~ */
  IF ~~ THEN REPLY #66923 /* ~"노력해보겠소..."~ */ EXIT
  IF ~~ THEN REPLY #66924 /* ~"어디 두고 봅시다..."~ */ EXIT
END
