// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYI'MINN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DYI'MINN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  GlobalGT("Kill_Githyanki_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #44367 /* ~이 누런 피부의 사납게 생긴 사내는 당신을 잠시 쳐다본다. 그는 눈이 휘둥그렇게 뜨고, 재빨리 칼을 뽑는다. "개자식! 기스저라이를 애호하는 개자식 같으니!" 그는 당신에게 달려든다!~ */
  IF ~~ THEN REPLY #44368 /* ~공격한다.~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44369 /* ~도망친다.~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
Global("Know_Yiminn","AR0500",0)
~ THEN BEGIN 1 // from:
  SAY #44372 /* ~이 남자는 누런 빛의 거칠고 가죽 같은 피부를 지니고 있으며, 몹시 여윈 얼굴을 하고 있다. 그의 얼굴은 각이 졌고, 그의 작은 코는 인간보다 높은 곳에 달려 있으며, 그의 귀는 매우 뾰족하다. 그의 몸은 문신 자국과 흉터로 뒤덮여 있다. 그는 전투용이라기보다는 장식용으로 보이는 기묘하고 화려한 가죽옷을 걸치고 있다. 그의 검은 돌과 같은 그의 두 눈은 당신이 다가오는 것을 주시하고 있다. "당신이 기억을 찾으려는 인간이군." 그가 냉담한 어조로 말한다. "난 당신을 도울 수가 있소."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44375 /* ~"당신은 기스양키요, 그렇지 않소?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 3
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #44378 /* ~"당신은 누구요?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #44380 /* ~"안녕하시오, 칼을 울리는 자여."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
SetGlobal("Yiminn_zerai","AR0500",1)
~ GOTO 5
  IF ~~ THEN REPLY #44385 /* ~"어떻게 그걸 아시오?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 6
  IF ~~ THEN REPLY #44388 /* ~"내게 어떤 도움을 줄 수가 있겠소?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 7
  IF ~~ THEN REPLY #44390 /* ~"관심이 없소, 고맙소. 안녕히 계시오."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 8
END

IF WEIGHT #3 /* Triggers after states #: 39 even though they appear after this state */
~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
Global("Know_Yiminn","AR0500",0)
~ THEN BEGIN 2 // from:
  SAY #44391 /* ~이 남자는 누런 빛의 거칠고 가죽 같은 피부를 지니고 있으며, 몹시 여윈 얼굴을 하고 있다. 그의 얼굴은 각이 졌고, 그의 작은 코는 인간보다 높은 곳에 달려 있으며, 그의 귀는 매우 뾰족하다. 그의 몸은 문신 자국과 흉터로 뒤덮여 있다. 그는 전투용이라기보다는 장식용으로 보이는 기묘하고 화려한 가죽옷을 걸치고 있다. 그의 검은 돌과 같은 그의 두 눈은 당신이 다가오는 것을 주시하고 있다. "당신이 기억을 찾으려는 인간이군." 그가 냉담한 어조로 말한다. "난 당신을 도울 수가 있소."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44392 /* ~"당신은 기스양키요, 그렇지 않소?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 3
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #44393 /* ~"당신은 누구요?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #44394 /* ~"안녕하시오, 칼을 울리는 자여."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
SetGlobal("Yiminn_zerai","AR0500",1)
~ GOTO 5
  IF ~~ THEN REPLY #44398 /* ~"어떻게 그걸 아시오?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 6
  IF ~~ THEN REPLY #44401 /* ~"내게 어떤 도움을 줄 수가 있겠소?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 7
  IF ~~ THEN REPLY #44402 /* ~"관심이 없소, 고맙소. 안녕히 계시오."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 21.0 22.0
  SAY #44404 /* ~"나는 영광스럽게도 그들의 일원이오." 그의 목소리는 냉담하다. "당신은 기억을 되찾는 일에 내 도움을 원하오?"~ */
  IF ~~ THEN REPLY #44405 /* ~"당신은 누구요?"~ */ GOTO 4
  IF ~~ THEN REPLY #44406 /* ~"흠... 오늘은 사양하겠소, 고맙소."~ */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 3.0 6.0 21.1 22.1
  SAY #44407 /* ~"나는 이'민이오. 나는 기스양키 '낚시꾼'이오. 우리 민족은 신들이 죽으러 가며, 죽은 자들이 기억이 연못 위에 나뭇잎처럼 떠다니는 애스트럴계의 절대적인 지배자요. 내 임무는 죽은 자의 기억의 핵을 회수하여 그것으로부터 정보를 얻는 일이오. 나는 당신의 기억을 찾아 줄 수가 있소. 당신은 그 비용만 지불하면 되오."~ */
  IF ~~ THEN REPLY #44408 /* ~"그 대가란 무엇이오?"~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #44410 /* ~"관심이 없소, 고맙소. 안녕히 계시오."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 1.2 2.2 21.2 22.2
  SAY #44413 /* ~그의 얼굴이 잠시 굳어진다, 그리고 그의 손이 무의식적으로 그의 칼자루로 향함에 따라 그의 근육 역시 긴장한다. "당신은 기스저라이 개들의 언어로 내게 인사를 했소. 그건 무지 탓이오, 아니면 의도된 모욕이오?"~ */
  IF ~~ THEN REPLY #44416 /* ~"무지."~ */ GOTO 12
  IF ~~ THEN REPLY #44417 /* ~"모욕."~ */ GOTO 11
  IF ~~ THEN REPLY #44419 /* ~"당신은 기스저라이가 아니오?"~ */ GOTO 14
  IF ~~ THEN REPLY #44422 /* ~"어느 쪽도 아니었소."~ */ GOTO 19
