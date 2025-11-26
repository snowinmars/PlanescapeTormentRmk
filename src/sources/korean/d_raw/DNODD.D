// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNODD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DNODD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 1 38 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2810 /* ~당신은 두건을 쓰고 갈색 겉옷을 입은 사내에게 다가간다. 가까이 가자 당신은 그가 혼자서 조용히 중얼거리며 때때로 고개를 끄덕인다는 걸 알게 된다.~ */
  IF ~~ THEN REPLY #22473 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #22475 /* ~그를 그냥 내버려 둔다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 38 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from: 0.0
  SAY #21938 /* ~"누가 노드에게 얘기를 하러 왔군, 노드에게..." 그는 갑자기 심하게 기침을 한다, 그리고 기침이 가라앉자 고개를 끄덕인다. ~ */
  IF ~  Global("Nodd_Quest","GLOBAL",4)
~ THEN REPLY #22477 /* ~"나는 당신 여동생 아마리스와 얘기를 했소..."~ */ GOTO 28
  IF ~  Global("Nodd_Quest","GLOBAL",6)
~ THEN REPLY #22489 /* ~"나는 당신 여동생 아마리스와 얘기를 했소..."~ */ GOTO 28
  IF ~  Global("Nodd_Quest","GLOBAL",5)
~ THEN REPLY #22490 /* ~"나는 당신 여동생 아마리스와 얘기를 했소..."~ */ GOTO 29
  IF ~  Global("Nodd_Quest","GLOBAL",7)
~ THEN REPLY #22491 /* ~"나는 당신 여동생 아마리스와 얘기를 했소..."~ */ GOTO 29
  IF ~~ THEN REPLY #22492 /* ~"뭘 하고 있는 거요?"~ */ GOTO 2
  IF ~~ THEN REPLY #22493 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 6
  IF ~~ THEN REPLY #22494 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #22495 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.4 6.0
  SAY #21939 /* ~"아무 것도 아니야, 시체를 찾고 있어. 그뿐이야." 그는 코를 훌쩍이다 또 기침을 심하게 한다. 그는 잠시 중얼거린 후 다시 얘기를 한다. "그뿐이야. 돈이 필요해, 돈-돈."~ */
  IF ~~ THEN REPLY #22496 /* ~"사자들?"~ */ GOTO 3
  IF ~~ THEN REPLY #22497 /* ~"왜 당신은 시체를 찾고 있는 거요?"~ */ GOTO 4
  IF ~~ THEN REPLY #22498 /* ~"이 곳은 뭐 하는 곳이오?"~ */ GOTO 6
  IF ~~ THEN REPLY #22499 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22500 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22501 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #21940 /* ~그는 고개를 끄덕인다. "시체들. 더스티들에게 팔 수 있소."~ */
  IF ~~ THEN REPLY #22502 /* ~"시체를 팔 수가 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #22503 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 6
  IF ~~ THEN REPLY #22504 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22505 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22506 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #21941 /* ~그는 고개를 끄덕이지만 실제로 당신을 쳐다보지는 않는다. "그들을 검은 곳, 시체안치소로 날라." 그는 머리를 앞뒤로 흐늘더니 고개를 끄덕인다. "거기서, 더스티들과 흥정을 하고 돈을 받아. 그들은 시체를 받아, 그래. 다시 시체를 가져갈 때까지 노드는 그들과 얘기 안 해." 그는 코를 손등으로 닦으며 훌쩍거린다.~ */
  IF ~~ THEN REPLY #22507 /* ~"왜 그들은 시체에 대해 돈을 지불하는 거요?"~ */ GOTO 5
  IF ~~ THEN REPLY #22508 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 6
  IF ~~ THEN REPLY #22509 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22510 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22511 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #21942 /* ~그는 어깨를 으쓱한다. "상관없어, 상관없어." 그는 미소짓는다, 그리고 점잔빼며 고개를 끄덕인다. "나 돈 벌어, 돈-돈."~ */
  IF ~~ THEN REPLY #22512 /* ~"이 곳은 뭐 하는 곳이오?"~ */ GOTO 6
  IF ~~ THEN REPLY #22514 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22515 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22516 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.5 2.2 3.1 4.1 5.0
  SAY #21950 /* ~그는 눈살을 찌푸리며 입술을 핥는다. "넝마주이 광장, 광장, 여기저기에 쓰레기, 그래 어디에나." 그는 기침한다.~ */
  IF ~~ THEN REPLY #22517 /* ~"뭘 하고 있는 거요?"~ */ GOTO 2
  IF ~~ THEN REPLY #22518 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22519 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22520 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.6 2.3 3.2 4.2 5.1 6.1
  SAY #21952 /* ~그는 고개를 끄덕인다. "뭐?" 그는 코를 훌쩍인다, 그리고 눈을 가늘게 뜨고 당신을 쳐다본다. "돈." 그는 자신의 머리를 두드리고 당신을 가리킨다, 그리고 다시 자신의 손을 가리킨다. "뭔가 알고 싶으면 - 돈, 그래, 돈-돈."~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #22521 /* ~그에게 동전 몇 닢을 준다.~ */ DO ~TakePartyGold(2)
~ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #22522 /* ~그에게 동전 다섯 닢을 던져준다.~ */ DO ~TakePartyGold(5)
~ GOTO 8
  IF ~  PartyGoldGT(9)
~ THEN REPLY #22523 /* ~그의 손바닥에 동전 열 닢을 쏟아 놓는다.~ */ DO ~TakePartyGold(10)
~ GOTO 8
  IF ~~ THEN REPLY #22524 /* ~"당신은 아무 것도 얻지 못할 거요, 그리고 내 질문에 대답해야만 하오."~ */ GOTO 15
  IF ~~ THEN REPLY #22525 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 7.1 7.2
  SAY #21953 /* ~"노드에게 돈, 돈-돈." 그는 잠시 중얼거린 후, 자신의 옷 속에 동전을 감춘다. "물어봐, 노드가 대답하려고 노력할게, 그래." 그는 잠시 기침을 한 후 옆에다가 뭘 뱉는다. ~ */
  IF ~~ THEN REPLY #22526 /* ~"내게 수집자들에 대해 얘기해주시오."~ */ GOTO 9
  IF ~~ THEN REPLY #22527 /* ~"내게 이 지역에 대해 얘기해주시오."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22528 /* ~"파로드란 사람을 아시오?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22529 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22530 /* ~"내게 멥베스에 대해 얘기해주시오."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22531 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22532 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 10.1 11.1 12.0 13.0 14.0 15.0 16.0
  SAY #21955 /* ~"나, 나? 그는 잠시 머뭇거린다, 그러더니 알겠다는 듯 고개를 끄덕인다. "나. 시체를 줏어다가 더스티들에게 가져가... 더스티들은 시체에 대해 돈을 주고, 시체들을 제 장소에 가져다 놓아. 죽은 자들도 행복하고 더스티도 행복해. 노드도 반짝이는 돈이 생겨 행복해."~ */
  IF ~~ THEN REPLY #22533 /* ~"내게 이 지역에 대해 얘기해주시오."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22534 /* ~"파로드란 사람을 아시오?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22535 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22536 /* ~"내게 멥베스에 대해 얘기해주시오."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22537 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22538 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1 9.0 11.2 12.1 13.1 14.1 15.1
  SAY #21957 /* ~그는 땅바닥을 가리키며 고개를 끄덕인다. "광장, 넝마주이 광장, 어디에나 쓰레기, 그래. 쉐어그레이브의 광장." 그는 잠시 혼자서 중얼거린다.~ */
  IF ~~ THEN REPLY #22539 /* ~"내게 쉐어그레이브에 대해 얘기해주시오."~ */ GOTO 16
  IF ~~ THEN REPLY #22540 /* ~"내게 수집자들에 대해 얘기해주시오."~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22579 /* ~"파로드란 사람을 아시오?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22581 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22582 /* ~"내게 멥베스에 대해 얘기해주시오."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22584 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22586 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.2 9.1 10.2 13.2 14.2 15.2 16.1
  SAY #22381 /* ~그는 두려워하는 것처럼 보인다. 그리고 그는 고개를 젓기 시작한다. "파로드, 파로드, 파로드..." 그는 자신의 머리를 긁는다. "뭐? 그가 어쨌다는 거지?" 그는 찌푸린다, 그리고 고개를 젓는다. 그는 당신에게 이야기를 해야 할지 주저하는 것 같다. ~ */
  IF ~~ THEN REPLY #22588 /* ~"그가 어디에 있는지 혹시 아시오?"~ */ GOTO 12
  IF ~~ THEN REPLY #22589 /* ~"내게 수집자들에 대해 얘기해주시오."~ */ GOTO 9
  IF ~~ THEN REPLY #22590 /* ~"내게 이 지역에 대해 얘기해주시오."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22592 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22593 /* ~"내게 멥베스에 대해 얘기해주시오."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22594 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22595 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #22384 /* ~그는 고개를 젓는다, 그리고 중얼거린다. 그는 당신은 흘긋 본다, 그리고 나서는 다시 혼자서 중얼거린다. 그는 악마로부터 자신을 보호하기 위한 일종의 기도를 하는 것 같다. "아니, 아니, *여기서는* 안돼. 광장에서는..." 그는 어떻게 설명해야 할지 모르겠는 듯 눈살을 찌푸린다. "... 하지만 광장에서는 안돼.". 그는 다시 고개를 저은 후 기침을 한다. ~ */
  IF ~~ THEN REPLY #22596 /* ~"내게 수집자들에 대해 얘기해주시오."~ */ GOTO 9
  IF ~~ THEN REPLY #22597 /* ~"내게 이 지역에 대해 얘기해주시오."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22598 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22599 /* ~"내게 멥베스에 대해 얘기해주시오."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22600 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22601 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.3 9.2 10.3 11.3 12.2 14.3 15.3 16.2
  SAY #22387 /* ~"아니, 아니, 아니." 그는 힘차게 고개를 젓는다. "일지 없어." 그는 코를 훌쩍이며, 때때로 코를 소매로 닦는다.~ */
  IF ~~ THEN REPLY #22602 /* ~"내게 수집자들에 대해 얘기해주시오."~ */ GOTO 9
  IF ~~ THEN REPLY #22603 /* ~"내게 이 지역에 대해 얘기해주시오."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22604 /* ~"파로드란 사람을 아시오?"~ */ GOTO 11
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22605 /* ~"내게 멥베스에 대해 얘기해주시오."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22606 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22607 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.4 9.3 10.4 11.4 12.3 13.3 15.4 16.3
  SAY #22389 /* ~"산파... 약과 부적... 그녀는 어린애들을 도와, 좋은 사람이야." 그는 코에 주름을 잡는다. "그녀의 집 - 승강대 위에 있어. 고약한 냄새가 나."~ */
  IF ~~ THEN REPLY #22608 /* ~"내게 수집자들에 대해 얘기해주시오."~ */ GOTO 9
  IF ~~ THEN REPLY #22609 /* ~"내게 이 지역에 대해 얘기해주시오."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22610 /* ~"파로드란 사람을 아시오?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22611 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 13
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22612 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22613 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.3
  SAY #22392 /* ~그는 고개를 젓기 시작한다, 그리고 혼자서 뭐라고 중얼거린다. 그는 어떻게 해야 할지 몰라 두려워하는 듯하다. ~ */
  IF ~~ THEN REPLY #22614 /* ~"내게 수집자들에 대해 얘기해주시오."~ */ GOTO 9
  IF ~~ THEN REPLY #22615 /* ~"내게 이 지역에 대해 얘기해주시오."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22616 /* ~"파로드란 사람을 아시오?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22617 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22618 /* ~"내게 멥베스에 대해 얘기해주시오."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22619 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22620 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.0
  SAY #22394 /* ~"쉐어그레이브의 그림자는 길어, 노드를 뒤덮어. 노드는 쉐어그레이브에게 번 돈의 일부를 줘. 쉐어그레이브는 그의 밑에 있는 놈들에게 '노드는 건드리지 마'라고 해~ */
  IF ~~ THEN REPLY #22621 /* ~"내게 수집자들에 대해 얘기해주시오."~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22622 /* ~"파로드란 사람을 아시오?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22623 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22624 /* ~"내게 멥베스에 대해 얘기해주시오."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22625 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22626 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.4 3.3 4.3 5.2 6.2 8.5 9.4 10.5 11.5 12.4 13.4 14.4 15.5 16.4
  SAY #22396 /* ~"에... 에..." 그는 고개를 젓는다, 그리고 기침을 한 후 다시 고개를 끄덕인다. "당신이 노드에게 묻고 노드는 당신에게 묻고... 당신에게 물어볼 게 있어..."~ */
  IF ~~ THEN REPLY #22627 /* ~"그래, 질문을 하시오."~ */ GOTO 18
  IF ~~ THEN REPLY #22628 /* ~그를 무시하고, 돌아서서 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #22398 /* ~"노드에게는 여동생이 있어, 아마리스, 그래 아마리스... 벌통에서 살아, 여기서 떨어진, 이 곳 광장에서 떨어진. 오래 전에 노드는 그의 여동생과 헤어졌어..."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #22629 /* ~"당신은 그녀와 헤어졌고, 그래서 내가 그녀를 찾아주길 바라는 거요?"~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",1)
