// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMCITF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMCITF~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 0 // from:
  SAY #19524 /* ~이 썩어 가는 여자 시체는 처음에는 당신의 존재를 전혀 눈치채지 못한 듯하다. 하지만 당신이 다가가자 그녀는 고개를 돌리고 천천히 고개를 끄덕여 인사를 한다. ~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #19554 /* ~"안녕하시오..."~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #19555 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #19556 /* ~좀비를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 24.1 27.1
  SAY #19525 /* ~좀비는 조용히 신음을 하는 듯한 목소리로 대답한다. : "그근후우... 흐느느느우우그..." 좀비가 숨을 내쉴 때마다 살이 썩는 악취가 대기를 가득 채운다. ~ */
  IF ~~ THEN REPLY #19557 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #19558 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19526 /* ~"스터어어흐... 므므마너흐." 좀비는 이해할 수가 없는 일련의 신음 소리들을 낸다... 당신은 그녀가 하는 말을 전혀 이해할 수가 없다. ~ */
  IF ~~ THEN REPLY #19559 /* ~"당신이 하는 말을 이해할 수가 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 24.0 27.0
  SAY #19527 /* ~좀비는 조용히 신음을 하는 듯한 목소리로 대답한다. 당신은 죽은 자와 얘기할 수 있는 능력 덕분에 그가 하는 말을 간신히 이해할 수가 있다. "아안-녕."~ */
  IF ~~ THEN REPLY #19560 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #19561 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #19528 /* ~좀비는 그 곳에 서서 무게 중심을 한 발에서 다른 발로 옮긴 후에야 대답을 한다. "질-문?"~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19562 /* ~"왜 나는 이 곳에 갇히게 된 거요?"~ */ GOTO 6
  IF ~~ THEN REPLY #19563 /* ~"여기는 어디요?"~ */ GOTO 7
  IF ~~ THEN REPLY #19564 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 8
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19565 /* ~"이 곳에는 누가 거주하고 있소?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19566 /* ~"이 곳에는 누가 거주하고 있소?"~ */ GOTO 10
  IF ~~ THEN REPLY #19567 /* ~"당신에게 어떤 특정한 인물에 대해 물어봅시다..."~ */ GOTO 26
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19568 /* ~"혹시 이 부근에서 작은 청동 구체를 본 적이 없소?"~ */ GOTO 23
  IF ~~ THEN REPLY #19569 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 6.1 7.1 8.1 9.4 10.3 11.3 12.3 13.3 14.4 15.3 16.4 17.4 18.3 19.4 20.2 21.1 22.1 23.1 26.1
  SAY #19529 /* ~시체는 졸리는 듯 고개를 끄덕인다. "지일... 문."~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19570 /* ~"왜 나는 이 곳에 갇히게 된 거요?"~ */ GOTO 6
  IF ~~ THEN REPLY #19571 /* ~"여기는 어디요?"~ */ GOTO 7
  IF ~~ THEN REPLY #19572 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 8
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19573 /* ~"이 곳에는 누가 거주하고 있소?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19574 /* ~"이 곳에는 누가 거주하고 있소?"~ */ GOTO 10
  IF ~~ THEN REPLY #19575 /* ~"당신에게 어떤 특정한 인물에 대해 물어봅시다..."~ */ GOTO 26
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19576 /* ~"혹시 이 부근에서 작은 청동 구체를 본 적이 없소?"~ */ GOTO 23
  IF ~~ THEN REPLY #19577 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.0
  SAY #19530 /* ~한참 동안 아무 말이 없다. "어어어?" 좀비는 어깨를 으쓱하나 그녀의 한쪽 어깨는 다른 쪽 어깨만큼 높이 올라가지 않는다. "메메리에에게 물어어봐, 써어억은 메메리."~ */
  IF ~~ THEN REPLY #19578 /* ~"썩은 메리... 에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19579 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19580 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 5.1
  SAY #19531 /* ~"지입. 내애 집." 얼마남지 않은 그녀의 안면근육이 그의 입을 끌어당기는데, 아마도 미소를 지으려는 것 같다. "치임묵의 와앙의 나아라, 죽은 자아의 나아라."~ */
  IF ~~ THEN REPLY #19581 /* ~"침묵의 왕에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19582 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19583 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2 5.2
  SAY #19532 /* ~좀비는 잠시 당신을 쳐다본다. "치임묵의 왕을 위해 이일하는 게 내 이임무. 난 내 고오국을 위이해 열심히 이일해."~ */
  IF ~~ THEN REPLY #19584 /* ~"침묵의 왕에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19585 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19586 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.3 5.3 11.1 12.1 13.1 14.2 15.1 16.2 17.2 18.1 19.2 20.0
  SAY #19533 /* ~"마않아. 우우리, 스스켈레톤들, 구우우를들." 그녀는 팔을 천천히 들어 올려 동쪽을 가리킨다. "쥐이들." 그녀는 팔을 힘들게 돌려 당신을 가리킨다. "사안 자."~ */
  IF ~~ THEN REPLY #19587 /* ~"이 곳에 나말고 산 자는 더 없소?"~ */ GOTO 11
  IF ~~ THEN REPLY #19588 /* ~"당신 동족에 대해서 얘기해주시오."~ */ GOTO 13
  IF ~~ THEN REPLY #19589 /* ~"다른 언데드에 대해 얘기해주시오."~ */ GOTO 14
  IF ~~ THEN REPLY #19590 /* ~"쥐들에 대해 얘기해주시오."~ */ GOTO 17
  IF ~~ THEN REPLY #19591 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19592 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.4 5.4 11.2 12.2 13.2 14.3 15.2 16.3 17.3 18.2 19.3 20.1
  SAY #19534 /* ~"마않아. 우우리, 뼈어들, 구우우를들." 그녀는 팔을 천천히 들어 올려 동쪽을 가리킨다. "쥐이들." ~ */
  IF ~~ THEN REPLY #19593 /* ~"당신 동족에 대해서 얘기해주시오."~ */ GOTO 13
  IF ~~ THEN REPLY #19594 /* ~"다른 언데드에 대해 얘기해주시오."~ */ GOTO 14
  IF ~~ THEN REPLY #19595 /* ~"쥐들에 대해 얘기해주시오."~ */ GOTO 17
  IF ~~ THEN REPLY #19596 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19597 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0
  SAY #19535 /* ~시체는 머리를 앞뒤로 흔든다. "소오에고오오..."~ */
  IF ~~ THEN REPLY #19598 /* ~"소에고가 누구요?"~ */ GOTO 12
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19599 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19600 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 10
  IF ~~ THEN REPLY #19601 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19602 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #19536 /* ~"더어어스트-맨. 메메리에에게 물어어봐, 써어억은 메메리."~ */
  IF ~~ THEN REPLY #19603 /* ~"썩은 메리... 에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19604 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19605 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 10
  IF ~~ THEN REPLY #19606 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19607 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.1 10.0
  SAY #19537 /* ~좀비는 부패한 곳투성이인 가슴에 자신의 썩은 손을 앉는다. "히임세!" 그녀는 한 손으로 발을 가리킨 다음, 살점이 떨어져 나가 뼈가 드러나 보이는 관자놀이를 가리킨다. "느으려. 헤헤헤..." 시체는 듣기 거북한 꼴꼴 소리를 내는데, 아마 킬킬대고 웃는 듯하다. "써어억은 메메리가 우릴 이이끌어..."~ */
  IF ~~ THEN REPLY #19608 /* ~"썩은 메리... 에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19609 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19610 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 10
  IF ~~ THEN REPLY #19611 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19612 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.2 10.1
  SAY #19538 /* ~"누우구? 뼈어들? 구울들?"~ */
  IF ~~ THEN REPLY #19613 /* ~"뼈들... 스켈레톤 말이오?"~ */ GOTO 15
  IF ~~ THEN REPLY #19614 /* ~"굴."~ */ GOTO 19
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19615 /* ~"관두시오. 이 곳에는 그 밖에 또 어떤 자들이 거주하고 있소?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19616 /* ~"관두시오. 이 곳에는 그 밖에 또 어떤 자들이 거주하고 있소?"~ */ GOTO 10
  IF ~~ THEN REPLY #19617 /* ~"관두시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 5
  IF ~~ THEN REPLY #19618 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #19539 /* ~"뼈어들!" 그녀의 말투로 미루어 볼 때 그녀는 그들을 존경하는 것 같다. "우릴 이이끌고, 아안내해. 하암께 우리는 주욱은 자아의 와앙국을 만들었어."~ */
  IF ~~ THEN REPLY #19619 /* ~"스켈레톤들이 당신들을 이끌고 있소?"~ */ GOTO 16
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19620 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19621 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 10
  IF ~~ THEN REPLY #19622 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19623 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #19540 /* ~"하아그리임이 뼈어들을 이끌어. 치임묵의 왕과 얘기를 해서 써어억은 메메리에게 저언달해. 메메리가 우우리에게 얘기하고 하알 일을 줘." 그녀는 고개를 끄덕인다.~ */
  IF ~~ THEN REPLY #19624 /* ~"침묵의 왕에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19625 /* ~"썩은 메리... 에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19626 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19627 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 10
  IF ~~ THEN REPLY #19628 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19629 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.3 10.2
  SAY #19541 /* ~그녀는 다시 팔을 천천히 들어 올린 후 뒤쪽으로 돌려 동쪽을 가리킨다. "쥐이들..." 그녀가 경멸하는 표정을 짓자 그녀의 누더기처럼 해어진 위쪽 입술이 말려 올라가 누런 갈색의 이빨이 드러나는데, 그녀의 이빨에서는 검은 점액질의 액체가 흘러나오고 있다. "죽은 자들으 머억어... 나아빠. 무우서워 해, 지금은, 구울들을. 가까아이 오오지 않아."~ */
  IF ~~ THEN REPLY #19630 /* ~"쥐들이 이 곳의 시체들을 먹어대오?"~ */ GOTO 18
  IF ~~ THEN REPLY #19631 /* ~"당신들은 쥐들과 협정을 맺고 있소?"~ */ GOTO 18
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19632 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19633 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 10
  IF ~~ THEN REPLY #19634 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19635 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.1
  SAY #19542 /* ~"우우운... 메메리에에게 물어어봐. 써어억은 메메리."~ */
  IF ~~ THEN REPLY #19636 /* ~"썩은 메리... 에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19637 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19638 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 10
  IF ~~ THEN REPLY #19639 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19640 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.1
  SAY #19543 /* ~좀비는 자신의 복부를 가리키는데, 썩어서 생긴 구멍들 때문에 내장이 다 드러나 보인다. "느을 배고오파 해. 치임묵의 왕의 버업이 그들이 여기서 죽은 자들을 머억는 거엇들을 마악아. 구울들은 우우리와 이 곳을 지이켜." ~ */
  IF ~~ THEN REPLY #19641 /* ~"침묵의 왕에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19642 /* ~"그들은 이 곳을 누구로부터 지키고 있는 거요?"~ */ GOTO 20
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19643 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19644 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 10
  IF ~~ THEN REPLY #19645 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19646 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY #19544 /* ~"쥐이들. 그리고..." 그는 팔을 들어 위쪽을 가리킨다. "...위로부터 오는 사안 자들. 그들은 죽은 자를 후움치러 와아서 그들의 자암을 바앙해해."~ */
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19647 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19648 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 10
  IF ~~ THEN REPLY #19649 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19650 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 6.0 12.0 13.0 16.1 18.0 22.0 23.0 26.0
  SAY #19545 /* ~"그으녀는 우우리를 이이끌어. 우우리를 도올봐. 우우리에게 치임묵의 왕의 말을 저언해."~ */
  IF ~~ THEN REPLY #19651 /* ~"침묵의 왕에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19652 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19653 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 7.0 8.0 16.0 19.0 21.0
  SAY #19546 /* ~"주욱은 자아의 와앙국의 와앙. 메메리에에게 물어어봐. 써어억은 메메리."~ */
  IF ~~ THEN REPLY #19654 /* ~"썩은 메리에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19655 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19656 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 4.6 5.6
  SAY #19547 /* ~시체는 가만히 서서 당신을 바라본다. "아아니. 메메리에에게 물어어봐. 써어억은 메메리."~ */
  IF ~~ THEN REPLY #19657 /* ~"썩은 메리에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19658 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19659 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #19548 /* ~좀비는 당신을 마주본다. 당신을 알아보는 듯 그녀의 눈이 빛난다. "우우흔."~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #19660 /* ~"안녕하시오..."~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #19661 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #19662 /* ~좀비를 그냥 내버려 둔다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Zom","AR1500",0)
~ THEN BEGIN 25 // from:
  SAY #19549 /* ~이 썩어 가는 여자 시체는 처음에는 당신의 존재를 전혀 눈치채지 못한 듯하다. 하지만 당신이 다가가자 그는 고개를 돌리고 천천히 고개를 끄덕여 인사를 한다. ~ */
  IF ~~ THEN DO ~SetGlobal("Morte_DN_Zom","AR1500",1)
~ EXTERN ~DMORTE~ 199
END

IF ~~ THEN BEGIN 26 // from: 4.5 5.5
  SAY #19550 /* ~시체는 고개를 젓는다. "메메리에에게 물어어봐. 써억은 메메리."~ */
  IF ~~ THEN REPLY #19663 /* ~"썩은 메리에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19664 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19665 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Zom","AR1500",1)
~ THEN BEGIN 27 // from:
  SAY #50426 /* ~이 썩어 가는 여자 시체는 처음에는 당신의 존재를 전혀 눈치채지 못한 듯하다. 하지만 당신이 다가가자 그녀는 고개를 돌리고 천천히 고개를 끄덕여 인사를 한다. ~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #50427 /* ~"안녕하시오..."~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #50428 /* ~"안녕하시오..."~ */ GOTO 1
END