END

IF ~~ THEN BEGIN 6 // from: 1.3 2.3 21.3 22.3
  SAY #44425 /* ~"당신은 그런 사람처럼 보이오. 나같은 직업에 종사하는 사람은 당신같은 자들을 많이 보오."~ */
  IF ~~ THEN REPLY #44432 /* ~"당신은 누구요?"~ */ GOTO 4
  IF ~~ THEN REPLY #44434 /* ~"날 그냥 내버려 두시오. 당신의 그 엉터리 치료에는 관심이 없소."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 1.4 2.4 21.4 22.4
  SAY #44437 /* ~"나는 기스양키요. 우리에게 있어 애스트럴계는 앞마당과 같소. 나는 사라진 기억의 낚시꾼이오. 나는 기억들을 어떻게 유인하는지, 그리고 그들을 어떻게 낚을 수 있는지 아오" 그는 잠시 멈추고 무슨 음모라도 꾸미듯이 당신에게 다가와 속삭인다. "나는 그것들을 *복원*하는 방법도 알고 있소. 당신은 그 비용만 지불하면 되오."~ */
  IF ~~ THEN REPLY #44439 /* ~"그 대가란 무엇이오?"~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #44441 /* ~"애스트럴계에 대해 내게 어떤 애기를 해줄 수가 있겠소?"~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #44445 /* ~"관심없소. 안녕히 계시오."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 1.5 2.5 3.1 4.1 6.1 7.2 9.1 10.1 16.1 18.1 20.1
  SAY #44447 /* ~"내 제의를 기억하시오, 인간. 만약 기억을 되찾고 싶다면 이 곳으로 날 찾아오시오. 내가 한 말을 기억하시오."~ */
  IF ~~ THEN REPLY #44450 /* ~"그러리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.0 7.0 16.0 18.0 20.0 21.5 22.5 23.0
  SAY #44455 /* ~"대단치 않은 액수요. 가격은 협상의 여지가 있소. 나는 동전 백 닢을 요구하겠소. 당신이 내가 찾아온 기억의 가치를 판정하여 그 결과에 따라 돈을 지불하시오."~ */
  IF ~~ THEN REPLY #44457 /* ~"괜찮은 얘기 같소. 난 어떻게 해야 하오?"~ */ GOTO 10
  IF ~~ THEN REPLY #44458 /* ~"나중에. 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 9.0 23.1
  SAY #44459 /* ~"당신의 기억들을 위한 미끼로서 당신이 현재 지니고 있는 기억이 좀 필요하오. 또한 정신을 집중할 수 있는 조용한 장소도 필요하오. 만약 당신이 날 따라오겠다면 우리는 함께 그러한 장소로 갈 것이오, 그리고 내가 당신을 다시 온전한 존재로 만들어 주겠소. 당신 동료들은 이 곳에 두고 우리들 둘만 가야하오."~ */
  IF ~~ THEN REPLY #44460 /* ~"좋소. 갑시다."~ */ DO ~SetGlobal("Yiminn_Trap","AR0500",1)
StartCutSceneMode()
StartCutSceneEx("Yiminn",FALSE)
~ EXIT
  IF ~~ THEN REPLY #44461 /* ~"지금은 그만두는 게 좋을 것 같소."~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #44462 /* ~"함정 냄새가 나는군, 이 기스양키 개야. 너희의 *일리티드* 주인들은 너희들을 사슬에 묶어 놓았어야 했다.~ */ DO ~AddexperienceParty(1000)
~ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 5.1 10.2 12.3 13.2 19.1 25.2 26.1 27.0
  SAY #44463 /* ~낚시꾼은 아무 말도 없이 유연한 동작으로 무기를 뽑아 당신에게 달려든다!~ */
  IF ~~ THEN REPLY #44464 /* ~싸운다.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44465 /* ~도망친다.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.0 19.0
  SAY #44466 /* ~"지금 당장 용서를 비시오." 그는 부동의 자세로 당신의 전신을 훑어보고 있다. ~ */
  IF ~~ THEN REPLY #44467 /* ~"사과하겠소."~ */ GOTO 18
  IF ~~ THEN REPLY #44468 /* ~"구걸해? 당신에게?"~ */ GOTO 13
  IF ~~ THEN REPLY #44469 /* ~"아니, 당신은 기스저라이라고 불리는 걸 좋아하지 않소?"~ */ GOTO 14
  IF ~~ THEN REPLY #44470 /* ~"생각할 수도 없소."~ */ GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #44471 /* ~"그렇소." 그는 이빨을 드러낸다. "당신은 거의 용서할 수 없는 욕설을 퍼부었소. 그러나 사죄할 기회를 주도록 하겠소."~ */
  IF ~~ THEN REPLY #44472 /* ~"사과하겠소."~ */ GOTO 18
  IF ~~ THEN REPLY #44473 /* ~"아니, 당신은 기스저라이라고 불리는 걸 좋아하지 않소?"~ */ GOTO 14
  IF ~~ THEN REPLY #44474 /* ~"생각할 수도 없소."~ */ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 5.2 12.2 13.1
  SAY #44475 /* ~"나는 *기스양키*요. 나는 기스저라이 개들과는 아무런 관계가 없소. 당신도 그렇게 말할 수 있겠소?"~ */
  IF ~~ THEN REPLY #44476 /* ~진실: "난 기스저라이를 몇 명 아오. 좋은 사람들이지."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALLawful_Yiminn_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #44477 /* ~거짓말: "난 기스저라이를 몇 명 아오. 좋은 사람들이지."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Yiminn_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~  Global("Yiminn_zerai","AR0500",0)