~ JOURNAL #22281 /* ~노드라는 이름의 수집자가 내게 자기 여동생인 아마리스를 찾아 대신 얘기를 해달라고 부탁했다. 그는 그녀를 벌통 어딘가에 살고있는 매력적인 아가씨로 묘사했다. ~ */ GOTO 19
  IF ~~ THEN REPLY #22630 /* ~"그래 당신 질문은...?"~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",1)
~ JOURNAL #22281 /* ~노드라는 이름의 수집자가 내게 자기 여동생인 아마리스를 찾아 대신 얘기를 해달라고 부탁했다. 그는 그녀를 벌통 어딘가에 살고있는 매력적인 아가씨로 묘사했다. ~ */ GOTO 19
  IF ~~ THEN REPLY #22631 /* ~"흥미롭군. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 18.1
  SAY #22415 /* ~"당신은 그녀를 몰라?" 그는 아랫입술을 깨물며 잠시 슬프게 고개를 젓는다. "만약 그녀를 만나거든 그녀의 오빠 노드가 걱정하고 있다고 전해줘, 그래, 그는 걱정하고 있어."~ */
  IF ~~ THEN REPLY #22637 /* ~"왜 당신이 직접 가서 그녀를 찾지 않소?"~ */ GOTO 20
  IF ~~ THEN REPLY #22638 /* ~"좋소. 당신을 위해 그 일을 해주리다."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22639 /* ~"대가를 지불하겠다면 그녀를 찾아 주겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22640 /* ~"생각해 보겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #22417 /* ~"안돼!" 노드는 팔로 머리를 감싸고 혼자서 중얼거린다. "노드.. 노드는 지금 더 이상 얘기할 수 없어... 그는 할 수 없어... 그로부터는 광장, 넝마주이 광장의 시체와 쓰레기의 냄새가 나... 안돼!" 감정을 폭발시킨 탓인지 그는 심하게 기침을 한다.~ */
  IF ~~ THEN REPLY #22641 /* ~"당신에게 어떤 일이 일어났던 거요, 노드?"~ */ GOTO 21
  IF ~~ THEN REPLY #22642 /* ~"좋소. 당신을 위해 그녀를 찾아 주겠소."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22643 /* ~"대가를 지불하겠다면 그녀를 찾아 주겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22644 /* ~"생각해 보겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #22421 /* ~노드는 조용히 땅바닥을 내려다보며 코를 훌쩍인다. 마침내 그는 조용히 얘기하면서 고개를 끄덕이기 시작한다. "노드는 어렸어, 그래. 그리고 노드는 그에게가 '이걸 해! 저걸 해!' 하는 목소리를 듣기 시작했지. 노드의 손가락을 씹는 것 같은 나쁜, 나쁜 짓을 시키는..." 그는 손을 얼굴 있는 곳까지 들어올리는데, 두껍게 쌓인 때 아래로 오래된 물린 흉터들이 보인다. ~ */
  IF ~~ THEN REPLY #22645 /* ~"계속하시오..."~ */ GOTO 23
  IF ~~ THEN REPLY #22647 /* ~"좋소. 당신을 위해 당신 여동생을 찾아 주겠소."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22648 /* ~"대가를 지불하겠다면 그녀를 찾아 주겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22649 /* ~"흥미롭군. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 23.0
  SAY #22425 /* ~"몰라, 몰라, 나쁜 곳, 나빠!" 그는 관자놀이를 꽉 쥐고 머리를 격렬하게 흔든다, 그리고 나서는 늘 그러 듯 고개를 끄덕인다. ~ */
  IF ~~ THEN REPLY #22650 /* ~"당신 얘기를 계속해주시오..."~ */ GOTO 24
  IF ~~ THEN REPLY #22669 /* ~"좋소. 당신을 위해 당신 여동생을 찾아 주겠소."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22671 /* ~"대가를 지불하겠다면 그녀를 찾아 주겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22674 /* ~"흥미롭군. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0
  SAY #22427 /* ~"그래서 노드의 부모들은 그를 어두운 곳으로 데려갔어, 날개가 달린 탑으로. 거기서 사람들은 노드의 머리를 바늘과 갈고리로 찔렀어... 더 이상 목소리는 들리지 않았어, 하지만 노드는 제대로 생각을 할 수도 제대로 말을 할 수도 없게 되었어. 노드는 그 곳에서 도망쳤어... 그리고 벌통에서 깨어났어."~ */
  IF ~~ THEN REPLY #22675 /* ~"그 탑은 어디에 있소?"~ */ GOTO 22
  IF ~~ THEN REPLY #22676 /* ~"당신 얘기를 계속해주시오..."~ */ GOTO 24
  IF ~~ THEN REPLY #22677 /* ~"좋소. 당신을 위해 당신 여동생을 찾아 주겠소."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22678 /* ~"대가를 지불하겠다면 그녀를 찾아 주겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22679 /* ~"흥미롭군. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.0 23.1
  SAY #22431 /* ~노드가 일어나 본 주위에 수집자들이 있었어. 수집자들은 노드를 손가락으로 찌르면서 말했어. '보라고, 그는 죽지 않았어! 그를 데리고 돌아가지고!' 그리고 그들은 노드를 광장으로 데리고 갔어. 정말... 정말 오래 전 일이야."~ */
  IF ~~ THEN REPLY #22680 /* ~"좋소. 당신을 위해 당신 여동생을 찾아 주겠소."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22681 /* ~"대가를 지불하겠다면 그녀를 찾아 주겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22682 /* ~"흥미롭군. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 19.1 20.1 21.1 22.1 23.2 24.0 26.1
  SAY #22433 /* ~"노드는 당신에게 감사해, 정말이야. 노드는 감사해. 아마리스는 예뻤어, 너무 예뻤어. 그녀는 이제 벌통에 살아. 피부가 곱고 칠흑처럼 검은 머리에 늘 푸른 옷을 입어... 그녀는 늘 푸른 옷을 입었어..."~ */
  IF ~~ THEN REPLY #22683 /* ~"안녕히 계시오, 노드."~ */ JOURNAL #22636 /* ~나는 노드가 그의 여동생 아마리스를 찾는 것을 도와주기로 했다. 그의 말로는 그녀는 흰 살결에 머리는 검은색이며 늘 푸른색 옷을 입는다고 한다. ~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 19.2 20.2 21.2 22.2 23.3 24.1
  SAY #22435 /* ~그는 기침을 하며 고개를 젓는다. "노드에겐 아무 것도 없어, 아무 것도. 줄 것이 거의 없어..." ~ */
  IF ~~ THEN REPLY #22684 /* ~"아무 거라도 괜찮소."~ */ GOTO 27
  IF ~~ THEN REPLY #22685 /* ~"그럼 아무런 대가도 없이 해주겠소."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
