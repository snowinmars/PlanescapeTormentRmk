// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSPLINT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSPLINT~

IF ~  NumTimesTalkedTo(0)
Global("Splinter","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2989 /* ~이 거구의 사나이의 황금색 피부는 마치 금속처럼 광택이 있다. 그것이 그의 실제 피부인지, 아니면 칠한 것에 불과한지는 당신으로선 알 수가 없다. 당신이 다가가자 그는 당신을 침착하게 관찰한다. 당신이 가까이 오자 그는 정중하게 인사한다. "시 공회당에 오신 것을 환영하오, 여행자. 우리는 스플린터로, 공회당의 문지기이자 우리의 사제 겸 왕인 스플린터요. 우리가 당신을 어떻게 도와 드리면 되겠소?" 당신을 도와주겠다는 그의 겸손한 제의에도 불구하고 그의 목소리는 강렬하며 위엄이 있으며, 그의 굵고 장중한 목소리는 방 안 전체에 울려 퍼진다.~ */
  IF ~~ THEN REPLY #65145 /* ~"내게 어떤 도움을 줄 수가 있소?"~ */ GOTO 2
  IF ~~ THEN REPLY #48511 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #48512 /* ~"지금은 아무 것도 필요한 것이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.0 3.3 4.3 5.0 6.3 7.1 8.1 9.0 10.8 11.0 12.0 13.0 14.0 15.1 16.0 17.9 18.4 19.1 20.0 20.1 21.1 22.0 23.5 27.0 30.0 31.1 32.1 35.2 36.0 37.0 38.0 39.0 41.0 43.1 44.0 45.0
  SAY #48513 /* ~"시 공회당과 감각의 공동체에 대한 질문이라면 짐의 능력 한도 내에서 기꺼이 대답해 주겠소."~ */
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",1)
~ THEN REPLY #51522 /* ~"이언니스란 사람이 있는데 당신이 그가 당원 전용 감각 체험실에 들어가는 것을 허락해주었으면 하오..."~ */ GOTO 40
  IF ~  PartyHasItem("P_Jrnl")
Global("P_Journal","GLOBAL",3)
~ THEN REPLY #65152 /* ~"이 곳에 이 12면체에 사용된 언어에 대해 날 도와줄 수 있는 언어학자는 없소?"~ */ DO ~SetGlobal("Know_Finam_Lang","GLOBAL",1)
~ GOTO 43
  IF ~  Global("Jumble","GLOBAL",2)
~ THEN REPLY #66262 /* ~"점블 머더센스는 내게 저주를 걸었소. 혹시 당신이나 당신이 이 곳에서 아는 사람이 날 도와줄 수 있겠소?"~ */ JOURNAL #66264 /* ~스플린터에게 점블이 내게 건 저주에 대해 얘기하자, 그는 내게 살라베쉬라는 사람을 만나보라고 권했다. 그의 말에 의하면 살라베쉬는 공회당 안이나 아니면 공회당 바로 밖에 있으며, 흔히 빨간 색과 검은 색의 법의를 입고 있다고 한다.~ */ GOTO 45
  IF ~~ THEN REPLY #48514 /* ~"당신에 대해 물어보고 싶소..."~ */ GOTO 5
  IF ~~ THEN REPLY #48515 /* ~"날 도와줄 수 있겠소, 스플린터?"~ */ GOTO 2
  IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN REPLY #48516 /* ~"이 곳에 내가 휴식을 취할만한 장소가 있소?"~ */ GOTO 31
  IF ~  Global("Sensate_Access","GLOBAL",1)
~ THEN REPLY #66170 /* ~"이 곳에 내가 휴식을 취할만한 장소가 있소?"~ */ GOTO 44
  IF ~~ THEN REPLY #48517 /* ~"공회당에 대해 얘기해주시오."~ */ GOTO 6
  IF ~~ THEN REPLY #48518 /* ~"감각의 공동체에 대해 얘기해주시오."~ */ GOTO 7
  IF ~~ THEN REPLY #48519 /* ~"나는 이 곳에서 찾고자 하는 사람이 있소..."~ */ GOTO 10
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #48520 /* ~"이 곳에 래벌 퍼즐웰에 대해 알만한 사람은 있소?"~ */ GOTO 35
  IF ~~ THEN REPLY #48521 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.4 32.0
  SAY #48522 /* ~"짐은 이 훌륭한 건물 안에서 많은 임무를 수행하오, 여행자. 짐은 손님들이 이 곳 또는 이 곳의 거주자들에 대해 가지고 있을지도 모르는 질문들에 대해 대답을 해주오. 짐은 방문자들과 감각의 공동체 멤버들 양쪽 모두를 감각 체험실과 강의실로 안내하오. 또한 짐은 공동체에 새로운 멤버를 받아들이는 일도 관장하고 있소. 마지막으로, 센세이트의 금고에 보관된 주문, 아이템 등의 각종 물품들은 짐을 통해서 구입할 수가 있소."~ */
  IF ~~ THEN REPLY #48523 /* ~"다른 질문이 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #48524 /* ~"나를 감각 체험실로 안내해 줄 수 있겠소?"~ */ GOTO 3
  IF ~~ THEN REPLY #48525 /* ~"강의에는 어떤 것들이 있소?"~ */ GOTO 4
  IF ~  Global("Sensate_Access","GLOBAL",1)
~ THEN REPLY #48526 /* ~"나는 센세이트 창고로부터 물건을 사고 싶소..."~ */ DO ~StartStore("Splinter",Protagonist)
~ EXIT
  IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN REPLY #48527 /* ~"어떻게 하면 센세이트 창고로부터 물건을 살 수가 있소?"~ */ GOTO 18
  IF ~~ THEN REPLY #48528 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 8.0
  SAY #48529 /* ~"두 종류가 있소; 방문자들도 동전 열 닢에서 쉰 닢의 사용료만 내면 감각석을 이용할 수 있는 일반인용 감각 체험실과, 감각의 공동체 멤버들만 이용할 수 있는 당원 전용 감각 체험실이 있소. 둘 중 그 어느 쪽도 직접 갈 수는 없소. 짐이 당신을 *데려다 주어야만* 하오."~ */
  IF ~~ THEN REPLY #48530 /* ~"그럼 날 일반인용 감각 체험실로 데려가 주시오."~ */ DO ~TeleportParty("AR0603",[1686.1498],6)
~ EXIT
  IF ~  Global("Sensate_Access","GLOBAL",1)
~ THEN REPLY #48531 /* ~"그럼 날 당원 전용 감각 체험실로 데려가 주시오."~ */ DO ~TeleportParty("AR0604",[397.945],10)
~ EXIT
  IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN REPLY #48532 /* ~"어떻게 하면 당원 전용 감각 체험실에 들어갈 수가 있소?"~ */ GOTO 18
  IF ~~ THEN REPLY #48533 /* ~"기다리시오... 다른 사안에 대해 질문할 것이 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #48534 /* ~"실은 그냥 떠나겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY #48535 /* ~"시 공회당의 현재 연사들로는 죽음과 그 이후에 일어나는 일에 대해 강의하는 죽음의 변호인, 블러드 워에 대해 얘기하는 사악한 기시스, 그리고 속성과 신념의 힘에 대해 강의하는 세 차원의 결합이 있소. 원한다면 듣고 싶은 강의가 진행되는 곳으로 짐이 당신을 안내해 줄 수도 있소."~ */
  IF ~  !Dead("DeathAd")
~ THEN REPLY #48536 /* ~"죽음의 변호인의 강의를 듣고 싶소."~ */ GOTO 37
  IF ~  !Dead("Ghysis")
~ THEN REPLY #48537 /* ~"사악한 기시스의 강의를 듣고 싶소."~ */ GOTO 38
  IF ~  !Dead("3Planes")
~ THEN REPLY #48538 /* ~"세 차원의 결합의 강의를 듣고 싶소."~ */ GOTO 39
  IF ~~ THEN REPLY #48539 /* ~"다른 사안에 대해 질문할 것이 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #48540 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY #48541 /* ~"짐이 지금까지 당신에게 해준 얘기 말고는 달리 별로 할 얘기가 없소. 짐은 스플린터로 시 공회당의 문지기이며, 이사하의 아들로 반신 반인이자 우르의 제사장 겸 왕이오. 차원 여행자들이 짐의 세계로 와서 짐에게 감각의 공동체에 대해 얘기를 해주었소. 짐은 흥미를 갖게 되었고 그들과 함께 이 곳으로 오게 되었소. 짐은 한 동안 여기서 '봉사'와 '겸손'을 체험하기 위해 우르를 짐의 왕비에게 맡겼소. 이 곳과 우르는 시간이 흐르는 속도가 다르오. 짐이 이 곳에서 보낸 일 세기는 우르에서는 고작 몇 달에 불과하오. 이 곳에서 10년 정도 더 봉사한 후 짐은 우르로 돌아가 다시 그 곳을 통치할 생각이오."~ */
  IF ~~ THEN REPLY #48542 /* ~"알겠소... 다른 질문이 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #48543 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오, 스플린터."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.7
  SAY #48544 /* ~"시 공회당은 시길에서 가장 큰 건물로, 감각의 공동체가 시길에서 가장 큰 당파라는 것을 감안할 때 이는 매우 합당한 일이오. 이 건물 안에는 방문객과 멤버들 양쪽 모두를 위한 감각 체험실, 강의실, 훈련실 등이 자리잡고 있소. ~ */
  IF ~~ THEN REPLY #48545 /* ~"감각의 공동체에 대해 얘기해주시오."~ */ GOTO 7
  IF ~~ THEN REPLY #48546 /* ~"감각 체험실에 대해 얘기해주시오."~ */ GOTO 8
  IF ~~ THEN REPLY #48547 /* ~"훈련실에 대하여 얘기해주시오."~ */ GOTO 9
  IF ~~ THEN REPLY #48548 /* ~"다른 질문이 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #48549 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.8 6.0
  SAY #48550 /* ~"센세이트의 믿음의 핵심은 감각을 통해서만 다원 우주를 *진정하게* 이해할 수 있다는 것이오. 감각으로 체험할 수 없다면, 그것은 존재하지 않는 것이오. 오직 체험을 통해... 존재하는 모든 감각들의 체험을 통해서만... 다원 우주의 진실을 밝힐 수가 있소. 감각의 공동체는 그 목적을 달성하기 위해 체험을 모으고 공유하는 곳이오, 그리고 이는 주로 감각 체험실을 통해 이루어지오."~ */
  IF ~  Global("Join_Sensates","GLOBAL",0)
~ THEN REPLY #48551 /* ~"내가 센세이트가 될 수 있겠소?"~ */ GOTO 17
  IF ~~ THEN REPLY #48552 /* ~"다른 질문이 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #48553 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #48554 /* ~"감각 체험실은 감각석들을 보관하고 있는 방이오. 이러한 돌들은 마법에 의해 다양한 감각과 체험을 기록하여 나중에 다른 사람들이 그 내용을 체험할 수 있도록 만들어졌소. 당신이 원한다면 짐이 그들 중 한 곳으로 안내할 수도 있소."~ */
  IF ~~ THEN REPLY #48742 /* ~"부탁하겠소."~ */ GOTO 3
  IF ~~ THEN REPLY #48556 /* ~"아니, 괜찮소. 다른 질문이 하고 싶소..."~ */ GOTO 1
  IF ~~ THEN REPLY #48557 /* ~"아니, 지금은 괜찮소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #48558 /* ~"훈련실은 전사, 도둑, 그리고 메이지를 위한 것이 각각 하나씩 모두 세 개가 있소. 만약 그 곳에 가고 싶다면 동쪽 벽 중앙에 있는 문으로 들어간 후, 그 다음에 나타나는 문 또한 열고 들어가시오. 그러면 당신은 복도의 귀퉁이에 도착할 거요... 동쪽으로 통하는 복도의 남쪽 벽에는 문이 세 개가 있을 것이오. 그 문들은 제각기 특정한 훈련실로 통하고 있소."~ */
  IF ~~ THEN REPLY #48559 /* ~"다른 질문이 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #48560 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.9
  SAY #48561 /* ~"누구를 찾고 있소, 여행자 ?"~ */
  IF ~  Global("P_Journal","GLOBAL",3)
Global("Know_Finam_Lang","GLOBAL",1)
~ THEN REPLY #48562 /* ~"언어학자 휘남"~ */ GOTO 11
  IF ~  Global("Jolmi","GLOBAL",1)
~ THEN REPLY #48563 /* ~"시르마 가의 졸미 부인..."~ */ GOTO 12
  IF ~  Global("Dolora","GLOBAL",2)
~ THEN REPLY #48564 /* ~"메리맨'~ */ GOTO 36
  IF ~  Global("Qui_Sai","GLOBAL",1)
~ THEN REPLY #48565 /* ~"전사 강사 퀴-사이."~ */ GOTO 13
  IF ~  Global("Eli","GLOBAL",1)
~ THEN REPLY #48566 /* ~"도둑 강사 엘리 해블락."~ */ GOTO 14
  IF ~  Global("Thorncombe","GLOBAL",1)
~ THEN REPLY #48567 /* ~"메이지 강사 쏜쿰 여사."~ */ GOTO 15
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #48568 /* ~"이 곳의 당원 몬태규."~ */ GOTO 16
  IF ~  Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #48569 /* ~"이 곳의 당원 몬태규."~ */ GOTO 16
  IF ~~ THEN REPLY #48570 /* ~"아무도 아니오. 다른 질문이 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #48571 /* ~"관두시오. 안녕히 계시오, 스플린터."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 43.0
  SAY #48572 /* ~"휘남은 현재 이 곳에서 강의를 하고 있지 않소, 그러니 그의 집으로 직접 찾아가는 것이 좋을 것이오. 시 공회당 입구에서 남쪽으로 이바나의 갤러리와 약국의 중간 지점까지 가시오. 그러면 당신 오른쪽으로 그의 집이 보일 것이오. 그것은 골동품 상점의 서쪽의 있는 오각형 모양의 작은 건물이오."~ */
  IF ~~ THEN REPLY #48573 /* ~"고맙소. 다른 질문이 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #48574 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #48575 /* ~"졸미는 최근 바로 이 홀에서 계속 머무르고 있소. 짐의 생각으로는 누군가를 기다리고 있는 것 같소. 어쨌든 그녀는 이 근처에 있을 것이오."~ */
  IF ~~ THEN REPLY #48576 /* ~"고맙소. 다른 질문이 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #48577 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.3
  SAY #48579 /* ~"퀘-사이는 조용히 명상을 할 수 이는 곳을 선호하오. 그는 아마 사람이 별로 없는 방에서 다른 이들로부터 멀리 떨어진 채. 서서 조용한 명상에 잠겨 있을 것이오.~ */
  IF ~~ THEN REPLY #48580 /* ~"고맙소. 다른 질문이 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #48581 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.4
  SAY #48582 /* ~"엘리 해블락은 얼마 전 화난 얼굴로 이 건물에서 나갔소. 짐의 생각으로 그는 시 공회당 부근을 배회하고 있을 것이오."~ */
  IF ~~ THEN REPLY #48583 /* ~"고맙소. 다른 질문이 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #48584 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.5
  SAY #48585 /* ~스플린터는 눈을 가늘게 뜨고 얼굴을 약간 찌푸린다. "그녀는 틀림없이 감각 체험실들 중 한 곳에 있을 것이오. 쏜쿰 여사은 최근 자신의 책무를 등한시하고 감각석을 이용하는 데 너무 많은 시간을 보내고 있소. 그 곳에 당신이 직접 갈 수는 없지만, 원한다면 짐이 *데려다 주도록* 하겠소."~ */
  IF ~~ THEN REPLY #48586 /* ~"부탁하겠소."~ */ DO ~TeleportParty("AR0603",[1686.1498],6)
~ EXIT
  IF ~~ THEN REPLY #48587 /* ~"아니, 괜찮소. 다른 질문이 하고 싶소..."~ */ GOTO 1
  IF ~~ THEN REPLY #48588 /* ~"아니, 지금은 괜찮소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.6 10.7
  SAY #48589 /* ~"몬태규는 바쁜 청년이오. 그는 대개 이 홀과 동쪽 벽에 있는 세 방들 사이를 왔다갔다하고 있소."~ */
  IF ~~ THEN REPLY #48590 /* ~"고맙소. 다른 질문이 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #48591 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 7.0 18.0
  SAY #48592 /* ~"감각의 공동체의 일원이 되려면 자신의 체험들을 다른 사람들과 공유할 각오가 되어 있어야만 하오. 각 감각 당 하나씩 모두 다섯 개의 체험들을 제공해야만 하오. 아니면 대신 오감의 요소를 빠짐없이 지니고 있는 강렬한 체험 한 가지만 제공해도 좋소. 이러한 체험들은 현재 우리가 가지고 있지 못한 새로운 체험이거나, 우리의 기존의 체험들보다 더 뛰어난 것이어야만 하오. 만약 우리가 그 체험을 받아들이기로 하면 그것들은 감각석에 기록될 것이며, 정식 센세이트가 된 당신은 '감각적 접촉'에 대해 배우게 될 것이오. 그 능력은 다른 사람들의 고통을 받아들임으로서 그들을 치료할 수 있게 해주오."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #48593 /* ~"나는 이미 갓즈맨의 일원이오, 하지만..."~ */ GOTO 23
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #48594 /* ~"나는 이미 더스트맨의 일원이오, 하지만..."~ */ GOTO 23
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #48595 /* ~"나는 이미 다른 당파의 일원이오, 하지만..."~ */ GOTO 23
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #48596 /* ~"나는 이미 카오시텍츠의 일원이오, 하지만..."~ */ GOTO 23
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #48597 /* ~"나는 이미 갓즈맨의 일원이오. 나는 마음을 바꿨소... 그들을 배신하지 않겠소."~ */ GOTO 22
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #48598 /* ~"나는 이미 더스트맨의 일원이오. 나는 마음을 바꿨소... 그들을 배신하지 않겠소."~ */ GOTO 22
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #48599 /* ~"나는 이미 다른 당파의 일원이오. 나는 마음을 바꿨소... 그들을 배신하지 않겠소."~ */ GOTO 22
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #48600 /* ~"나는 이미 카오시텍츠의 일원이오. 나는 마음을 바꿨소... 그들을 배신하지 않겠소."~ */ GOTO 22
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
!Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
~ THEN REPLY #48601 /* ~"나는 준비가 되었소. 나는 센세이트가 되고 싶소."~ */ DO ~SetGlobal("Join_Sensates","GLOBAL",1)
SetGlobal("Sensate_Access","GLOBAL",1)
ApplySpell(Protagonist,SPECIAL_ADD_SENSORY_TOUCH)
~ GOTO 24
  IF ~~ THEN REPLY #48602 /* ~"다른 질문이 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #48603 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.4 3.2 31.0 35.1
  SAY #48604 /* ~"그러기 위해서는 당신이 감각의 공동체의 멤버이어야만 하오."~ */
  IF ~~ THEN REPLY #48605 /* ~"그럼 내가 센세이트가 될 수 있겠소?"~ */ GOTO 17
  IF ~  Global("PC_Was_Sensate","GLOBAL",1)
~ THEN REPLY #48606 /* ~"하지만 만약 내가 이미 센세이트였다면. 나는 이 곳에 오랫동안 오지 않았으나 난 확실히 센세이트였소."~ */ GOTO 19
  IF ~  Global("Join_Sensates","GLOBAL",0)
Global("PC_Was_Sensate","GLOBAL",0)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #48607 /* ~허풍: "아, 나는 정말로 센세이트요."~ */ GOTO 20
  IF ~  Global("Join_Sensates","GLOBAL",0)
Global("PC_Was_Sensate","GLOBAL",0)
CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #48608 /* ~허풍: "하지만 나는 센세이트의 일원이오, 스플린터... 다만 이 곳에 오랫동안 오지 않았을 뿐이오. 이 곳에서 떠나 있는 동안 나는 많은 체험을 했소... 내 몸의 흉터만큼이나 많은."~ */ GOTO 21
  IF ~~ THEN REPLY #48609 /* ~"다른 질문이 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #48610 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY #48611 /* ~스플린터는 당신을 보다 자세히 살피려고 몸을 구부린다. "짐은 당신을 알지 못하오, 하지만 짐은 당신이 거짓말을 하고 있지 않다는 것을 알 수가 있소. 좋소. 짐이 당신에게 감각의 공동체 멤버에게만 허용되는 특권을 누릴 수 있도록 해주겠소... *단* 당신이 짐에게 최근 체험한 감각들에 대하여 보여준다면 말이오."~ */
  IF ~~ THEN REPLY #48612 /* ~"좋소... 난 준비가 됐소."~ */ DO ~SetGlobal("Sensate_Access","GLOBAL",1)
~ GOTO 28
  IF ~~ THEN REPLY #48613 /* ~"관두시오. 다른 질문이 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #48614 /* ~"그럼 관두시오. 안녕히 계시오, 스플린터."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.2
  SAY #48615 /* ~"진정한 우르의 제사장 겸 왕은 상대방이 하는 거짓말을 꿰뚫어 볼 수가 있소. 짐에게 거짓말을 하는 것은 현명하지 못하오, 여행자."~ */
  IF ~~ THEN REPLY #48616 /* ~"나는 거짓말을 한 게 아니라 농담을 했을 뿐이오. 다른 질문이 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #48617 /* ~"그렇다면 사과하겠소. 다른 질문이 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #48618 /* ~"나는 당신과 농담을 나누려 했을 뿐이오, 스플린터. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #48619 /* ~"그렇다면 사과하겠소, 스플린터. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.3
  SAY #48620 /* ~그는 눈을 가늘게 뜨고 당신을 보면서 투덜거리는 듯한 소리를 낸다. "좋소. 짐이 당신에게 감각의 공동체 멤버에게만 허용되는 특권을 누릴 수 있도록 해주겠소... *단* 당신이 짐에게 최근 체험한 감각들에 대하여 보여준다면 말이오."~ */
  IF ~~ THEN REPLY #48621 /* ~"좋소... 난 준비가 됐소."~ */ DO ~SetGlobal("Sensate_Access","GLOBAL",1)
~ GOTO 28
  IF ~~ THEN REPLY #48622 /* ~"관두시오. 다른 질문이 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #48623 /* ~"그럼 관두시오. 안녕히 계시오, 스플린터."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.4 17.5 17.6 17.7
  SAY #48624 /* ~스플린터는 고개를 끄덕일 뿐이다.~ */
  IF ~~ THEN REPLY #48625 /* ~"다른 질문이 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #48626 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 17.0 17.1 17.2 17.3
  SAY #48627 /* ~"그들은 당신을 용서하지 않을 것이오. 엎지른 물은 다시 담을 수 없소."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #48628 /* ~"나는 감각의 공동체의 일원이 될 준비가 되었소. 나는 더 이상 갓즈맨에 대해서는 아무런 충성심도 없소."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",7)
SetGlobal("Join_Sensates","GLOBAL",1)
SetGlobal("Sensate_Access","GLOBAL",1)
ApplySpell(Protagonist,SPECIAL_ADD_SENSORY_TOUCH)
~ GOTO 24
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #48629 /* ~"나는 감각의 공동체의 일원이 될 준비가 되었소. 나는 더 이상 더스트맨에 대해서는 아무런 충성심도 없소."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",2)
SetGlobal("Join_Sensates","GLOBAL",1)
SetGlobal("Sensate_Access","GLOBAL",1)
SetGlobal("Dead_Truce","GLOBAL",0)
ApplySpell(Protagonist,SPECIAL_ADD_SENSORY_TOUCH)
~ GOTO 24
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #48630 /* ~"나는 감각의 공동체의 일원이 될 준비가 되었소. 나는 더 이상 과거의 당파에 대해서는 아무런 충성심도 없소."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
SetGlobal("Join_Sensates","GLOBAL",1)
SetGlobal("Sensate_Access","GLOBAL",1)
ApplySpell(Protagonist,SPECIAL_ADD_SENSORY_TOUCH)
~ GOTO 24
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #48631 /* ~"나는 감각의 공동체의 일원이 될 준비가 되었소. 나는 더 이상 카오시텍츠에 대해서는 아무런 충성심도 없소."~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",2)
SetGlobal("Join_Sensates","GLOBAL",1)
SetGlobal("Sensate_Access","GLOBAL",1)
ApplySpell(Protagonist,SPECIAL_ADD_SENSORY_TOUCH)
~ GOTO 24
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #48632 /* ~아나키스트를 위해 센세이트에 침투하기 위해 거짓말을 한다: "나는 감각의 공동체의 일원이 될 준비가 되었소. 나는 더 이상 과거의 당파에 대해서는 아무런 충성심도 없소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Splinter_1","GLOBALLaw",-1)
SetGlobal("Sensate_Access","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #48633 /* ~"관두시오. 다른 질문을 하겠소..."~ */ GOTO 1
  IF ~~ THEN REPLY #48634 /* ~"아직 그럴 준비가 되지 않은 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 17.8 23.0 23.1 23.2 23.3 23.4
  SAY #48635 /* ~"먼저 우리에게 어떤 *냄새*나 그것과 관련된 체험을 우리에게 제공하겠소 ?"~ */
  IF ~~ THEN REPLY #48636 /* ~"나는 오감과 모두 관련된 체험을 제공하고 싶소: 나는 시체안치소 깊숙한 곳에 있는 피로 표면이 매끈매끈해진 차가운 철판 위에서 내가 어디 있는지도 모르는 채 깨어났는데, 그 곳은 더스트맨과 그들이 관리하는 시체들 외에는 아무도 본 적이 없는 곳이었소."~ */ GOTO 33
END

IF ~~ THEN BEGIN 25 // from: 33.0
  SAY #48637 /* ~그는 고개를 끄덕인다. "참으로 언짢은 체험이오."~ */
  IF ~~ THEN REPLY #48638 /* ~"게다가 난 내가 일어나자마자 말을 하는 해골이 내게로 날아왔다는 부분은 넣지도 않았소. 그거면 충분하겠소, 스플린터?"~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #48639 /* ~"좋소... 이제 우리는 텅 빈 감각석이 있는 곳으로 가서 당신의 체험을 기록할 것이오, 그 후에 당신은 감각의 공동체 멤버에게만 허용되는 특권들을 누리게 될 것이며, '감각적 접촉'에 대해서도 배우게 될 것이오 "~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #48640 /* ~그를 따라가 당신의 체험을 기록하고 감각적 접촉을 배운다.~ */ DO ~GiveExperience(Protagonist,10000)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 27
  IF ~  Global("Join_Sensates","GLOBAL",0)
~ THEN REPLY #48641 /* ~그를 따라가 당신의 체험을 기록하고 감각적 접촉을 배우는 척 한다.~ */ DO ~GiveExperience(Protagonist,10000)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.1
  SAY #48642 /* ~당신은 스플린터와 함께 시 공회당의 로비로 돌아온다.

"감각의 공동체의 일원이 된 것을 환영하오, 여행자. 당신의 앞으로의 여행과 체험이 당신을 다원 우주의 위대한 진실로 인도하기를 바라겠소."~ */
  IF ~~ THEN REPLY #48643 /* ~"고맙소, 스플린터. 질문할 것이 하나 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #48644 /* ~"고맙소. 안녕히 계시오, 스플린터."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 19.0 21.0
  SAY #48645 /* ~"그렇다면 짐은 신체의 오감에 제각기 대응되는 감각 하나씩, 모두 다섯 개의 체험들을... 또는 오감의 요소를 빠짐없이 지니고 있는 강렬한 체험 한 가지를 요구하겠소."~ */
  IF ~~ THEN REPLY #48646 /* ~"내게는 제공할 체험이 한 가지 있소: 나는 시체안치소 깊숙한 곳에 있는 피로 표면이 매끈매끈해진 차가운 철판 위에서 내가 어디 있는지도 모르는 채 깨어났는데, 그 곳은 더스트맨과 그들이 관리하는 시체들 외에는 아무도 본 적이 없는 곳이었소."~ */ GOTO 34
END

IF ~~ THEN BEGIN 29 // from: 34.0
  SAY #48647 /* ~그는 고개를 끄덕인다. "참으로 언짢은 체험이오."~ */
  IF ~~ THEN REPLY #48648 /* ~"게다가 난 내가 일어나자마자 말을 하는 해골이 내게로 날아왔다는 부분은 넣지도 않았소. 그거면 충분하겠소, 스플린터?"~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #48649 /* ~"그렇소. 짐은 당신이 다시 온 것을 환영하오, 여행자, 그리고 당신에게 감각의 공동체 멤버에게만 허용되는 특권을 누릴 수 있도록 해주겠소."~ */
  IF ~~ THEN REPLY #48650 /* ~"고맙소, 스플린터. 질문할 것이 하나 있소..."~ */ DO ~GiveExperience(Protagonist,10000)
~ GOTO 1
  IF ~~ THEN REPLY #48651 /* ~"고맙소. 안녕히 계시오, 스플린터."~ */ DO ~GiveExperience(Protagonist,10000)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 1.5
  SAY #48652 /* ~"시 공회당 내에 숙박 시설이 있기는 하나, 감각의 공동체 멤버들만 이용할 수가 있소. 그 곳은 시 공회당 내에서 동쪽 끝부분에 위치하고 있소. 그 곳에 있는 사무원이 센세이트들에게 그들의 방을 안내할 것이오."~ */
  IF ~~ THEN REPLY #48653 /* ~"그럼... 여기서 방을 얻을 수 있는 다른 방법은 없소?"~ */ GOTO 18
  IF ~~ THEN REPLY #48654 /* ~"다른 질문이 있소..."~ */ GOTO 1
  IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN REPLY #48655 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Splinter","GLOBAL",0)
~ THEN BEGIN 32 // from:
  SAY #48656 /* ~당신이 다가가자 스플린터는 평상시와 마찬가지의 냉정한 표정으로 당신을 바라본다. "시 공회당에 다시 온 것을 환영하오, 여행자. 어떤 도움이 필요하오?"~ */
  IF ~~ THEN REPLY #65146 /* ~"내게 어떤 도움을 줄 수가 있소?"~ */ GOTO 2
  IF ~~ THEN REPLY #48657 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #48658 /* ~"지금은 아무 것도 필요한 것이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 24.0
  SAY #48659 /* ~스플린터는 고개를 끄덕인다. "계속하시오."~ */
  IF ~~ THEN REPLY #48660 /* ~"내 전신으로부터는 향료의 고약한 냄새가 풍겼으나, 그 냄새조차도 내 주변을 에워싸고 있는 적갈색 피냄새에 비하면 새 발의 피였소. 수많은 시체들이 내가 깨어난 것과 동일한 모양의 철판들 위에 널려 있었으며, 그것들은 악몽에서나 나올 것 같은 기계들에 의해 가죽이 벗겨지고 내장이 제거되고 있었소. 그 곳에서 나는 소리라고는 작동 중인 금속기계들이 깩깩거리는 소리와 언데드들이 녹슨 선로 위에서 철판을 밀 때 나오는 불안정한 소리뿐이었소."~ */ GOTO 25
END

IF ~~ THEN BEGIN 34 // from: 28.0
  SAY #48661 /* ~스플린터는 고개를 끄덕인다. "계속하시오."~ */
  IF ~~ THEN REPLY #48662 /* ~"내 전신으로부터는 향료의 고약한 냄새가 풍겼으나, 그 냄새조차도 내 주변을 에워싸고 있는 적갈색 피냄새에 비하면 새 발의 피였소. 수많은 시체들이 내가 깨어난 것과 동일한 모양의 철판들 위에 널려 있었으며, 그것들은 악몽에서나 나올 것 같은 기계들에 의해 가죽이 벗겨지고 내장이 제거되고 있었소. 그 곳에서 나는 소리라고는 작동 중인 금속기계들이 깩깩거리는 소리와 언데드들이 녹슨 선로 위에서 철판을 밀 때 나오는 불안정한 소리뿐이었소."~ */ GOTO 29
END

IF ~~ THEN BEGIN 35 // from: 1.10
  SAY #48663 /* ~스플린터는 눈을 감고 잠시 생각한다 "래벌에 대해서는 퀠이라는 마법사와 얘기를 하도록 하시오. 그는 늘 시 공회당 안에서 머무르고 있으며, 당원 전용 감각 체험실에 있을 때가 많소."~ */
  IF ~  Global("Sensate_Access","GLOBAL",1)
~ THEN REPLY #48664 /* ~"나를 당원 전용 감각 체험실로 안내해 주시오."~ */ DO ~TeleportParty("AR0604",[397.945],10)
~ EXIT
  IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN REPLY #48665 /* ~"어떻게 하면 당원 전용 감각 체험실로 들어갈 수가 있소?"~ */ GOTO 18
  IF ~~ THEN REPLY #48666 /* ~"다른 질문이 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #48667 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 10.2
  SAY #48668 /* ~"메리맨은 보통 강의실 밖의 통로를 왔다갔다하고 있소. 동쪽 벽 중앙에 있는 문으로 들어간 후, 그 다음에 나타나는 문 또한 열고 들어가면 복도가 나타날 것이오. 그는 바로 그 복도에서 배회하고 있을 것이오."~ */
  IF ~~ THEN REPLY #48669 /* ~"고맙소. 다른 질문이 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #48670 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 4.0
  SAY #49868 /* ~"동쪽 벽 중앙에 있는 문으로 들어간 후, 그 다음에 나타나는 문 또한 열고 들어가면 복도가 나타날 것이오. 그 복도를 따라가다가 북쪽의 두 번째 문으로 들어가시오."~ */
  IF ~~ THEN REPLY #49869 /* ~"다른 질문이 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #49870 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 4.1
  SAY #49871 /* ~"동쪽 벽의 남단에 있는 문으로 들어가시오."~ */
  IF ~~ THEN REPLY #49872 /* ~"다른 질문이 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #49873 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 4.2
  SAY #49874 /* ~"동쪽 벽 중앙에 있는 문으로 들어간 후, 그 다음에 나타나는 문 또한 열고 들어가면 복도가 나타날 것이오. 그 복도를 따라가다가 북쪽의 첫 번째 문으로 들어가시오."~ */
  IF ~~ THEN REPLY #49875 /* ~"다른 질문이 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #49876 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 1.0
  SAY #51517 /* ~"왜 짐이 그런 일을 허용해야 하오?"~ */
  IF ~~ THEN REPLY #51518 /* ~"왜냐하면 감각석들 중 하나에는 그의 딸의 체험 중 일부가 담겨 있기 때문이오. 그녀는 집에서 멀리 떨어진 곳에서 그를 오래도록 만나지 못한 채 죽었으며, 그는 그녀의 죽음을 매우 비통해 하고 있소." ~ */ DO ~SetGlobal("Iannis_Sensory_Quest","GLOBAL",2)
~ JOURNAL #51523 /* ~나는 시 공회당의 문지기인 스플린터에게 이언니스가 그의 딸의 감각석을 보는 것을 허용해 달라고 얘기했다. 스플린터는 동의했고 이제 나는 이언니스에게 가서 그가 들어갈 수 있다는 사실을 알리기만 하면 된다...~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #51519 /* ~스플린터 고개를 끄덕이고 잠시 생각을 한 후, 다시 고개를 끄덕인다. "좋소, 짐은 이 이언니스란 사람이 당원 전용 감각 체험실에 들어가는 것을 허용하겠소, 물론 엄중한 경호 아래서. 그에게 가서 허가가 내렸다고 전하시오."~ */
  IF ~~ THEN REPLY #51520 /* ~"고맙소, 스플린터. 그런데 다른 질문이 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #51521 /* ~"고맙소. 안녕히 계시오, 스플린터."~ */ EXIT
END

IF ~  Global("Splinter","GLOBAL",1)
~ THEN BEGIN 42 // from:
  SAY #56842 /* ~이 거한은 당신을 내려다보며 냉소한다. "너는 이 곳의 선량한 사람들을 더 이상 괴롭히지 못할 것이다. 짐은 너를 이 곳으로부터 멀리 날려보낼 것이다." 그가 손을 흔들자 주변의 풍경이 가물가물해지며 당신의 시야가 흐릿해지기 시작한다. ~ */
  IF ~~ THEN REPLY #56843 /* ~"뭐...?"~ */ DO ~SetGlobal("Splinter","GLOBAL",0)
TeleportParty("AR0500",[980.2100],0)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 1.1
  SAY #65147 /* ~"짐은 당신을 도울 만한 그런 사람을 한 명 알고 있소 - 휘남."~ */
  IF ~~ THEN REPLY #65148 /* ~"어디에 가면 그를 만날 수가 있겠소?"~ */ GOTO 11
  IF ~~ THEN REPLY #65150 /* ~"고맙소. 질문할 것이 하나 더 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #65151 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 1.6
  SAY #66167 /* ~"그렇소, 시 공회당 내에는 숙박 시설이 있소. 그 곳은 시 공회당 내에서 동쪽 끝부분에 위치하고 있소. 그 곳에 있는 사무원이 센세이트들에게 그들의 방을 안내할 것이오."~ */
  IF ~~ THEN REPLY #66168 /* ~"다른 질문이 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #66169 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 1.2
  SAY #66258 /* ~"살라베쉬라는 사람과 얘기를 하시오. 만약 그가 지금 시 공회당 안에 없다면, 이 건물 매우 가까운 곳에 있을 것이오. 그는 키가 크고 말랐으며, 흔히 흑색 또는 진홍색 법복을 입소."~ */
  IF ~~ THEN REPLY #66259 /* ~"고맙소. 질문할 것이 하나 더 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #66260 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END