~ THEN REPLY #44478 /* ~진실: "아니오, 기스저라이는 내게 아무런 가치도 없는 존재들이오."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALLawful_Yiminn_1","GLOBALLaw",1)
~ GOTO 16
  IF ~  Global("Yiminn_zerai","AR0500",0)
~ THEN REPLY #44479 /* ~거짓말: "아니오, 기스저라이는 내게 아무런 가치도 없는 존재들이오."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Yiminn_1","GLOBALLaw",-1)
~ GOTO 16
  IF ~  Global("Yiminn_zerai","AR0500",1)
~ THEN REPLY #44480 /* ~진실: "아니오, 기스저라이는 내게 아무런 가치도 없는 존재들이오."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALLawful_Yiminn_1","GLOBALLaw",1)
~ GOTO 17
  IF ~  Global("Yiminn_zerai","AR0500",1)
~ THEN REPLY #44481 /* ~거짓말: "아니오, 기스저라이는 내게 아무런 가치도 없는 존재들이오."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Yiminn_1","GLOBALLaw",-1)
~ GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1 17.0
  SAY #44483 /* ~"그럼 당신은 기스저라이 개들과 동조하오? 당신 시체도 그들과 눕게 될 거요!" 그는 칼을 뽑아 공격한다!~ */
  IF ~~ THEN REPLY #44484 /* ~싸운다.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44488 /* ~도망친다.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.2 14.3
  SAY #44490 /* ~"그럼 그 일은 없었던 걸로 해 두겠소. 다른 일에 대해 얘기하도록 합시다. 당신에게는 회수해야 하는 기억들이 있소, 그리고 난 그것들을 회수할 수가 있소. 우리는 그 가격만 결정하면 되오."~ */
  IF ~~ THEN REPLY #44491 /* ~"그 대가란 무엇이오?"~ */ GOTO 9
  IF ~~ THEN REPLY #44492 /* ~"지금은 관심이 없소."~ */ GOTO 8
END

IF ~~ THEN BEGIN 17 // from: 14.4 14.5
  SAY #44493 /* ~그는 여전히 이를 윽물고 있으며, 전신의 긴장 역시 풀지 않고 있다. "당신은 그들이 당신에게 있어 아무런 존재도 아니라고 말하고 있소. 하지만 당신은 그들의 관습에 따라 내게 인사해소. 진실은 무엇이오?"~ */
  IF ~~ THEN REPLY #44494 /* ~"당신에게 걸렸군. 기스저라이는 나쁜 사람들이 아니오."~ */ GOTO 15
  IF ~~ THEN REPLY #44495 /* ~"그들은 아무 것도 아니오. 난 내 무지를 시인했고, 내 실언 역시 시인한 후 사과했소. 됐소?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 12.0 13.0 17.1
  SAY #44496 /* ~"좋소. 기스저라이의 피는 물처럼 흐리고, 그들의 종자는 약하오. 다른 일에 대해 얘기하도록 합시다. 당신에게는 기억이 필요하오, 그리고 난 그것을 회수할 수가 있소. 우리는 그 가격만 합의하면 되오."~ */
  IF ~~ THEN REPLY #44497 /* ~"그 대가란 무엇이오?"~ */ GOTO 9
  IF ~~ THEN REPLY #44498 /* ~"그 건에 대해서는 당신과 나중에 다시 얘기하도록 하겠소."~ */ GOTO 8
END

IF ~~ THEN BEGIN 19 // from: 5.3
  SAY #44499 /* ~"그렇다면 계산된 행동이나 무지 중 하나겠군. 어느 쪽이오?"~ */
  IF ~~ THEN REPLY #44500 /* ~"그건 무지로 인한 것이오."~ */ GOTO 12
  IF ~~ THEN REPLY #44501 /* ~"모욕할 의도였소."~ */ GOTO 11
END