~ GOTO 25
  IF ~~ THEN REPLY #22686 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #22437 /* ~노드는 슬픈 표정으로 당신을 쳐다본다. "노드는 가진 것 전부를 당신에게 주겠어. 당신이 그녀와 얘기하고 오면. 노드에게 당신이 노드의 여동생 아마리스와 얘기했다는 걸 입중해." 그는 코를 훌쩍인 후 기침을 한다. "피부가 곱고 칠흑처럼 검은 머리에 늘 푸른 옷을 입어... 그녀는 늘 푸른 옷을 입었어..."~ */
  IF ~~ THEN REPLY #22687 /* ~"좋소. 그녀와 얘기를 하게 되면 다시 이 곳으로 돌아오리다. 안녕히 계시오."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",3)
~ JOURNAL #22635 /* ~나는 노드가 그의 여동생 아마리스를 찾는 것을 도와주기로 했다...대가를 받기로 하고. 그의 말로는 그녀는 흰 살결에 머리는 검은색이며 늘 푸른색 옷을 입는다고 한다. ~ */ EXIT
  IF ~~ THEN REPLY #22688 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 1.0 1.1
  SAY #22441 /* ~"그랬어? 노드는 행복해, 정말 기뻐! 노드의 여동생은 어떻게 지내? 그에게 아마리스에 대해 얘기해줘, 제발!" 그는 너무 흥분한 탓에 기침을 여러 차례 심하게 한다. 마침내 다시 얘기할 수 있게 되자 그는 질문한다. "노드의 여동생은 아직도 예뻐?"~ */
  IF ~~ THEN REPLY #22689 /* ~"그렇소. 그녀는... 창녀이며... 이제는 벌통에서 살고 있소. 그녀는 잘 지내고 있으며 당신에 대해 걱정하고 있소."~ */ GOTO 31
  IF ~~ THEN REPLY #22690 /* ~거짓말: "그렇소. 그녀는 이제 하녀로... 벌통에 있는 선술집에서 일하고 있소. 그녀는 잘 지내고 있으며, 당신에 대해 걱정하고 있소." ~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nodd_2","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_1","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #22691 /* ~거짓말: "그랬소. 그녀는 창녀로, 어찌나 역겨운지 공짜라고 해도 난 그녀와 자지 않겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_2","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_2","GLOBALLaw",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 1.2 1.3
  SAY #22444 /* ~"증거! 증거! 노드에게 입증해..."~ */
  IF ~~ THEN REPLY #22692 /* ~"그녀는 내게 당신의 옛날 이름이 토더스라고 얘기해주었소."~ */ DO ~GiveGoldForce(11)
