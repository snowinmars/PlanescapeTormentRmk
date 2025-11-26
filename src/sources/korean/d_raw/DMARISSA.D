// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMARISSA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMARISSA~

IF ~  Global("Marissa","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2957 /* ~어둠 속에서 흘깃 봐서는 칸막이 뒤에 있는 사람이 여자 같다는 것 이상은 파악하기 어렵다. 그녀는 당신을 향해 몸을 돌리나, 그녀의 얼굴은 전혀 보이지 않는다.~ */
  IF ~~ THEN REPLY #2959 /* ~"안녕하시오..."~ */ DO ~SetGlobal("Marissa","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #2958 /* ~그녀를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #40451 /* ~그녀는 마치 강철 대거로 돌을 긁는 듯한 위험하고 느린 목소리로 대답한다: "뭐죠? 마릿사와 얘기를 하러 왔나요? 어두운 방 안에 함부로 들어와 내 칸막이 뒤까지 그렇게 난입을 하다니 정말 무례하고... 무모하군요." 미풍처럼... 아니 뱀들의 쉿 소리처럼 희미하게 살랑거리는 소리가 들린다. ~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 428
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40452 /* ~"미안하오... 난 이 곳에 사람이 있는지 몰랐소."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40453 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40454 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #40455 /* ~여자는 가볍게 *흥* 소리를 낸다. "하지만 방 안에는 누군가가 있어요, 그걸 느끼지 못했나요? 그럼 당신은 곧 떠날 건가요?"~ */
  IF ~~ THEN REPLY #40456 /* ~"아직 아니오... 질문할 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40457 /* ~"그렇소... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY #40458 /* ~"그래요?" 희미한 쉿 소리가 들린다; 여자가 다시 입을 열었을 때 그녀의 목소리는 빈정거림으로 가득하다. "아아, 정말 기대가 되는군요..."~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0 5.1 6.1 7.1 8.0 9.1 10.2 11.1 12.2 13.1 14.1 15.2 16.2 17.2 18.1 20.3 21.1 24.3 26.6 27.1 28.2 29.0 31.1 32.0 35.6 37.2 38.1 39.1 40.0 41.0 42.0 43.0 44.0 45.0 46.2 47.0 48.0 50.0 51.1 52.0 53.1 54.0 55.2 57.0 58.0
  SAY #40459 /* ~"질문하세요."~ */
  IF ~  PartyHasItem("CVeil")
~ THEN REPLY #40460 /* ~"나는 당신의 진홍색 베일을 찾았소."~ */ DO ~DestroyPartyItem("CVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~  PartyHasItem("SVeil")
~ THEN REPLY #40461 /* ~"나는 당신의 진홍색 베일을 찾았소."~ */ DO ~DestroyPartyItem("SVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~  GlobalLT("Veil_Quest","AR0605",2)
~ THEN REPLY #40462 /* ~"왜 당신은 그 칸막이 뒤에 머무르는 거요?"~ */ GOTO 12
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40463 /* ~"왜 당신은 그 칸막이 뒤에 머무르는 거요?"~ */ GOTO 50
  IF ~  GlobalLT("Veil_Quest","AR0605",2)
~ THEN REPLY #40464 /* ~"왜 이 곳은 이렇게 어둡소?"~ */ GOTO 9
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40465 /* ~"왜 이 곳은 이렇게 어둡소?"~ */ GOTO 50
  IF ~~ THEN REPLY #40466 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 10
  IF ~~ THEN REPLY #40467 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 38
  IF ~  Global("Veil_Quest","AR0605",0)
Global("Know_Marissa_Medusa","AR0605",1)
~ THEN REPLY #40469 /* ~"당신은, 예를 들자면, 림-림을 돌로 만들 수가 있소?"~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ GOTO 53
  IF ~  Global("Veil_Quest","AR0605",1)
Global("Know_Marissa_Medusa","AR0605",1)
~ THEN REPLY #40470 /* ~"당신은, 예를 들자면, 림-림을 돌로 만들 수가 있소?"~ */ GOTO 54
  IF ~  Global("Veil_Quest","AR0605",2)
Global("Know_Marissa_Medusa","AR0605",1)
~ THEN REPLY #40471 /* ~"당신은, 예를 들자면, 림-림을 돌로 만들 수가 있소?"~ */ GOTO 55
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #40472 /* ~"침묵하는 창녀에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ JOURNAL #66744 /* ~매음굴의 창녀들 중 하나는 내게 침묵하는 창녀 에코에 대해서는 돌로라에게 물어보라고 권했다. 그녀의 의하면 돌로라는 에코의 옛 애인과 가끔 얘기를 하는데, 그는 에코가 말을 하지 않기 전부터 그녀를 알고 있었다고 한다. ~ */ GOTO 52
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67846 /* ~"침묵하는 창녀에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ JOURNAL #66744 /* ~매음굴의 창녀들 중 하나는 내게 침묵하는 창녀 에코에 대해서는 돌로라에게 물어보라고 권했다. 그녀의 의하면 돌로라는 에코의 옛 애인과 가끔 얘기를 하는데, 그는 에코가 말을 하지 않기 전부터 그녀를 알고 있었다고 한다. ~ */ GOTO 52
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40473 /* ~"나는 케사이-세리스가 래벌의 딸이라는 애기를 들었소. 그게 사실이오?"~ */ JOURNAL #66743 /* ~나는 창녀들 중 하나에게 케사이-세리스가 정말로 래벌의 딸인지 아느냐고 묻자, 그녀는 내게 줄리엣에게 물어보라고 권했다. 줄리엣이 몬태규와 만나기 전에 그들은 좋은 친구였던 모양이다.~ */ GOTO 41
  IF ~  Global("Scent_Quest","AR0605",1)
Global("Nenny_Hint","AR0605",1)
GlobalLT("Veil_Quest","AR0605",2)
~ THEN REPLY #40474 /* ~"나는 당신이 최근 비비안의 방에서 나오는 것이 목격되었다는 얘기를 들었소... 그 일과 그녀의 사라진 향기 사이에 무슨 연관이라도 있소?"~ */ DO ~SetGlobal("Nenny_Hint","AR0605",2)
~ JOURNAL #39523 /* ~나는 마릿사에게 그녀가 비비안의 방에서 몰래 나오는 것을 누가 본 일에 대해서 물었으나, 그녀는 아무런 대답도 하지 않았다. ~ */ GOTO 51
  IF ~  Global("Scent_Quest","AR0605",1)
Global("Nenny_Hint","AR0605",1)
Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40475 /* ~"나는 당신이 최근 비비안의 방에서 나오는 것이 목격되었다는 얘기를 들었소... 그 일과 그녀의 사라진 향기 사이에 무슨 연관이라도 있소?"~ */ DO ~SetGlobal("Nenny_Hint","AR0605",2)
~ JOURNAL #39523 /* ~나는 마릿사에게 그녀가 비비안의 방에서 몰래 나오는 것을 누가 본 일에 대해서 물었으나, 그녀는 아무런 대답도 하지 않았다. ~ */ GOTO 45
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #40476 /* ~"나는 비비안의 향기를 찾고 있소... 그것이 어디 있는지 혹시 아시오?"~ */ GOTO 44
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40477 /* ~"혹시 래벌 퍼즐웰에 대해 아는 것이 없소?"~ */ JOURNAL #66742 /* ~매음굴의 창녀들 중 하나에게 래벌에 대해 묻자, 그녀는 이브즈와 얘기를 해보라고 권했다. 그녀의 말에 의하면 이브즈는 온갖 종류의 이야기를 수집하며, 아마 그녀의 레퍼토리 중에는 래벌의 얘기도 포함되어 있을 것이라고 한다.  ~ */ GOTO 43
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40478 /* ~"나는 지금까지 모두 아홉 명의 창녀들과 얘기를 했소... 열 번째 학생이 누구인지, 아니면 어디 있는지 혹시 아시오?"~ */ GOTO 42
  IF ~~ THEN REPLY #40479 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 10.0 11.0
  SAY #40468 /* ~희미한 쉿 소리가 들린다. "내 물건이 없어졌고, 대신 원치 않는 것이 내 문 앞에 도착했기 때문이죠."~ */
  IF ~~ THEN REPLY #40480 /* ~"뭐가 없어졌단 말이오?"~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ JOURNAL #39522 /* ~지적인 욕망을 힐난하는 매음굴의 창녀들 중 하나인 마릿사는 그녀의 진홍색 베일을 잃어버렸다. 그녀가 내게 그것을 찾아달라고 부탁을 하지는 않았으나, 사람들에게 그것에 대해 물어보고 어디에 있는지 찾아봐야겠다. ~ */ GOTO 6
  IF ~~ THEN REPLY #40481 /* ~"다른 질문이 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40482 /* ~"그럼 떠나겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 51.0
  SAY #40483 /* ~"내 베일... 내 진홍색 베일. 혹시 본 적이 있나요?"~ */
  IF ~~ THEN REPLY #40484 /* ~"아니오... 그건 무슨 용도로 쓰이오? 그냥 보통 베일이오?~ */ GOTO 7
  IF ~~ THEN REPLY #40485 /* ~"아니오. 물어볼 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40486 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 27.0 53.0
  SAY #40487 /* ~마릿사는 조용히 한숨을 쉰다. "아니, 그렇지는 않아요. 그건 내가 의사 소통을 하는 것을 도와요... 서로 얼굴을 마주보고 말하는 것을."~ */
  IF ~~ THEN REPLY #40488 /* ~"왜 당신은 자신의 얼굴을 가려야 하오?"~ */ GOTO 8
  IF ~~ THEN REPLY #40489 /* ~"다른 질문이 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40490 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #40491 /* ~"우둔한 질문들은 그만 집어치워요! 정말 당신은 날 피곤할 정도로 짜증스럽게 만드는군요! 자, 대체 뭘 원하는 거죠?"~ */
  IF ~~ THEN REPLY #40492 /* ~"질문에 대한 답을 원할 뿐이오..."~ */ GOTO 4
  IF ~~ THEN REPLY #40493 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.4 12.0
  SAY #40494 /* ~"불필요하고... 당혹스러운 희생자가 발생하는 것을 막기 위해서예요. 자, 대체 뭘 원하는 거죠?"~ */
  IF ~~ THEN REPLY #40495 /* ~"나는 당신이 밝은 곳으로 나오기를 바라오."~ */ GOTO 13
  IF ~~ THEN REPLY #40496 /* ~"질문에 대한 답을 원할 뿐이오..."~ */ GOTO 4
  IF ~~ THEN REPLY #40497 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.6
  SAY #40498 /* ~"이 곳에 앉아 생각에 잠겨 있어요. 당신이 당신 생각을 말하는 걸 들으면서. 그 양쪽의 침묵은 문자 그대로, 그리고 비유적으로 귀청을 터지게 하는군요."~ */
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40499 /* ~"당신은 왜 성질이 그렇게 더럽소?"~ */ GOTO 5
  IF ~~ THEN REPLY #40500 /* ~"나는 당신 생각을 듣고 싶소..."~ */ GOTO 11
  IF ~~ THEN REPLY #40501 /* ~"다른 질문이 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40502 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #40503 /* ~"오, 난 그렇게 생각하지 않아요. 당신은 지금 그것들이 아주 마음에 들지 않을 거예요. 대체 뭘 원하는 거죠?"~ */
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40504 /* ~"당신은 왜 성질이 그렇게 더럽소?"~ */ GOTO 5
  IF ~~ THEN REPLY #40505 /* ~"질문에 대한 답을 원할 뿐이오..."~ */ GOTO 4
  IF ~~ THEN REPLY #40506 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.2
  SAY #40507 /* ~"당신은 내가 이 칸막이 밖으로 나와 밝은 곳에서 당신과 얼굴을 마주보고 이야기하기를 바라나요?" 마릿사가 웃는다, 그러자 비늘과 비늘이 스치는 소리가 들린다.~ */
  IF ~~ THEN REPLY #40508 /* ~"왜 이 곳은 이렇게 어둡소?"~ */ GOTO 9
  IF ~~ THEN REPLY #40509 /* ~"제발 밝은 곳으로 나와 주시오."~ */ GOTO 13
  IF ~~ THEN REPLY #40510 /* ~"그럼 다른 질문이 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40511 /* ~"그렇다면 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.0 12.1
  SAY #40512 /* ~"'제발'이란 말을 덧붙여도 해도 날 설득시킬 순 없어요. 자, 무엇을 원하죠? 단지 날 보기 위해서 여기까지 오지는 않았겠지요."~ */
  IF ~~ THEN REPLY #40513 /* ~"나는 당신이 어떻게 생겼는지 *정말* 보고 싶소..."~ */ GOTO 14
  IF ~~ THEN REPLY #40514 /* ~"그럼 다른 질문이 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40515 /* ~"그렇다면 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #40516 /* ~"당신은 그런 걸 원하지 않을 거예요."~ */
  IF ~~ THEN REPLY #40517 /* ~"아니, 난 원하오."~ */ GOTO 15
  IF ~~ THEN REPLY #40518 /* ~"그럼 다른 질문이 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40519 /* ~"그렇다면 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #40520 /* ~"*당신*은 어떻게 생겼죠? 어둠은 양쪽 모두를 가리고 있어요. 게임을 할까요? 나는 지금 몹시 지루하니까. 맞춰 보지요... 당신은 인간 남성인가요? ~ */
  IF ~~ THEN REPLY #40521 /* ~"그렇소."~ */ GOTO 16
  IF ~~ THEN REPLY #40522 /* ~"그런 것 같소..."~ */ GOTO 17
  IF ~~ THEN REPLY #40523 /* ~"게임은 사양하겠소. 질문할 것이 하나 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40524 /* ~"나는 지금 게임할 기분이 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #40525 /* ~"혹시 목을... 다쳤나요?"~ */
  IF ~~ THEN REPLY #40526 /* ~"그렇소."~ */ GOTO 20
  IF ~~ THEN REPLY #40527 /* ~"볼 수는 없지만 그렇다고 생각하오."~ */ GOTO 20
  IF ~~ THEN REPLY #40528 /* ~"게임은 그만둡시다. 질문할 것이 하나 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40529 /* ~"나는 지금 게임할 기분이 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY #40530 /* ~"'그런 것 같소'? 어떻게 모를 수가 있죠?"~ */
  IF ~~ THEN REPLY #40531 /* ~"그건 좀 복잡하오."~ */ GOTO 18
  IF ~~ THEN REPLY #40532 /* ~"나는 정말로 내가 누군지 모르오."~ */ GOTO 19
  IF ~~ THEN REPLY #40533 /* ~"관두시오. 질문할 것이 하나 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40534 /* ~"그럼 관두시오. 안녕히 계시오, 마릿사."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #40535 /* ~"정말인가요? 나처럼 평범한 지능만 지닌 사람으로서는 이해하기 어렵겠군요."~ */
  IF ~~ THEN REPLY #40536 /* ~"나는 정말로 내가 누군지 모르오."~ */ GOTO 19
  IF ~~ THEN REPLY #40537 /* ~"관두시오. 질문할 것이 하나 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40538 /* ~"그럼 관두시오. 안녕히 계시오, 마릿사."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1 18.0
  SAY #40539 /* ~"정말인가요? 매우... 훙미롭군요..." 어둠 속에서 쉿 소리가 들린다.~ */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 16.0 16.1 19.0
  SAY #40540 /* ~"흠... 당신의 생김새를 내게 묘사하세요."~ */
  IF ~~ THEN REPLY #40541 /* ~진실: "나는 키가 크고, 근육질이며, 온몸에 끔찍한 흉터투성이요."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Marissa_1","GLOBALLaw",1)
~ GOTO 21
  IF ~~ THEN REPLY #40542 /* ~거짓말: "나는 키가 크고, 강건하며... 미남이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marissa_1","GLOBALLaw",-1)
~ GOTO 22
  IF ~~ THEN REPLY #40543 /* ~"당신이 먼저 하시오, 마릿사."~ */ GOTO 24
  IF ~~ THEN REPLY #40544 /* ~"사양하겠소. 질문할 것이 하나 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40545 /* ~"그럴 기분이 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 37.1
  SAY #40546 /* ~"정말인가요? 흠..." 그녀는 잠시 얘기를 중단한다. "어떻게 해서 그렇게 끔찍한 흉터가 생기게 되었죠? 아니... 관두세요. 알고 싶지 않아요."~ */
  IF ~~ THEN REPLY #40547 /* ~"이제 당신 자신에 대해 묘사하시오."~ */ GOTO 36
  IF ~~ THEN REPLY #40548 /* ~"알겠소. 질문할 것이 하나 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40549 /* ~"좋소. 안녕히 계시오, 마릿사."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #40550 /* ~"오, 정말인가요? 내게 아주 가까이 다가오세요, 우리 둘이 서로를 볼 수 있도록..." 그녀로부터 희미한 쉿 소리가 난다...~ */
  IF ~~ THEN REPLY #40551 /* ~그녀에게 다가간다.~ */ GOTO 23
  IF ~~ THEN REPLY #40552 /* ~뒤로 주춤한다.~ */ GOTO 37
END

IF ~~ THEN BEGIN 23 // from: 22.0 37.0
  SAY #40553 /* ~당신은 당신 얼굴이 마릿사의 얼굴에 거의 닿을 정도로 가까이 다가간다, 그리고 그녀의 얼굴을 보기 위해 눈을 가늘게 뜬다. 그녀의 얼굴은 아름다우며, 그녀의 창백한 피부에는 흠 하나 없다. 하지만 그녀의 머리는 쉿 소리를 내며 꿈틀거리는 독사들이다. 마릿사의 밝은 푸른색 눈은 좀 이상하게 느껴진다, 그러나 이내 그것이 눈이 아니라 눈꺼풀에 새겨진 문신이라는 것을 깨닫는다. "정말 놀랄 준비가 됐나요?" 그녀는 입가에 사악한 미소를 지으며 물어본다...~ */
  IF ~~ THEN REPLY #40554 /* ~몸을 돌린다.~ */ GOTO 48
  IF ~~ THEN REPLY #40555 /* ~"좋소, 날 놀라게 해보시오."~ */ GOTO 49
END

IF ~~ THEN BEGIN 24 // from: 20.2
  SAY #40556 /* ~"형용사를 형용사로 교환할까요? 그럼 나는 '맵시 있는'으로 시작하겠어요. 다음 형용사를 말하세요."~ */
  IF ~~ THEN REPLY #40557 /* ~"키기 크다."~ */ GOTO 25
  IF ~~ THEN REPLY #40558 /* ~"근육질이다"~ */ GOTO 25
  IF ~~ THEN REPLY #40559 /* ~"흉터투성이다"~ */ GOTO 25
  IF ~~ THEN REPLY #40560 /* ~"아니... 게임은 관둡시다. 질문할 것이 하나 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40561 /* ~"지금은 게임을 하고 싶지 않소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.1 24.2
  SAY #40562 /* ~"흠... 그럼 나는... '피부가 창백한.'"

그녀가 자신을 갈라진-혀와 빛나는 눈(지금은 감고 있는 듯하다), 그리고 꿈틀거리는 독사들로 만들어진 머리를 지닌, 창백한 피부의 맵시 있는 아름다운 여인이라고 묘사할 때까지 당신들 두 사람은 계속 형용사를 교환한다.
~ */
  IF ~~ THEN REPLY #40563 /* ~"당신은 마족이오?"~ */ DO ~SetGlobal("Know_Marissa_Medusa","AR0605",1)
~ JOURNAL #66746 /* ~사무구에 있는 매음굴의 창녀들 중 하나인 마릿사는 자신에게는 흘긋 보기만 해도 살아있는 생명체를 돌로 변하게 할 수 있는 능력이 있다고 주장한다. ~ */ GOTO 26
  IF ~~ THEN REPLY #40564 /* ~"당신은 매우... 이국적인 용모를 지닌 듯하오, 마릿사,"~ */ DO ~SetGlobal("Know_Marissa_Medusa","AR0605",1)
~ JOURNAL #66746 /* ~사무구에 있는 매음굴의 창녀들 중 하나인 마릿사는 자신에게는 흘긋 보기만 해도 살아있는 생명체를 돌로 변하게 할 수 있는 능력이 있다고 주장한다. ~ */ GOTO 35
END

IF ~~ THEN BEGIN 26 // from: 25.0 36.0
  SAY #40565 /* ~마릿사는 가볍게 웃는다, 그리고 희미한 쉿 소리가 웃음 소리를 뒤따른다. "아니, 전혀 아니에요... 내게는 일부 사람들이 '악마적'이라고 부르는 힘이 있기는 하지만. 내 시선은 살아 있는 생명체를 돌로 만들 수 있어요. 깜짝할 사이에 생물에서 석상으로 변하는 거죠...~ */
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40566 /* ~"살아 있는 생명을 돌로? 당신은 림-림을 돌로 만들 수가 있겠소? ~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ JOURNAL #39522 /* ~지적인 욕망을 힐난하는 매음굴의 창녀들 중 하나인 마릿사는 그녀의 진홍색 베일을 잃어버렸다. 그녀가 내게 그것을 찾아달라고 부탁을 하지는 않았으나, 사람들에게 그것에 대해 물어보고 어디에 있는지 찾아봐야겠다. ~ */ GOTO 53
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40567 /* ~"살아 있는 생명을 돌로? 당신은 림-림을 돌로 만들 수가 있겠소? ~ */ GOTO 54
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40568 /* ~"살아 있는 생명을 돌로? 당신은 림-림을 돌로 만들 수가 있겠소? ~ */ GOTO 55
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40569 /* ~"때로는 좀 불편하겠소."~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ JOURNAL #39522 /* ~지적인 욕망을 힐난하는 매음굴의 창녀들 중 하나인 마릿사는 그녀의 진홍색 베일을 잃어버렸다. 그녀가 내게 그것을 찾아달라고 부탁을 하지는 않았으나, 사람들에게 그것에 대해 물어보고 어디에 있는지 찾아봐야겠다. ~ */ GOTO 27
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40570 /* ~"때로는 좀 불편하겠소."~ */ GOTO 28
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40571 /* ~"때로는 좀 불편하겠소."~ */ GOTO 29
  IF ~~ THEN REPLY #40572 /* ~"흥미롭군. 다른 질문이 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40573 /* ~"알겠소. 이만 실례해야겠소. 안녕히 계시오, 마릿사,"~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.3 35.3
  SAY #40574 /* ~"그렇게 생각해요? 그것이 내가 칸막이 뒤에 숨어 어둠 속에서 홀로 앉아 있는 이유겠군요." 마릿사를 볼 수는 없으나 그녀가 냉소하고 있는 건 틀림없다. 그녀는 갑자기 한숨을 쉰다. "내 진홍색 베일이 어디 있는 지만 알 수 있다면. 혹시 그것을 본 적이 있나요?"~ */
  IF ~~ THEN REPLY #40575 /* ~"아니오... 그건 무슨 용도로 쓰이오? 그냥 보통 베일이오?~ */ GOTO 7
  IF ~~ THEN REPLY #40576 /* ~"아니오. 물어볼 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40577 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.4 35.4
  SAY #40578 /* ~"그렇게 생각해요? 그것이 내가 칸막이 뒤에 숨어 어둠 속에서 홀로 앉아 있는 이유겠군요." 마릿사를 볼 수는 없으나 그녀가 냉소하고 있는 건 틀림없다. 그녀는 갑자기 한숨을 쉰다. "내 진홍색 베일이 어디 있는 지만 알 수 있다면."~ */
  IF ~  PartyHasItem("CVeil")
~ THEN REPLY #40579 /* ~"여기 당신 베일이 있소, 마릿사."~ */ DO ~DestroyPartyItem("CVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~  PartyHasItem("SVeil")
~ THEN REPLY #40580 /* ~"여기 당신 베일이 있소, 마릿사."~ */ DO ~DestroyPartyItem("SVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~~ THEN REPLY #40581 /* ~"질문할 것이 하나 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40582 /* ~"안녕히 계시오, 마릿사,"~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.5 35.5
  SAY #40583 /* ~"내 진홍색 베일은 그러한 일이 생기는 일 없이 돌아다닐 수 있게 해줘요. 그러니 견딜 만 해요."~ */
  IF ~~ THEN REPLY #40584 /* ~"질문할 것이 하나 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40585 /* ~"안녕히 계시오, 마릿사,"~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 4.0 4.1 28.0 28.1 46.0 46.1
  SAY #40586 /* ~"그럼 그걸 건네주겠어요?"~ */
  IF ~~ THEN REPLY #40587 /* ~"물론이오. 여기 있소..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Marissa_1","GLOBALGood",1)
~ JOURNAL #39521 /* ~나는 마릿사의 진홍색 베일을 그녀에게 돌려주었다, 하지만 얻은 것은 없었다. ~ */ GOTO 31
  IF ~~ THEN REPLY #40588 /* ~"먼저 그것을 찾아준 데 대한 대가를 받아야만 하겠소..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marissa_1","GLOBALGood",-1)
~ GOTO 33
END

IF ~~ THEN BEGIN 31 // from: 30.0 33.0 34.0
  SAY #40589 /* ~당신은 진홍색 베일을 내민다, 그리고 그녀가 당신 손에서 그것을 가져가는 것을 느낀다. "아, 훨씬 낫군요." 그녀가 눈을 뜨자 두 개의 반짝이는 붉은 점이 나타난다. "그래, 당신은 그렇게 생겼군요... 눈을 감고 있는 편이 나았을 것 같군요."~ */
  IF ~~ THEN REPLY #40590 /* ~"당신의 그 갈라진-혀를 함부로 놀리지 마시오, 마릿사."~ */ GOTO 32
  IF ~~ THEN REPLY #40591 /* ~"질문할 것이 하나 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40592 /* ~"안녕히 계시오, 마릿사."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #40593 /* ~"날 자극하지 마세요."~ */
  IF ~~ THEN REPLY #40594 /* ~"질문할 것이 하나 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40595 /* ~"안녕히 계시오, 마릿사."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.1
  SAY #40596 /* ~"물론이에요.. 정말 용병답게 돈이라면 사족을 못 쓰는군요. 자... 손을 내밀어 내 손목을 잡으세요... 거기에는 금팔찌가 있어요. 줄 테니 가져가세요. 당신에게는 내 베일보다 도 쓸모가 있을 테니."~ */
  IF ~~ THEN REPLY #40597 /* ~"관두시오. 여기 있소, 당신 베일을 그냥 가져가시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Marissa_1","GLOBALGood",1)
~ JOURNAL #39521 /* ~나는 마릿사의 진홍색 베일을 그녀에게 돌려주었다, 하지만 얻은 것은 없었다. ~ */ GOTO 31
  IF ~~ THEN REPLY #40598 /* ~팔찌를 받는다.~ */ DO ~GiveItemCreate("GolBra",Protagonist,1,0,0)
~ JOURNAL #39520 /* ~나는 마릿사의 진홍색 베일을 그녀에게 돌려주었다, 하지만 그에 앞서 그녀에게 보상을 요구하였다. ~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY #40599 /* ~당신은 마릿사의 가냘픈 손목에서 팔찌를 빼낸다 ...~ */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 35 // from: 25.1 36.1
  SAY #40600 /* ~마릿사는 가볍게 웃는다, 그리고 희미한 쉿 소리가 웃음 소리를 뒤따른다. "아, 그래요. 나는 흘긋 보기만 해도 살아 있는 생명체를 돌로 만들 수 있어요. 깜짝할 사이에 생물에서 석상으로 변하는 거죠...~ */
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40601 /* ~"살아 있는 생명을 돌로? 당신은 림-림을 돌로 만들 수가 있겠소? ~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ GOTO 53
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40602 /* ~"살아 있는 생명을 돌로? 당신은 림-림을 돌로 만들 수가 있겠소? ~ */ GOTO 54
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40603 /* ~"살아 있는 생명을 돌로? 당신은 림-림을 돌로 만들 수가 있겠소? ~ */ GOTO 55
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40604 /* ~"때로는 좀 불편하겠소."~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ GOTO 27
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40605 /* ~"때로는 좀 불편하겠소."~ */ GOTO 28
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40606 /* ~"때로는 좀 불편하겠소."~ */ GOTO 29
  IF ~~ THEN REPLY #40607 /* ~"흥미롭군. 다른 질문이 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40608 /* ~"알겠소. 이만 실례해야겠소. 안녕히 계시오, 마릿사."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 21.0
  SAY #40609 /* ~마릿사는 자신을 갈라진-혀와 빛나는 눈(지금은 감고 있는 듯하다), 그리고 꿈틀거리는 독사들로 만들어진 머리를 지닌, 창백한 피부의 맵시 있는 아름다운 여인이라고 묘사한다.~ */
  IF ~~ THEN REPLY #40610 /* ~"당신은 마족이오?"~ */ DO ~SetGlobal("Know_Marissa_Medusa","AR0605",1)
~ JOURNAL #66746 /* ~사무구에 있는 매음굴의 창녀들 중 하나인 마릿사는 자신에게는 흘긋 보기만 해도 살아있는 생명체를 돌로 변하게 할 수 있는 능력이 있다고 주장한다. ~ */ GOTO 26
  IF ~~ THEN REPLY #40611 /* ~"당신은 매우... 이국적인 용모를 지닌 듯하오, 마릿사,"~ */ DO ~SetGlobal("Know_Marissa_Medusa","AR0605",1)
~ JOURNAL #66746 /* ~사무구에 있는 매음굴의 창녀들 중 하나인 마릿사는 자신에게는 흘긋 보기만 해도 살아있는 생명체를 돌로 변하게 할 수 있는 능력이 있다고 주장한다. ~ */ GOTO 35
END

IF ~~ THEN BEGIN 37 // from: 22.1
  SAY #40612 /* ~"당신은 당신에 대한 내 평가를 의심하나요? 당신은 겉보기와는 다른 존재인가요?"~ */
  IF ~~ THEN REPLY #40613 /* ~그녀에게 다가간다.~ */ GOTO 23
  IF ~~ THEN REPLY #40614 /* ~"좋소... 나는 키가 크고, 근육질이며, 온몸에 끔찍한 흉터투성이요"~ */ GOTO 21
  IF ~~ THEN REPLY #40615 /* ~"관두시오. 질문할 것이 하나 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40616 /* ~"지금은 그 일에 대해서는 신경 쓰지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 4.7
  SAY #40617 /* ~"아니, 그럴 기분이 아니에요. 아마 이 곳의 다른 여자들이라면 당신에게 그레이스 여사의 센세이트 지망생을 위한 작은 햑교에 대해 자세히 설명해 줄 거예요.. 그들에게 가보세요."~ */
  IF ~~ THEN REPLY #40618 /* ~"센세이트?"~ */ GOTO 39
  IF ~~ THEN REPLY #40619 /* ~"지금은 아니오. 질문할 것이 하나 더 있소."~ */ GOTO 4
  IF ~~ THEN REPLY #40620 /* ~"그러리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #40621 /* ~"그래요... 체험에 모든 것을 바친 어리석은 집단이지요. 센세이트가 되기 위해 내가 센세이트가 될 필요는 없어요... 일단 시 공회당을 이용할 수 있게 되어 감각 체험실을 질릴 때까지 이용한 뒤에는 다른 곳으로 떠날 생각이에요."~ */
  IF ~~ THEN REPLY #40622 /* ~"감각 체험실에 대해 얘기해주시오."~ */ GOTO 40
  IF ~~ THEN REPLY #40623 /* ~"다른 질문이 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40624 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #40625 /* ~"체험들이 감각석이라고 불리는 장치에 기록되어 있는 방이에요. 두 종류가 존재하죠. 하나는 누구나 이용할 있는 시 공회당의 일반인용 감각 체험실이고, 다른 하나는 감각의 공동체 의 멤버, 즉 센세이트만 이용할 수 있는 당원 전용 체험실이에요."~ */
  IF ~~ THEN REPLY #40626 /* ~"다른 질문이 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40627 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 4.13
  SAY #40628 /* ~"몰라요... 하지만 별로 놀랍지는 않군요. 헤라 여신에게 걸고 말하건대, 그녀의 생김새를 한 번 보세요! 하지만 줄리엣에게 물어보세요. 몬태규가 나타나기 전에 그들은 친구였으니까."~ */
  IF ~~ THEN REPLY #40629 /* ~"다른 질문이 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40630 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 4.18
  SAY #40631 /* ~"나는 내 방에서 대부분의 시간을 보내요, 하지만 열 번째 학생이 왔다면 나라도 알았을 거예요. 현재 그런 사람은 없어요."~ */
  IF ~~ THEN REPLY #40632 /* ~"다른 질문이 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40633 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 4.17
  SAY #40634 /* ~"아뇨. 당신은 아나요?" 어둠 속에서 짜증스런 탄식 소리가 들려 온다. "가서 이브즈에게 물어보세요. 그녀는 많은 이야기들을 모으고 있으며, 아마 당신에게 쓸모가 있는 이야기를 알고 있을지도 몰라요."~ */
  IF ~~ THEN REPLY #40635 /* ~"그럼 관두시오. 다른 질문이 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40636 /* ~"내가 질문했던 일에 대해선 잊으시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 4.16
  SAY #40637 /* ~"아니, 전혀 모르겠어요."~ */
  IF ~~ THEN REPLY #40638 /* ~"다른 질문이 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40639 /* ~"그만 가보도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 4.15
  SAY #40640 /* ~마릿사는 아무 말도 하지 않으나, 어둠 속에서 노여움이 섞인 쉿 소리가 들려 온다. "그래요, 나는 비비안의 방에 몰래 들어가 그녀의 향수를 좀 쓴 적이 있어요... 하지만 그건 여기 있는 여자들 모두에게 해당되는 얘기예요. 만약 당신이 내가 그녀의 *개인적* 향기를 가져갔다고 생각한다면 한 번 냄새를 맡아 보시죠. 내 몸이나 내 방 안에서 그걸 찾지는 못할 거예요."~ */
  IF ~~ THEN REPLY #40641 /* ~"다른 질문이 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40642 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Marissa","GLOBAL",1)
~ THEN BEGIN 46 // from:
  SAY #40643 /* ~마릿사의 차갑고 잔혹한 목소리가 어둠 속에서 들려 온다. "그것이 돌아왔네! 다시 온 데는 무슨 이유가 있겠지요? 아니면 무의미한 질문을 더 하려고 왔나요?"~ */
  IF ~  PartyHasItem("CVeil")
~ THEN REPLY #40644 /* ~"실은 당신의 진홍색 베일을 가져왔소..."~ */ DO ~DestroyPartyItem("CVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~  PartyHasItem("SVeil")
~ THEN REPLY #40645 /* ~"실은 당신의 진홍색 베일을 가져왔소..."~ */ DO ~DestroyPartyItem("SVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~~ THEN REPLY #40646 /* ~"추가의 '무의미한' 질문들이오, 마릿사."~ */ GOTO 4
  IF ~~ THEN REPLY #40647 /* ~"그냥 지나다가 들렸을 뿐이오. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Marissa","GLOBAL",2)
~ THEN BEGIN 47 // from:
  SAY #40648 /* ~마릿사의 빨간 눈이 어둠 속에서 빛난다. "뭐죠?" 그녀의 질문에는 희미한 쉿 소리가 뒤따른다.~ */
  IF ~~ THEN REPLY #40649 /* ~"질문할 것들이 좀 있소, 마릿사..."~ */ GOTO 4
  IF ~~ THEN REPLY #40650 /* ~"아무 것도 아니오, 그냥 지나던 길이었소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 23.0
  SAY #40651 /* ~마릿사가 눈을 뜨자 당신은 시선을 돌린다. 당신은 시야의 한쪽 구석에서 빛나고 있는 차갑고 붉은 빛을 느낄 수가 있다. "아..." 그녀는 실망하여 한숨을 쉰다. "당신은 당신이 말한 것과는 전혀 다르게 생겼군요... 아쉽군요. 자, 나를 똑바로 쳐다보세요. 눈을 다시 감았어요."~ */
  IF ~~ THEN REPLY #40652 /* ~"질문할 것이 하나 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40653 /* ~"괜찮소... 난 그냥 떠나겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 23.1
  SAY #40654 /* ~마릿사가 갑자기 눈을 활짝 뜬다, 그리고 당신은 거기서 나오는 차갑고 붉은 빛을 쐰다... 그것은 당신의 두 눈이 이 세상에서 보는 최후의 것이 되었다 - 당신의 눈과 온몸은 영원히 돌이 되고 만다. ~ */
  IF ~~ THEN REPLY #40655 /* ~"가아아..."~ */ DO ~UseItem("M_Gaze",Protagonist)
SetGlobal("Game_Over","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 4.3 4.5
  SAY #40656 /* ~마릿사는 한참 동안 침묵한 후에야 대답을 한다. "처음에는 내 진홍색 베일을 잃어버렸기 때문이었어요... 하지만 지금은... 잘 모르겠어요. 손님들을 그런 식으로 대하는 데 익숙해졌으며, 그러는 것을 즐기게 되었기 때문인지도 몰라요. 하지만 시간이 지나면 그것도 지루해져 다시 시길로 나가게 될 거예요. 하지만 지금으로선 이 곳 생활에 만족해요."~ */
  IF ~~ THEN REPLY #40657 /* ~"다른 질문이 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40658 /* ~"내가 알고 싶었던 건 그게 전부요. 안녕히 계시오, 마릿사."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 4.14
  SAY #40659 /* ~마릿사는 아무 말도 하지 않으나, 어둠 속에서 노여움이 섞인 쉿 소리가 들려 온다. "그래요, 나는 비비안의 방에 몰래 들어가 그녀의 향수를 좀 쓴 적이 있어요... 하지만 그건 여기 있는 여자들 모두에게 해당되는 얘기예요. 만약 당신이 내가 그녀의 *개인적* 향기를 가져갔다고 생각한다면 한 번 냄새를 맡아 보시죠. 내 몸이나 내 방 안에서 그걸 찾지는 못할 거예요. 아마 내 진홍색 베일을 가져간 자가 비비안의 향기도 가져갔는지도 모르죠."~ */
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40660 /* ~"누가 당신 베일을 훔쳐갔소?"~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ JOURNAL #39522 /* ~지적인 욕망을 힐난하는 매음굴의 창녀들 중 하나인 마릿사는 그녀의 진홍색 베일을 잃어버렸다. 그녀가 내게 그것을 찾아달라고 부탁을 하지는 않았으나, 사람들에게 그것에 대해 물어보고 어디에 있는지 찾아봐야겠다. ~ */ GOTO 6
  IF ~~ THEN REPLY #40661 /* ~"다른 질문이 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40662 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 4.11 4.12
  SAY #40663 /* ~"그래요... '에코.' 나는 다른 에코를 알았던 적이 있어요, 비록 철자가 다르긴 했지만. 하지만 나는 이 에코란 여자에 대해 아무 것도 몰라요. 돌로라에게 물어보세요. 그녀는 에코의 옛 애인과 사귀고 있다고 하니까요."~ */
  IF ~~ THEN REPLY #40664 /* ~"다른 질문이 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40665 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 4.8 26.0 35.0
  SAY #40666 /* ~"그럴 수도 있겠죠... 당신에게 림-림이 있고 내 기분이 내킨다면. 만약 내 진홍색 베일을 되찾는다면 마음이 내킬지도 모르죠... 하지만 나는 그것이 지금 어디 있는지 몰라요. 혹시 본 적이 있나요?"~ */
  IF ~~ THEN REPLY #40667 /* ~"아니오... 그건 무슨 용도로 쓰이오? 그냥 보통 베일이오?~ */ GOTO 7
  IF ~~ THEN REPLY #40668 /* ~"아니오. 물어볼 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40669 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 4.9 26.1 35.1
  SAY #40670 /* ~"그럴 수도 있겠죠... 당신에게 림-림이 있고 내 기분이 내킨다면. 만약 내 진홍색 베일을 되찾는다면 마음이 내킬지도 모르죠."~ */
  IF ~~ THEN REPLY #40671 /* ~"다른 질문이 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40672 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 4.10 26.2 35.2
  SAY #40673 /* ~"그럴 수도 있겠죠... 하지만 왜? 혹시 림-림을 가지고 있나요?"~ */
  IF ~  PartyHasItem("LimLim")
~ THEN REPLY #40674 /* ~"그렇소."~ */ DO ~DestroyPartyItem("LimLim",FALSE)
GiveItemCreate("S_LimLim",Protagonist,1,0,0)
~ GOTO 56
  IF ~  !PartyHasItem("LimLim")
~ THEN REPLY #40675 /* ~"아니, 지금은 아니오."~ */ GOTO 58
  IF ~~ THEN REPLY #40676 /* ~"관두시오. 물어볼 것이 하나 있소"~ */ GOTO 4
  IF ~~ THEN REPLY #40677 /* ~"없었던 일로 합시다, 마릿사. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #40678 /* ~"그럼 내게 주세요..." 마릿사는 당신으로부터 그 작고 행복한 생물을 받는다... 그것은 기쁘게 울어 대고 있다 - '삐요! 삐요!' - 다가올 운명도 모르는 채.~ */
  IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #40679 /* ~역겨울 정도로 붉은 빛이 섬뜩하게 번쩍이자 림-림의 즐거운 울음 소리가 갑자기 끊어진다. 마릿사는 이제는 차갑고 무거운 돌이 되어버린 림-림을 당신 손에 건네준다.~ */
  IF ~~ THEN REPLY #40680 /* ~"고맙소, 마릿사. 질문할 것이 하나 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40681 /* ~"고맙소, 마릿사. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 55.1
  SAY #40682 /* ~"그렇다면 무의미란 얘기로군요." 그녀는 크게 한숨을 쉰다. "애초에 당신이 왜 그런 얘기를 꺼냈는지 모르겠군요."~ */
  IF ~~ THEN REPLY #40683 /* ~"다른 질문이 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #40684 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END