IF ~~ THEN BEGIN 20 // from: 7.1
  SAY #44502 /* ~"그 곳은 공간들 사이에 있는 공간이 아닌 공간으로, 그 곳에서는 오직 정신만이 의미가 있소. 그 곳은 내 민족의 고향이오. 사람들이 죽으면, 그 영혼은 아웃터 플레인으로 향하오. 애스트럴계를 통과하면서 그들의 기억은 떨어져 나가 은색의 바다에서 부유하게 되오. 나는 그 곳의 지리에 정통하오. 나는 당신이 잃어버린 기억들을 찾는 것을 도울 수가 있소. 우리는 그 가격만 합의하면 되오."~ */
  IF ~~ THEN REPLY #44503 /* ~"그 대가란 무엇이오?"~ */ GOTO 9
  IF ~~ THEN REPLY #44505 /* ~"그 건에 대해서는 당신과 나중에 다시 얘기하도록 하겠소."~ */ GOTO 8
END

IF WEIGHT #4 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
Global("Know_Yiminn","AR0500",1)
~ THEN BEGIN 21 // from:
  SAY #44504 /* ~"당신은 자신의 기억을 찾고 있소, 그렇지 않소, 인간? 나는 그것을 찾아 줄 수가 있소. 당신의 상실감은 갈 수록 커지고 있소. 당신은 마음의 평화를 위해 작은 대가만 치르면 되오."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44392 /* ~"당신은 기스양키요, 그렇지 않소?"~ */ GOTO 3
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #44393 /* ~"당신은 누구요?"~ */ GOTO 4
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #44394 /* ~"안녕하시오, 칼을 울리는 자여."~ */ DO ~SetGlobal("Yiminn_zerai","AR0500",1)
~ GOTO 5
  IF ~~ THEN REPLY #44398 /* ~"어떻게 그걸 아시오?"~ */ GOTO 6
  IF ~~ THEN REPLY #44401 /* ~"내게 어떤 도움을 줄 수가 있겠소?"~ */ GOTO 7
  IF ~~ THEN REPLY #44506 /* ~"그 대가는 무엇이오?"~ */ GOTO 9
  IF ~~ THEN REPLY #44507 /* ~"당신 민족에 대하여 더 얘기해주시오."~ */ GOTO 23
  IF ~~ THEN REPLY #44508 /* ~"오늘은 사양하겠소,고맙소. 안녕히 계시오."~ */ GOTO 24
END

IF WEIGHT #5 /* Triggers after states #: 39 even though they appear after this state */
~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
Global("Know_Yiminn","AR0500",1)
~ THEN BEGIN 22 // from:
  SAY #44509 /* ~"당신은 자신의 기억을 찾고 있소, 그렇지 않소, 인간? 나는 그것을 찾아 줄 수가 있소. 당신의 상실감은 갈 수록 커지고 있소. 당신은 마음의 평화를 위해 작은 대가만 치르면 되오."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44392 /* ~"당신은 기스양키요, 그렇지 않소?"~ */ GOTO 3
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #44393 /* ~"당신은 누구요?"~ */ GOTO 4
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #44394 /* ~"안녕하시오, 칼을 울리는 자여."~ */ DO ~SetGlobal("Yiminn_zerai","AR0500",1)
~ GOTO 5
  IF ~~ THEN REPLY #44398 /* ~"어떻게 그걸 아시오?"~ */ GOTO 6
  IF ~~ THEN REPLY #44401 /* ~"내게 어떤 도움을 줄 수가 있겠소?"~ */ GOTO 7
  IF ~~ THEN REPLY #44510 /* ~"그 대가는 무엇이오?"~ */ GOTO 9
  IF ~~ THEN REPLY #44511 /* ~"당신 민족에 대하여 더 얘기해주시오."~ */ GOTO 23
  IF ~~ THEN REPLY #44512 /* ~"오늘은 사양하겠소,고맙소. 안녕히 계시오."~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 21.6 22.6
  SAY #44513 /* ~"그 답은 당신이 잃어버린 기억 속에 있을지도 모르오. 시작합시다, 그리고 당신은 알게 될 것이오."~ */
  IF ~~ THEN REPLY #44514 /* ~"그 대가는 무엇이오?"~ */ GOTO 9
  IF ~~ THEN REPLY #44515 /* ~"이 일에는 무엇이 연관되어 있소?"~ */ GOTO 10
  IF ~~ THEN REPLY #44516 /* ~"지금은 관심이 없소."~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 21.7 22.7 23.2
  SAY #44517 /* ~"마음이 바뀌면 이 곳으로 돌아오시오, 인간. 나는 당신이 틀림없이 그러리라 확신하오."~ */
  IF ~~ THEN REPLY #44518 /* ~"물론이오. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Know_Yiminn","AR0500",0)