~ GOTO 32
END

IF ~~ THEN BEGIN 30 // from: 28.2 32.4 33.2 34.2
  SAY #22446 /* ~"아이야!" 그는 당신을 향해 돌격한다. ~ */
  IF ~~ THEN REPLY #22693 /* ~"이런..."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",9)
Enemy()
Attack(Protagonist)
~ JOURNAL #22634 /* ~나는 노드에게 그의 동생이 더러운 창녀라고 거짓말을 했다, 그러자 그는 미친 듯이 화를 내며 나를 공격했다. ~ */ EXIT
  IF ~~ THEN REPLY #63621 /* ~반격한다.~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",9)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 28.0 28.1 32.2 32.3 33.0 33.1 34.0 34.1
  SAY #22448 /* ~"노드는 그의 여동생이 잘 지내고 있다는 사실을 알게 되어 너무 기뻐!" 그는 지금 당장이라도 울 것처럼 보인다, 하지만 그는 침을 꿀꺽 삼키며 감정을 억제한다. "그녀가 노드에게 전해달라고 한 다른 얘기는 없어?"~ */
  IF ~  GlobalLT("Nodd_Quest","GLOBAL",6)
~ THEN REPLY #22695 /* ~"시간이 나는 대로 당신을 방문하겠다는 말밖에 없었소."~ */ JOURNAL #22710 /* ~나는 노드의 여동생 아마리스와 말을 한 후 그에게 돌아와 얘기를 해주었다. 그는 동생의 소식을 듣게돼 몹시 기뻐했다. ~ */ GOTO 35
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",5)
PartyGoldGT(99)
~ THEN REPLY #22696 /* ~"그렇소, 그녀는 내가 당신에게 이 돈을 전해주기를 원했소. 또한 그녀는 시간이 나는 대로 당신을 방문할 것이오."~ */ DO ~TakePartyGold(100)
~ JOURNAL #22709 /* ~나는 노드의 여동생 아마리스와 말을 한 후 그에게 돌아와 얘기를 해주었다. 그는 동생의 소식을 듣고 또한 그녀가 나보고 그에게  전해주라고 부탁한 돈을 받게돼 몹시 기뻐했다.~ */ GOTO 36
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",5)
~ THEN REPLY #22697 /* ~거짓말: "시간이 나는 대로 당신을 방문하겠다는 말밖에 없었소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_4","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_4","GLOBALLaw",-3)
~ JOURNAL #22708 /* ~나는 노드의 여동생 아마리스와 말을 한 후 그에게 돌아와 얘기를 해주었다. 그는 동생의 소식을 듣고 몹시 기뻐했다, 하지만 나는 아마리스에게 한 맹세를 깨고 그에게 전해주기로 한 돈에 대하여 거짓말을 했다. ~ */ GOTO 35
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",5)
PartyGoldLT(100)
~ THEN REPLY #22698 /* ~"그렇소. 그녀는 당신에게 전해 달라며 내게 돈을 좀 주었으나... 다 쓰고 말았소. 미안하오. 어쨌든 그녀는 시간이 나는 대로 당신을 방문할 것이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Nodd_3","GLOBALLaw",-1)
~ JOURNAL #22707 /* ~나는 노드의 여동생 아마리스와 말을 한 후 그에게 돌아와 얘기를 해주었다. 그는 동생의 소식을 듣고 몹시 기뻐했다, 하지만 나에게는 그에게 전해주기로 맹세했던 돈이 수중에 없었다. 하지만 그는 날 용서해 주었고 난 사실대로 털어놓아 속이 후련하다. ~ */ GOTO 37
END

