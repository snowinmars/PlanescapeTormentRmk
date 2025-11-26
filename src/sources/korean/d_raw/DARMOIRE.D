// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DARMOIRE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DARMOIRE~

IF ~  Global("Armoire","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2879 /* ~당신이 옷장을 조사하기 시작하자, 서랍들이 스스로 쾅 닫히고 그것의 손잡이는 갑자기 당신 손아귀에서 벗어난다. 옷장으로부터는 경멸하는 듯한 *흥!* 소리가 난다.~ */
  IF ~~ THEN REPLY #2880 /* ~"안녕... 하시오?"~ */ DO ~SetGlobal("Armoire","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #42567 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #7235 /* ~"그래 '안녕하시오.' 옷장은 또 다시 *흥* 소리를 낸다. "그래 이게 누군가? 숙녀들의 야한 속옷을 훔치러 들어온 불한당인가?"~ */
  IF ~~ THEN REPLY #42568 /* ~"당신은 *말*을 할 수가 있소?"~ */ GOTO 2
  IF ~~ THEN REPLY #42569 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #42570 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 4
  IF ~~ THEN REPLY #42571 /* ~"떠나도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #42532 /* ~"그러냐고? 그렇소."~ */
  IF ~~ THEN REPLY #42572 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #42573 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 4
  IF ~~ THEN REPLY #42574 /* ~"떠나도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0
  SAY #42533 /* ~"나는 루이스요. 그렇다면 *당신*은 뭐요? 남의 물건이나 뒤지는 분별 없는 야만인이 아니오?"~ */
  IF ~~ THEN REPLY #42575 /* ~"관두시오. 당신은 여기서 뭘 하고 있는 거요?"~ */ GOTO 4
  IF ~~ THEN REPLY #42576 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 3.0
  SAY #42534 /* ~"꼭 알아야겠다면... 나는 옷장 노릇을 하고 있소."~ */
  IF ~~ THEN REPLY #42577 /* ~"하지만 *왜* 당신은 이 매음굴에서 옷장 노릇을 하고 있는 거요?"~ */ GOTO 5
  IF ~~ THEN REPLY #42578 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 12.0
  SAY #42535 /* ~"나는 옷장이 되고 *싶어서* 옷장이 된 거요. 아가씨들이 옷을 벗는 것을 훔쳐보거나, 그녀들이 달콤한 냄새가 나는 부드러운 속옷들을 내 서랍 속에 넣어 그것들이 내 피부를 비비도록 하기 위해서가 아니오. 그러한 비난은 마법의 실천자에 대한 모독이오... 나는 옷장이 된다는 것이 어떤 것인가에 대한 체험을 다각적으로 즐기고 있을 뿐이오. 시각, 후각, 감각... "~ */
  IF ~~ THEN REPLY #42579 /* ~"그럼 여자들은 다 이 사실을 알고 있소?"~ */ GOTO 6
  IF ~~ THEN REPLY #42580 /* ~"좋소. 다른 질문이 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #42581 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #42536 /* ~"그렇소! 알고 있소, 그리고 그녀들은 충심으로 찬성... 뭐, 정확히 말해서 완전히 그런 건 아니오. 그녀들은 내가 보는 앞에서 찬성의 의사를 표시하지는 않았소 그녀들은 아직 내가 옷장이라는 걸 확실하게 인식하고 있지 못하며, 나는 그녀들이 나를 옷장으로만 알기를 바라고 있기 때문에, 그 문제에 대해서 그녀들에게 물어보지 못했던 거요."~ */
  IF ~  CheckStatGT(Protagonist,14,DEX)
~ THEN REPLY #42582 /* ~"내가 이 일에 대해 입을 다물기를 원한다면 내게 뭔가를 주어야 할 거요."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,15,DEX)
~ THEN REPLY #42583 /* ~"내가 이 일에 대해 입을 다물기를 원한다면 내게 뭔가를 주어야 할 거요."~ */ GOTO 9
  IF ~~ THEN REPLY #42584 /* ~"당신에게 질문할 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #42585 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #42537 /* ~"좋소! 체! 세 번째 서랍을 여시오, 이 무례한 같으니." 당신이 서랍에 손을 넣으려 하자 서랍이 무서운 기세로 닫힌다. 당신은 늦기 전에 간신히 손가락을 빼낼 수 있었다.~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0 9.0
  SAY #42538 /* ~"하 하! 바보! 얼간이! 난 '서랍을 여시오'라고 했는데 당신은 손을--" 그는 강조를 하느라 다시 서랍을 세차게 닫고서는 온몸을 흔들며 웃는다.~ */
  IF ~~ THEN REPLY #42586 /* ~"난 그들에게 당장 얘기하겠소."~ */ GOTO 11
  IF ~~ THEN REPLY #42587 /* ~"난 당신을 토막내 불쏘시개로 쓸 거요."~ */ GOTO 10
  IF ~~ THEN REPLY #42588 /* ~"매우 재미있군. 질문할 것들이 있소, 루이스..."~ */ GOTO 12
  IF ~~ THEN REPLY #42589 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY #42539 /* ~"좋소! 체! 세 번째 서랍을 여시오, 이 무례한 같으니." 당신이 서랍에 손을 넣으려 하자 서랍이 무서운 기세로 당신 손가락을 짓누르면서 닫힌다. 당신은 상처 입은 손가락을 움츠리면서 심한 고통을 느낀다. ~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 8.1 11.0
  SAY #42540 /* ~"당신 그런 짓을 하지 못할 거요! 가장 *평범한* 자도 이 매음굴 안에서는 폭력 행위를 저지를 수 없다는 것 정도는 알고 있소... 그런 짓을 하면 당신을 여기서 쫓겨날 거요. 설령 그렇게 않더라도 내 마법 실력은 장난이 아니니 조심하는 게 좋을 거요."~ */
  IF ~~ THEN REPLY #42590 /* ~"그럼 좋소... 난 가서 그들에게 당신에 대해 얘기하겠소."~ */ GOTO 11
  IF ~~ THEN REPLY #42591 /* ~"그럼 질문을 좀 하고 싶소..."~ */ GOTO 12
  IF ~~ THEN REPLY #42592 /* ~"그렇다면 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0 10.0
  SAY #42541 /* ~"우선 이것 한 가지만 말해 두겠소. 나는 이 매음굴에 오랫동안 드나들어 왔소... 나는 이 곳의 사람들과 그들의 활동에 대해 아주 잘 알고 있소. 분명히 말하겠는데 나에 대해 얘기하는 것은 아무런 소용이 없소. 그래 봐야 당신이 내게서 정보를 얻을 가능성만 사라질 뿐이며, 나는 사람들이 당신 주장을 조사하려고 오기 전에 사라지면 그만이니 당신만 바보가 될 거요." ~ */
  IF ~~ THEN REPLY #42593 /* ~"그럼 당신을 토막내서 불쏘시개로나 쓸까."~ */ GOTO 10
  IF ~~ THEN REPLY #42594 /* ~"이해하오. 그럼 질문을 좀 하고 싶소..."~ */ GOTO 12
  IF ~~ THEN REPLY #42595 /* ~"알겠소. 그럼 안녕히 계시오, 루이스."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.1 6.2 8.2 10.1 11.1 13.0 14.0 15.0 16.0 17.0 18.0 19.1 20.0 21.0 32.0
  SAY #42542 /* ~"뭐요?"~ */
  IF ~~ THEN REPLY #42596 /* ~"그래... 왜 당신은 이 매음굴에서 옷장 노릇을 하고 있는 거요?"~ */ GOTO 5
  IF ~~ THEN REPLY #42597 /* ~"당신은 자유롭게 원래 모습으로 돌아갈 수가 있소?"~ */ GOTO 13
  IF ~~ THEN REPLY #42598 /* ~"내게 이 곳에 대해 얘기해줄 수 있겠소?"~ */ GOTO 14
  IF ~  Global("Nenny_Hint2","AR0605",3)
~ THEN REPLY #42599 /* ~"네니는 어떤 남자가 이 살무사의 혀 키마스사이의 방에서 나오는 것을 보았다고 내게 말해주었소... 나는 그게 당신이었다고 생각하오, 루이스."~ */ DO ~SetGlobal("Nenny_Hint2","AR0605",4)
~ GOTO 36
  IF ~  Global("Ecco_Speak","GLOBAL",1)
~ THEN REPLY #42600 /* ~"침묵하는 창녀에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ GOTO 15
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #42601 /* ~"나는 케사이-세리스가 래벌의 딸이라는 애기를 들었소. 그게 사실이오?"~ */ GOTO 16
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #42602 /* ~"나는 비비안의 향기를 찾고 있소... 그것이 어디 있는지 혹시 아시오?"~ */ GOTO 17
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #42603 /* ~"나는 마릿사의 진홍색 베일을 찾고 있소... 그것이 어디 있는지 혹시 아시오?"~ */ GOTO 18
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #42604 /* ~"혹시 래벌 퍼즐웰이 대해 아는 것이 없소?"~ */ GOTO 19
  IF ~  GlobalGT("Vivian","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #42605 /* ~"나는 지금까지 모두 아홉 명의 창녀들과 얘기를 했소... 열 번째 학생이 누구인지, 아니면 어디 있는지 혹시 아시오?"~ */ GOTO 21
  IF ~~ THEN REPLY #42606 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #42543 /* ~옷장은 이에 대해 잠시 생각하는 듯하다. "그러한 비밀을 당신 따위와 공유할 필요는 없소! 게다가 지금으로서는 원래 모습으로 돌아갈 이유도 없소, 난 아직 옷장으로서의 감각을 완전히 체험하지 못했으니까. 장식이 달린 부드러운 속옷들을 보관하고 정리하며, 여자들의 감미로운 향기를 맡는 일은 결코 간단한 일이 아니오." 서랍 하나가 열렸다 닫혔다 하며 즐거운 탄식 소리를 흉내낸다. ~ */
  IF ~~ THEN REPLY #42607 /* ~"다른 질문이 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #42608 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY #42544 /* ~"나는 당신이 직접 체험해서 깨닫도록 시시콜콜 말해주지 않겠소... 그것은 체험의 즐거움의 절반을 빼앗아 가는 셈이 될 테니까. 나는 당신이 이미 알고 있을 만한 것만 말해주리다. 이 곳은 지적인 욕망을 힐난하는 매음굴이오, 그리고 이 곳 창녀들은 화술과 의사 소통의 기술의 전문가들이오."~ */
  IF ~~ THEN REPLY #42609 /* ~"다른 질문이 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #42610 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.4
  SAY #42545 /* ~"그래, 에코. 그녀는 처음부터 벙어리였을 리는 없소. 그랬다면 의사를 소통하는 다른 방법을 틀림없이 배웠을 테니까. 따라서 그녀가 목소리를 잃은 건 최근의 일이오."~ */
  IF ~~ THEN REPLY #42611 /* ~"다른 질문이 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #42612 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.5
  SAY #42546 /* ~"나는 그녀가 *래벌*의 딸이라고 까지는 말하지 않겠소, 하지만 그녀가 나이트 해그라는 건 확실하오. 그녀의 피부, 눈, 호색적인 기질, 그리고 다른 사람들의 꿈에 대한 비이성적인 집착을 주목하시오... 모두 명확한 징후들이오. 케사이의 스스로의 본성에 대한 단호한 부정만이 그녀가 다른 나이트 해그들처럼 늙은 할망구로 변하는 것을 막아 왔다는 건 의심할 여지도 없소."~ */
  IF ~~ THEN REPLY #42613 /* ~"다른 질문이 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #42614 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.6
  SAY #42547 /* ~"이런, 그렇소... 나도 그 일에 대해서는 들었소. 정말 불행한 일이오! 당신은 그녀의 향기를 숨쉬는 절묘한 쾌락을 맛본 적이 있소?" 옷장의 서랍들은 환희로 떨린다. "너무나도 경이로웠소. 하지만 아니오, 불행히도 나는 비비안의 향기가 어디 있는지 모르오."~ */
  IF ~~ THEN REPLY #42615 /* ~"다른 질문이 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #66529 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.7
  SAY #42548 /* ~"나는 그녀가 전에는 진홍색 베일을 쓰고 바깥을 돌아다녔으나, 최근에는 방을 어둡게 한 채 그 안에만 틀어박혀 있다고 들었소. 무슨 일 때문인지 나는 모르오. 그래 그럼 그녀의 베일이 사라진 거요?"~ */
  IF ~~ THEN REPLY #42616 /* ~"그렇소. 다른 질문이 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #42617 /* ~"그렇소. 안녕히 계시오, 루이스."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.8
  SAY #42549 /* ~"시길에서 얼마 동안이라도 산 사람치고 모르는 사람은 거의 없소. 하지만 당신은 그녀에 대해 어떤 것을 알고 싶어하는 거요?" ~ */
  IF ~~ THEN REPLY #42618 /* ~"나는 그녀를 찾아야만 하오."~ */ GOTO 20
  IF ~~ THEN REPLY #42619 /* ~"관두시오. 다른 질문이 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #42620 /* ~"내가 그녀에 대해 물어본 일은 잊으시오. 안녕히 계시오, 루이스."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #42550 /* ~"당신은 미쳤소... 그것도 더럽게. 일반적으로 '완전히 돌았다'라고도 하지. 래벌은 시길로부터 오래 전에 추방되었소, 그리고 만약 그녀가 아직 죽지 않았으며, 당신은 기적적으로 그녀를 찾아낸다면, 당신은 자신이 차라리 죽었더라면 좋았을 거라고 생각하게 될 거요. 그녀는 이전에 자신을 찾아왔던 모든 사람들을 잡아 먹었으며, 아마 당신에게도 똑같은 짓을 할 거요. 그녀는 가만히 내버려 두는 것이 최선이오."~ */
  IF ~~ THEN REPLY #42621 /* ~"다른 질문이 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #42622 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.9
  SAY #42551 /* ~"열 번째 학생은 없소! 대체 무슨 헛소리요?"~ */
  IF ~~ THEN REPLY #42623 /* ~"관두시오. 다른 질문이 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #42624 /* ~"관두시오, 루이스. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 35.0 36.0
  SAY #42552 /* ~당신은 옷장으로부터 반투명한 진홍색 베일을 잡아당겨서 빼내는 데 성공한다. 당신은 그것을 챙겨 넣다가 그것에 경쾌하고 이국적이며, 너무나도 기분 좋은 향기의 향수가 뿌려져 있다는 사실을 깨닫는다.  ~ */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0 27.0 31.0
  SAY #42553 /* ~"제기랄! 불한당! 깡패! 악한! 그걸 당장 돌려줘! 그건 당신 것이 아냐! 그는 이 시설의 어떤 숙녀 소유의 매우 개인적인 옷가지야, 그리고 그녀들은 당신이 자신들의 개인적인 물건들을 만지작거리는 걸 좋아하지 않을 거라고!"~ */
  IF ~~ THEN REPLY #42625 /* ~"아, 하지만 당신은 괜찮다는 거요, 목제 변태 양반?"~ */ GOTO 24
  IF ~~ THEN REPLY #42626 /* ~"그래, 그래.. 안녕히 계시오, 루이스."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #42554 /* ~"나는 당신처럼 범죄적이고 악랄한 짓을 하고 있지 않아! 난 단지 내 개인으로서의 성장을 위해 필요한 감각 체험에 젖어 있을 뿐이라고."~ */
  IF ~~ THEN REPLY #42627 /* ~"그래, 그래.. 안녕히 계시오, 루이스."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 35.1 36.1
  SAY #42555 /* ~당신은 도저히 루이스로부터 진홍색 천을 꺼낼 수 있을 정도로 손을 민첩하게 움직일 수가 없다... 기껏해야 그러다가 당신 손가락이나 뭉개지는 게 고작일 것 같다.~ */
  IF ~~ THEN REPLY #42628 /* ~"내게 그 진홍색 천을 주시오."~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,15,STR)
~ THEN REPLY #42629 /* ~천을 꺼내기 위해 서랍을 연다.~ */ GOTO 27
  IF ~  CheckStatLT(Protagonist,16,STR)
~ THEN REPLY #42630 /* ~천을 꺼내기 위해 서랍을 연다.~ */ GOTO 28
  IF ~~ THEN REPLY #42631 /* ~천을 달라고 애걸복걸을 한다.~ */ GOTO 29
END

IF ~~ THEN BEGIN 26 // from: 25.0 28.0 29.0 30.0
  SAY #42556 /* ~"절대로, 결코, 그럴 수 없어."~ */
  IF ~  CheckStatGT(Protagonist,15,STR)
~ THEN REPLY #42632 /* ~천을 꺼내기 위해 서랍을 연다.~ */ GOTO 27
  IF ~  CheckStatLT(Protagonist,16,STR)
~ THEN REPLY #42633 /* ~천을 꺼내기 위해 서랍을 연다.~ */ GOTO 28
  IF ~~ THEN REPLY #42634 /* ~천을 달라고 애걸복걸을 한다.~ */ GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 25.1 26.0 29.1 30.1
  SAY #42557 /* ~"*으음*. 그만둬! 난 그만두라고 했어! 손잡이를 조심해! 칠을 긁지 마! 빌어먹을, 이 변태 쓰레기 같으니!" 옷장은 애를 쓰나 당신은 마침내 서랍을 열어 진홍색 베일을 그 안에서 꺼낸다. 당신은 그것을 챙겨 넣다가 그것에 경쾌하고 이국적이며, 너무나도 기분 좋은 향기의 향수가 뿌려져 있다는 사실을 깨닫는다.  ~ */
  IF ~~ THEN DO ~GiveItemCreate("SVeil",Protagonist,1,0,0)
SetGlobal("Armoire","GLOBAL",2)
~ GOTO 23
END

IF ~~ THEN BEGIN 28 // from: 25.2 26.1 28.1 30.2
  SAY #42558 /* ~서랍은 닫힌 채로 있다. 루이스는 힘을 너무 들인 탓에 숨을 헐떡이며 씨근거린다. "*꺼져, 이 야만인!"~ */
  IF ~~ THEN REPLY #42635 /* ~"내게 그 진홍색 천을 주시오, 루이스."~ */ GOTO 26
  IF ~~ THEN REPLY #42636 /* ~천을 꺼내기 위해 서랍을 연다.~ */ GOTO 28
  IF ~~ THEN REPLY #42637 /* ~천을 달라고 애걸복걸을 한다.~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 25.3 26.2 28.2
  SAY #42559 /* ~"오, 제발 그 헛소리는 집어치우시오. 그건 정말 피곤하고 *지루함*이라는 단어의 알려진 모든 의미를 초월하고 있소!"~ */
  IF ~~ THEN REPLY #42638 /* ~"내게 그 진홍색 천을 주시오."~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,15,STR)
~ THEN REPLY #42639 /* ~천을 꺼내기 위해 서랍을 연다.~ */ GOTO 27
  IF ~~ THEN REPLY #42640 /* ~조금 더 애걸복걸을 한다.~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.2
  SAY #42560 /* ~"그만 하시오! 지루해서 견딜 수가 없소. 당신은 날 졸리게 만들고 있소."~ */
  IF ~~ THEN REPLY #42641 /* ~"내게 그 진홍색 천을 주시오."~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,15,STR)
~ THEN REPLY #42642 /* ~천을 꺼내기 위해 서랍을 연다.~ */ GOTO 27
  IF ~  CheckStatLT(Protagonist,16,STR)
~ THEN REPLY #42643 /* ~천을 꺼내기 위해 서랍을 연다.~ */ GOTO 28
  IF ~~ THEN REPLY #42644 /* ~계속 애걸복걸을 한다.~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.3
  SAY #42561 /* ~옷장은 하품을 한다, 그러자 속옷들 옆으로 진홍색 천이 보인다. 당신은 손을 재빨리 내밀어 서랍이 닫히기 전에 그것을 꺼낸다. 당신은 그것을 챙겨 넣다가 그것에 경쾌하고 이국적이며, 너무나도 기분 좋은 향기의 향수가 뿌려져 있다는 사실을 깨닫는다.  ~ */
  IF ~~ THEN DO ~GiveItemCreate("SVeil",Protagonist,1,0,0)
SetGlobal("Armoire","GLOBAL",2)
~ GOTO 23
END

IF ~  Global("Armoire","GLOBAL",1)
~ THEN BEGIN 32 // from:
  SAY #42562 /* ~이것은 말하는 옷장 루이스다.~ */
  IF ~~ THEN REPLY #42645 /* ~"물어볼 것들이 좀 있소, 루이스..."~ */ GOTO 12
  IF ~~ THEN REPLY #42646 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~  Global("Armoire","GLOBAL",2)
~ THEN BEGIN 33 // from:
  SAY #42563 /* ~이것은 말하는 옷장 루이스다.~ */
  IF ~~ THEN REPLY #42647 /* ~"물어볼 것들이 좀 있소, 루이스..."~ */ GOTO 34
  IF ~~ THEN REPLY #42648 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #42564 /* ~옷장 주위에 불길한 적막감이 감돈다. 아무런 대답이 없다. 당신은 아직도 그것이 루이스라고 확신한다. 그것으로부터 발산되는 증오는 실제로 *느낄* 수가 있을 정도로 강렬하다. 하지만 그는 당신과는 한 마디도 나누려 하지 않는다. ~ */
  IF ~~ THEN REPLY #42649 /* ~"안녕히 계시오, 루이스.~ */ EXIT
  IF ~~ THEN REPLY #42650 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 36.2
  SAY #42565 /* ~당신은 옷장의 가장자리에서 만반의 준비를 하고 서 있다. 그것의 서랍은 계속 열렸다 닫혔다 하고 있으나, 당신이 천을 꺼낼 수 있을 정도로 오래 열려 있지는 않는다. ~ */
  IF ~  CheckStatGT(Protagonist,15,DEX)
~ THEN REPLY #42651 /* ~서랍이 열려 있는 동안 그 안에 손을 집어 넣으려고 시도한다.~ */ DO ~GiveItemCreate("SVeil",Protagonist,1,0,0)
SetGlobal("Armoire","GLOBAL",2)
~ GOTO 22
  IF ~  CheckStatLT(Protagonist,16,DEX)
~ THEN REPLY #42652 /* ~서랍이 열려 있는 동안 그 안에 손을 집어 넣으려고 시도한다.~ */ GOTO 25
END

IF ~~ THEN BEGIN 36 // from: 12.3
  SAY #42566 /* ~"*생각한다고?* *생각?!* 명확한 증거도 없이 함부로 사람을 모함하다니, 당신은 어떻게 그렇게 무례하고 뻔뻔할 수가 있소? 어떻게 감히! 이 건방진 똥개! 난 널..."

루이스가 악담을 퍼붓는 것과 보조를 맞추어 그의 서랍들이 열렷다 닫힌다... 옷가지 사이로 진홍색 천이 보인다. 하지만 서랍들이 계속 열렸다 닫혔다 하는 탓에 꺼내기가 어렵다.~ */
  IF ~  CheckStatGT(Protagonist,15,DEX)
~ THEN REPLY #42653 /* ~그것을 꺼내려고 시도한다.~ */ DO ~GiveItemCreate("SVeil",Protagonist,1,0,0)
SetGlobal("Armoire","GLOBAL",2)
~ GOTO 22
  IF ~  CheckStatLT(Protagonist,16,DEX)
~ THEN REPLY #42654 /* ~그것을 꺼내려고 시도한다.~ */ GOTO 25
  IF ~~ THEN REPLY #42655 /* ~그걸 잡을 기회를 노린다.~ */ GOTO 35
END