!NearbyDialog("DDakkon")
~ THEN BEGIN 25 // from:
  SAY #44519 /* ~이 남자는 누런 빛의 거칠고 가죽 같은 피부를 지니고 있으며, 몹시 여윈 얼굴을 하고 있다. 그의 얼굴은 각이 졌고, 그의 작은 코는 인간보다 높은 곳에 달려 있으며, 그의 귀는 매우 뾰족하다. 그의 몸은 문신 자국과 흉터로 뒤덮여 있다. 그는 전투용이라기보다는 장식용으로 보이는 기묘하고 화려한 가죽옷을 걸치고 있다. 그의 검은 돌과 같은 그의 두 눈은 당신이 다가오는 것을 주시하고 있다. 당신이 입을 열자 그가 한 손을 들어 제지한다. "나는 당신 말에 귀를 기울이지 않겠소. 인간. '사람들' 중 하나에게 말을 걸지 마시오."~ */
  IF ~~ THEN REPLY #44520 /* ~"무슨 얘기를 하는 거요?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 27
  IF ~~ THEN REPLY #44521 /* ~"몇 가지만 물어보고 싶소..."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 27
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44522 /* ~"당신네 '종족'은 *일리티드* 주인들의 사슬로부터 결코 탈출하지 말았어야 할 개새끼들이오."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 11
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44523 /* ~"나는 영예로운 기스양키 중 한 사람에게 질문할 것이 좀 있었을 뿐이오."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 28
  IF ~~ THEN REPLY #44524 /* ~"그럼 좋소."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Know_Yiminn","AR0500",1)
!NearbyDialog("DDakkon")
~ THEN BEGIN 26 // from:
  SAY #44525 /* ~"나는 당신에게 다시는 내게 말을 걸지 말라고 했소. 인간들은 모두 당신처럼 아둔하오?"~ */
  IF ~~ THEN REPLY #44526 /* ~"나는 내 질문에 대한 답을 원할 뿐이오..."~ */ GOTO 27
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44527 /* ~"당신네 '종족'은 *일리티드* 주인들의 사슬로부터 결코 탈출하지 말았어야 할 개새끼들이오."~ */ GOTO 11
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44528 /* ~"나는 영예로운 기스양키 중 한 사람에게 질문할 것이 좀 있었을 뿐이오."~ */ GOTO 28
  IF ~~ THEN REPLY #44529 /* ~"그럼 관두시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.0 25.1 26.0
  SAY #44530 /* ~그는 당신을 싸늘한 눈초리로 쳐다본다. 그는 입을 일자로 굳게 다문다.~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44531 /* ~"당신네 '종족'은 *일리티드* 주인들의 사슬로부터 결코 탈출하지 말았어야 할 개새끼들이오."~ */ GOTO 11
  IF ~~ THEN REPLY #44532 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.3 26.2
  SAY #44533 /* ~그는 잠시 멈춘다, 그리고 당신을 정면으로 바라본다. "당신의 신의에 경의를 표하오, 하지만 내 지식은 당신에게 물과도 같을 것이오."~ */
  IF ~~ THEN REPLY #44534 /* ~"당신 자신에 대해 얘기해줄 수 있겠소?"~ */ GOTO 29
  IF ~~ THEN REPLY #44535 /* ~"당신 민족에 대하여 애기해줄 수 있겠소?"~ */ GOTO 30
  IF ~~ THEN REPLY #44536 /* ~"기스저라이에 대하여 애기해줄 수 있겠소?"~ */ GOTO 31
  IF ~~ THEN REPLY #44537 /* ~"그럼 좋소. 안녕히 계시오."~ */ GOTO 34
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #44538 /* ~"나는 '낚시꾼' 이'민이오. 애스트럴계에 갇힌 죽은 자들의 기억을 낚시하오."~ */
  IF ~~ THEN REPLY #44539 /* ~"당신은 내 기억을 찾을 수가 있겠소?"~ */ GOTO 32
  IF ~~ THEN REPLY #44540 /* ~"애스트럴계에 대해 내게 어떤 애기를 해줄 수가 있겠소?"~ */ GOTO 33
END

IF ~~ THEN BEGIN 30 // from: 28.1
  SAY #44541 /* ~"만약 당신이 우리 민족에게 경의를 표한다면, 어째서 우리에 대해 아무 것도 알지 못하는 것이오?"~ */
  IF ~~ THEN REPLY #44542 /* ~"나는 내가 지금 알고 있는 것 이상의 것을 알고 싶소." ~ */ GOTO 38
  IF ~~ THEN REPLY #44543 /* ~"난 당신과 얘기가 하고 싶었을 뿐이오."~ */ GOTO 38
END