IF ~~ THEN BEGIN 32 // from: 29.0
  SAY #22450 /* ~"그랬어? 노드는 행복해, 정말 기뻐!" 그는 옷 속에 손을 넣어 기름기가 흐르는 걸레로 싼 것을 꺼낸다. 그는 그것을 풀어 그 안에 든 것 - 동전 열한 닢을 당신에게 준다. "노드가 가진 건 그것뿐이야. 노드의 여동생은 어떻게 지내? 그에게 아마리스에 대해 얘기해줘, 제발!" 그는 너무 흥분한 탓에 기침을 여러 차례 심하게 한다. 마침내 다시 얘기할 수 있게 되자 그는 질문한다. "노드의 여동생은 아직도 예뻐?"~ */
  IF ~~ THEN REPLY #22711 /* ~"정말 그게 당신이 가진 것 전부요, 노드?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_3","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #22712 /* ~"나는 이 돈을 받을 수가 없소. 여기 있소, 도로 넣어 두시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nodd_3","GLOBALGood",1)
TakePartyGold(11)
~ GOTO 34
  IF ~~ THEN REPLY #22713 /* ~"그렇소. 그녀는... 창녀이며... 이제는 벌통에서 살고 있소. 그녀는 잘 지내고 있으며 당신에 대해 걱정하고 있소."~ */ GOTO 31
  IF ~~ THEN REPLY #22714 /* ~거짓말: "그렇소. 그녀는 하녀로... 이제 벌통에 있는 선술집에서 일하고 있소. 그녀는 잘 지내고 있으며, 당신에 대해 걱정하고 있소." ~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nodd_2","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_1","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #22715 /* ~거짓말: "그랬소. 그녀는 창녀로, 어찌나 역겨운지 공짜라고 해도 난 그녀와 자지 않겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_2","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_2","GLOBALLaw",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #22452 /* ~그는 힘차게 고개를 끄덕인다. "그래, 노드가 가진 건 그것뿐이야. 그가 사는 곳을 보라고, 가난한 노드가...봐..." 그는 혼자서 중얼거리며 무기력하게 주변을 가리킨다. ~ */
  IF ~~ THEN REPLY #22716 /* ~"좋소. 그녀는 아직도 아름답소... 그리고, 그녀는... 창녀이며... 이제는 벌통에서 살고 있소. 그녀는 잘 지내고 있으며 당신에 대해 걱정하고 있소."~ */ GOTO 31
  IF ~~ THEN REPLY #22717 /* ~거짓말: "그렇소. 그녀는 아직도 아름답소, 그리고 그녀는 이제 하녀로... 벌통에 있는 선술집에서 일하고 있소. 그녀는 잘 지내고 있으며, 당신에 대해 걱정하고 있소." ~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nodd_2","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_1","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #22718 /* ~거짓말: "좋소. 그녀는 창녀로, 어찌나 역겨운지 공짜라고 해도 난 그녀와 자지 않겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_2","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_2","GLOBALLaw",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 34 // from: 32.1
  SAY #22456 /* ~그는 놀란 듯 고개를 끄덕이는 것을 잠시 멈춘다, 그리고 동전을 도로 가져간다. "노드는 당신에게 감사해, 정말이야. 고마워..."~ */
  IF ~~ THEN REPLY #22719 /* ~"물론이오. 그녀는 아직도 아름답소, 그리고 그녀는... 창녀이며... 이제는 벌통에서 살고 있소. 그녀는 잘 지내고 있으며 당신에 대해 걱정하고 있소."~ */ GOTO 31
  IF ~~ THEN REPLY #22720 /* ~거짓말: "물론이오. 당신 여동생은 아직도 아름답소, 그리고 그녀는 이제 하녀로... 벌통에 있는 선술집에서 일하고 있소. 그녀는 잘 지내고 있으며, 당신에 대해 걱정하고 있소." ~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nodd_2","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_1","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #22721 /* ~거짓말: "물론이오. 당신 동생은 창녀로, 어찌나 역겨운지 공짜라고 해도 난 그녀와 자지 않겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_2","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_2","GLOBALLaw",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 35 // from: 31.0 31.2
  SAY #22458 /* ~노드의 눈은 더러운 갈색 두건 아래서 기쁨으로 빛난다. "너무 멋진 소식이야. 너무 기쁘고 좋은 소식! 노드는 당신에게 감사하고 또 감사해, 그리고 천번만번 감사해!"~ */
  IF ~~ THEN REPLY #22722 /* ~"내가 도움이 되었다니 기쁘오. 안녕히 계시오, 노드?"~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",5)