IF ~~ THEN BEGIN 31 // from: 28.2
  SAY #44544 /* ~"그들은 우리들로부터 추방된 찌꺼기와 같은 존재요. 그들은 자비를 구하고 있소. 그들의 피는 물처럼 흐리며 그들의 정신 역시 마찬가지요." 그는 이빨을 드러낸다. "그들과 그들에게 동조하는 자들을 고통스럽게 죽이는 것은 내 의무이자 즐거움이오."~ */
  IF ~~ THEN REPLY #44545 /* ~"좋소. 내 질문에 조금만 더 대답해줄 수 있겠소?"~ */ JOURNAL #38976 /* ~나는 기스저라이와 기스양키 사이에는 적대 관계가 존재한다는 사실을 발견했다. 그들은 한때는 같은 종족이었으나, 머나먼 과거에 갈라진 후 서로를 격렬하게 증오하고 있는 듯하다. ~ */ GOTO 35
  IF ~~ THEN REPLY #44546 /* ~"그럼 안녕히 계시오."~ */ JOURNAL #38976 /* ~나는 기스저라이와 기스양키 사이에는 적대 관계가 존재한다는 사실을 발견했다. 그들은 한때는 같은 종족이었으나, 머나먼 과거에 갈라진 후 서로를 격렬하게 증오하고 있는 듯하다. ~ */ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 29.0
  SAY #44556 /* ~"그럴 수 있소... 대가만 지불하겠다면."~ */
  IF ~~ THEN REPLY #44558 /* ~"그 대가란 무엇이오?"~ */ GOTO 36
  IF ~~ THEN REPLY #44559 /* ~"난 어떤 대가든 지불하겠소."~ */ GOTO 36
  IF ~~ THEN REPLY #44560 /* ~"다른 걸로 거래하는 건 안 되겠소?"~ */ GOTO 36
  IF ~~ THEN REPLY #44561 /* ~"관두시오. 다른 질문들도 좀 대답해주시오."~ */ GOTO 35
  IF ~~ THEN REPLY #44562 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 29.1
  SAY #44563 /* ~"그 곳은 공간들 사이에 있는 공간이 아닌 공간으로, 그 곳에서는 오직 정신만이 의미가 있소. 그 곳은 내 민족의 고향이오. 사람들이 죽으면, 그 영혼은 아웃터 플레인으로 향하오. 애스트럴계를 통과하면서 그들의 기억은 떨어져 나가 은색의 바다에서 부유하게 되오."~ */
  IF ~~ THEN REPLY #44564 /* ~"알겠소. 내 질문에 조금만 더 대답해줄 수 있겠소?"~ */ GOTO 35
  IF ~~ THEN REPLY #44565 /* ~"고맙소. 안녕히 계시오."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 28.3 31.1 32.4 33.1 35.0
  SAY #44566 /* ~"나는 이미 당신 질문들에 대답해 주었소. 다시는 나를 찾아오지 마시오." ~ */
  IF ~~ THEN REPLY #44567 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 31.0 32.3 33.0 36.1 36.2
  SAY #44568 /* ~"나는 더 이상 당신 질문에 대답하지 않겠소. 나는 당신이 보여준 '신의'를 그대로 되돌려 주었소."~ */
  IF ~~ THEN REPLY #44569 /* ~"만약 꼭 그래야만 한다면, 안녕히 계시오."~ */ GOTO 34
END

IF ~~ THEN BEGIN 36 // from: 32.0 32.1 32.2
  SAY #44570 /* ~"내가 제시하는 가격은 동전 이백 닢이오 - 이번에는 그 이상도 이하도 받아들일 수 없소."~ */
  IF ~  PartyGoldGT(199)
~ THEN REPLY #44571 /* ~"여기 있소. 이 돈을 받으시오."~ */ DO ~TakePartyGold(200)
~ GOTO 37
  IF ~~ THEN REPLY #44572 /* ~"너무 비싼 것 같소. 내 질문에 조금만 더 대답해주겠소?" ~ */ GOTO 35
  IF ~~ THEN REPLY #44573 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 35
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #44574 /* ~기스양키는 당신 동전을 주머니에 넣으면서 말한다: "일주일 후에 이 곳에 다시 오시오. 지각하지 마시오."~ */
  IF ~~ THEN REPLY #44577 /* ~"좋소. 안녕히 계시오."~ */ DO ~EscapeArea()
DestroySelf()
~ JOURNAL #39452 /* ~나는 기스양키 '낚시꾼' 이'민과 거래를 했다. 그는 나를 위해 애스트럴계에서 기억을 찾아와 주기로 했다. 나는 그를  마계구에서 1주일 후에 다시 만나야 한다.~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 30.0 30.1
  SAY #44579 /* ~"당신은 그런 얄팍한 기만으로 날 속일 수 있다고 생각하오? 가시오, 나는 당신의 신의를 대답으로 갚았소, 그리고 더 이상 당신과 얘기하지 않겠소."~ */
  IF ~~ THEN REPLY #44580 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Yiminn_Trap","AR0500",1)
~ THEN BEGIN 39 // from:
  SAY #44583 /* ~이 기스양키는 이전의 오만한 태도에서 한층 더 기분이 더러워진 듯하다. "자, 인간, 가면을 벗고 네가 시길의 성벽 안에 사는 기스저라이 개들에게 무슨 말을 했고 놈들을 위해 어떤 짓을 해주었는지 밝혀라."~ */
  IF ~~ THEN REPLY #44586 /* ~"우린 가서 내 기억을 찾을 예정이 아니었소?"~ */ GOTO 40
  IF ~~ THEN REPLY #44588 /* ~"난 당신에게 아무 얘기도 해주지 않겠소."~ */ GOTO 41
  IF ~  Global("Anazi_Help","GLOBAL",1)
~ THEN REPLY #44590 /* ~"나는 어떤 기스저라이 여인의 고통을 덜어 주었을 뿐이오."~ */ GOTO 42
  IF ~~ THEN REPLY #44594 /* ~"나는 질문을 좀 했을 뿐이오."~ */ GOTO 43
  IF ~~ THEN REPLY #44596 /* ~"난 그들을 혼란시키기 위해 그들에게 거짓말을 했소."~ */ GOTO 44
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #44598 /* ~"네가 애스트럴계로 갈 수 있는 유일한 방법은 사슬에 묶여서이다, 인간. 네가 시길의 성벽 안에 사는 기스저라이 개들에게 무슨 말을 했고 놈들을 위해 어떤 짓을 해주었는지 말할 기회를 한 번만 더 주겠다."~ */
  IF ~~ THEN REPLY #44601 /* ~"난 당신에게 아무 얘기도 해주지 않겠소."~ */ GOTO 41
  IF ~  Global("Anazi_Help","GLOBAL",1)