~ THEN REPLY #22723 /* ~"내게 감사할 필요는 없소. 아무리 보수가 적다고 해도 그건 어디까지나 일이지 당신에게 무슨 호의를 베푼건 아니오. 안녕히 계시오."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",7)
~ THEN REPLY #22724 /* ~"내게 감사할 필요는 없소. 아무리 보수가 적다고 해도 그건 어디까지나 일이지 당신에게 무슨 호의를 베푼건 아니오. 안녕히 계시오."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 31.1
  SAY #22461 /* ~당신이 노드에게 동전 백 닢을 전해주자 그는 고개를 끄덕이는 것을 갑자기 멈추고 벌어진 입을 다물 줄 모른다. 노드의 눈은 더러운 갈색 두건 아래서 기쁨으로 빛난다. "너무 멋진 소식이야. 너무 기쁘고 좋은 소식! 노드는 당신에게 감사하고 또 감사해, 그리고 천번만번 감사해!"~ */
  IF ~~ THEN REPLY #22725 /* ~"내가 도움이 되었다니 기쁘오. 안녕히 계시오, 노드?"~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",5)
~ THEN REPLY #22726 /* ~"내게 감사할 필요는 없소. 아무리 보수가 적다고 해도 그건 어디까지나 일이지 당신에게 무슨 호의를 베푼건 아니오. 안녕히 계시오."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",7)
~ THEN REPLY #22727 /* ~"내게 감사할 필요는 없소. 아무리 보수가 적다고 해도 그건 어디까지나 일이지 당신에게 무슨 호의를 베푼건 아니오. 안녕히 계시오."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 31.3
  SAY #22463 /* ~노드는 잠시 고개를 숙이고 조용히 중얼거린다. 마침내 그는 당신을 정면으로 쳐다본다. "노드는 용서해. 당신이 그 일에 대해 노드에게 얘기한 건 잘한 일이야, 덕분에 노드가 당신이 좋은 사람이 되려고 노력하고 있지만 그러지 못한다는 걸 알 수 있었으니까, 노드처럼 말이야... 노드처럼 그래도 노드는 당신이 좋은 소식을 가져온 데 대해 감사해."~ */
  IF ~~ THEN REPLY #22728 /* ~"안녕히 계시오, 노드."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
Global("Nodd_Quest","GLOBAL",8)
~ THEN BEGIN 38 // from:
  SAY #22466 /* ~노드가 고개를 끄덕이며 중얼거리고 다니는 것이 보인다. ~ */
  IF ~~ THEN REPLY #22729 /* ~"안녕하시오, 노드."~ */ GOTO 39
  IF ~~ THEN REPLY #22730 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #22470 /* ~"그래, 노드의 그의 예쁜 여동생 아마리스를 도와준 사람이군. 노드는 당신에게 다시 한 번 감사해."~ */
  IF ~~ THEN REPLY #22731 /* ~"안녕히 계시오, 노드."~ */ EXIT
END