~ THEN REPLY #44603 /* ~"나는 어떤 기스저라이 여인의 고통을 덜어 주었을 뿐이오."~ */ GOTO 42
  IF ~~ THEN REPLY #44605 /* ~"나는 질문을 좀 했을 뿐이오."~ */ GOTO 42
  IF ~~ THEN REPLY #44606 /* ~"난 그들을 혼란시키기 위해 그들에게 거짓말을 했소."~ */ GOTO 43
END

IF ~~ THEN BEGIN 41 // from: 39.1 40.0
  SAY #44607 /* ~"그럼 너는 죽을 것이다." 그는 공격을 하려고 무기를 뽑아 든다!~ */
  IF ~~ THEN REPLY #44608 /* ~싸운다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44610 /* ~그들이 당신을 죽이도록 내버려 둔다.~ */ DO ~SetAnimState(Protagonist,ANIM_MIMEDIE)
SetAnimState(Myself,ANIM_MIMEATTACK1)
~ GOTO 44
END

IF ~~ THEN BEGIN 42 // from: 39.2 40.1 40.2
  SAY #44611 /* ~"너는 기스저라이 개들처럼 거짓말을 한다, 인간. 너는 놈들의 동조자이자 거머리다. 우리는 널 죽임으로서 네게 자비를 베풀겠다." 그는 무기를 뽑는다.~ */
  IF ~~ THEN REPLY #44612 /* ~싸운다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44613 /* ~그들이 당신을 죽이도록 내버려 둔다.~ */ DO ~SetAnimState(Protagonist,ANIM_MIMEDIE)
SetAnimState(Myself,ANIM_MIMEATTACK1)
~ GOTO 44
END

IF ~~ THEN BEGIN 43 // from: 39.3 40.3
  SAY #44614 /* ~"거짓말이다. 우리는 너의 행동과 말을 보고 들었다. 너의 말과 마음은 네 거짓을 드러내고 있다, 인간. 죽을 준비를 하라."~ */
  IF ~~ THEN REPLY #44615 /* ~싸운다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44616 /* ~그들이 당신을 죽이도록 내버려 둔다.~ */ DO ~SetAnimState(Protagonist,ANIM_MIMEDIE)
SetAnimState(Myself,ANIM_MIMEATTACK1)
~ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 39.4 41.1 42.1 43.1
  SAY #44617 /* ~이'민의 칼이 당신의 목을 베자 당신은 피를 흘리며 땅바닥에 쓰러진다. 그들은 당신을 내려다보며 얘기를 하기 시작한다. "정말 그는 아무 것도 몰랐소, 알-미딜?"~ */
  IF ~~ THEN DO ~IncrementGlobal("Death","GLOBAL",1)
~ EXTERN ~DALMIDIL~ 0
END

IF ~~ THEN BEGIN 45 // from:
  SAY #44618 /* ~"만약 당신이 우리의 정보가 충분하다고 생각한다면, 우리는 실행할 것이오. 우리의 전사들을 집합시켜 림보에서 전투 부대와 합류합시다."~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(3)
StartCutSceneMode()
StartCutSceneEx("0500cut4",FALSE)
~ EXIT
END

IF WEIGHT #8 ~  NearbyDialog("DDakkon")
~ THEN BEGIN 46 // from:
  SAY #44619 /* ~이 남자는 누런 빛의 거칠고 가죽 같은 피부를 지니고 있으며, 몹시 여윈 얼굴을 하고 있다. 그의 얼굴은 각이 졌고, 그의 작은 코는 인간보다 높은 곳에 달려 있으며, 그의 귀는 매우 뾰족하다. 그의 몸은 문신 자국과 흉터로 뒤덮여 있다. 그는 전투용이라기보다는 장식용으로 보이는 기묘하고 화려한 가죽옷을 걸치고 있다. 그의 검은 돌과 같은 그의 두 눈은 당신이 다가오는 것을 주시하고 있다. 당신이 미처 그에게 다가가기 전에 다콘이 발길을 멈춘다.~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 149
END

IF ~~ THEN BEGIN 47 // from:
  SAY #44620 /* ~기스양키는 당신이 다가오는 것을 보고 있었음에도 불구하고 당신을 완전히 무시한다. "슈라크'아트'로의-성벽에서-통곡하는-다콘... 기대하지도 않았던 수확이군!" 그는 무기를 뽑는다.~ */
  IF ~~ THEN DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ EXTERN ~DDAKKON~ 154
END

IF ~~ THEN BEGIN 48 // from:
  SAY #44621 /* ~당신이 돌아서자 당신을 지금까지 지켜보고 있던 기스양키가 소리를 지른다. "내게 등을 보이는가, 슈라크'아트'로의-성벽에서-통곡하는-다콘? 칼을 뽑아 나를 상대하라, 아니면 네 등에다 비겁자의 낙인을 찍겠다." 그는 무기를 뽑는다.~ */
  IF ~~ THEN DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ EXTERN ~DDAKKON~ 155
END

IF ~~ THEN BEGIN 49 // from: 50.1 51.1 52.2
  SAY #44622 /* ~기스양키와 다콘은 즉시 서로를 공격하기 시작한다.~ */
  IF ~~ THEN REPLY #44623 /* ~기스양키를 공격한다.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack("Dakkon")
~ EXIT
  IF ~~ THEN REPLY #44624 /* ~그들이 싸우도록 내버려 둔다.~ */ DO ~ForceAttack("Dakkon",Myself)
Enemy()
Attack("Dakkon")
~ EXIT
END

IF ~~ THEN BEGIN 50 // from:
  SAY #44625 /* ~다콘이 고개를 끄덕이자 기스양키는 야비한 웃음을 터뜨린다. "너는 이 인간의 당나귀군. 처음에는 배신자, 그 다음에는 노예라"~ */
  IF ~~ THEN REPLY #44626 /* ~"입을 닥치지 않으면 당신 혀를 내가 가져가겠소."~ */ GOTO 51
  IF ~~ THEN REPLY #44627 /* ~"다콘, 그를 죽이시오."~ */ GOTO 49
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #44628 /* ~기스양키는 고개를 숙인다, 그리고 능글맞게 웃으며 다콘을 쳐다본다. "그럼 오늘은 더 이상 할 말이 없군. 나는 돌아가서 내 동포들에게 노예가 된 네 신세에 대해 전하겠다. 그들은 그 소식을 즐겁게 음미할 것이다.~ */
  IF ~~ THEN REPLY #44629 /* ~"그만 됐소. 내가 원하는 건 기억이오."~ */ GOTO 52
  IF ~~ THEN REPLY #44630 /* ~"됐소, 다콘, 그를 죽이시오."~ */ GOTO 49
  IF ~~ THEN REPLY #44631 /* ~"그만 됐소. 안녕히 계시오."~ */ GOTO 55
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #44632 /* ~"기억들? 나는 애스트럴계에서 떠다니는 기억들을 찾아낼 수 있소. 기꺼이 당신을 위해 기억을 찾아 주겠소... 대가만 지불하겠다면."~ */
  IF ~~ THEN REPLY #44633 /* ~"그 대가란 무엇이오?"~ */ GOTO 53
  IF ~~ THEN REPLY #44634 /* ~"관두시오. 우린 떠나겠소."~ */ GOTO 55
  IF ~~ THEN REPLY #44635 /* ~"다콘, 그를 죽이시오."~ */ GOTO 49
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #44636 /* ~"내가 제시하는 가격은 동전 이백 닢이오 - 이번에는 그 이상도 이하도 받아들일 수 없소."~ */
  IF ~  PartyGoldGT(199)
~ THEN REPLY #44637 /* ~"여기 있소. 이 돈을 받으시오."~ */ DO ~TakePartyGold(200)
~ GOTO 56
  IF ~~ THEN REPLY #44638 /* ~"불행히 내겐 그만한 돈이 없소. 우린 떠나도록 하겠소."~ */ GOTO 55
  IF ~~ THEN REPLY #44639 /* ~"관두시오. 우린 떠나겠소."~ */ GOTO 55
END

IF ~~ THEN BEGIN 54 // from:
  SAY #44640 /* ~"다원 우주 전체가 우리의 전쟁터다, 개야. 성역 따윈 존재하지 않는다. 평화도 있을 수 없다. 너는 죽을 것이다." 기스양키가 공격한다!~ */
  IF ~~ THEN REPLY #44641 /* ~기스양키를 공격한다.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack("Dakkon")
~ EXIT
  IF ~~ THEN REPLY #44642 /* ~그들이 싸우도록 내버려 둔다.~ */ DO ~Enemy()
Attack("Dakkon")
~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 51.2 52.1 53.1 53.2
  SAY #44643 /* ~"떠나? 슈라크'아트'로의 배신자의 심장 없이는 곤란하지" 기스양키가 공격한다!~ */
  IF ~~ THEN REPLY #44644 /* ~기스양키를 공격한다.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack("Dakkon")
~ EXIT
  IF ~~ THEN REPLY #44645 /* ~그들이 싸우도록 내버려 둔다.~ */ DO ~Enemy()
Attack("Dakkon")
~ EXIT
END

IF ~~ THEN BEGIN 56 // from: 53.0
  SAY #44646 /* ~"그럼 당신 개를 놔두고 나를 따라오시오." ~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 157
END

IF ~~ THEN BEGIN 57 // from:
  SAY #44647 /* ~"내가 널 처치하고 나면 그렇게 될 것이다."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 158
END

IF ~~ THEN BEGIN 58 // from:
  SAY #44648 /* ~"그건 두고 봐야지, 기스저라이 개야!" 기스양키는 맹렬한 기세로 다콘을 공격한다.~ */
  IF ~~ THEN REPLY #44649 /* ~기스양키를 공격한다.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack("Dakkon")
~ EXIT
  IF ~~ THEN REPLY #44650 /* ~그들이 싸우도록 내버려 둔다.~ */ DO ~Enemy()
Attack("Dakkon")
~ EXIT
END
