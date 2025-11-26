// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3200 /* ~이 약간 나이가 들어 보이는 귀부인은 당신을 우아하고 정중하게 맞이한다. "만나서 반가워요. 괜찮으시다면 당신이 제게 질문을 하기 전에 나는 이 곳의 학생이 아니라 손님이라고 말해주고 싶군요."~ */
  IF ~~ THEN REPLY #3201 /* ~"당신은 손님이오?"~ */ GOTO 3
  IF ~~ THEN REPLY #40085 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40086 /* ~"실은 그냥 지나던 길이었소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #40087 /* ~당신이 다가가자 귀부인은 정중하게 인사한다. "다시 만나 반가워요."~ */
  IF ~~ THEN REPLY #40088 /* ~"안녕하시오. 물어볼 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40089 /* ~"만나서 반갑소. 난 그냥 지나던 길이었소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0 3.0 4.2 5.0 6.0 7.0 8.0 9.0 10.0 11.0 12.2 13.1 14.0
  SAY #40090 /* ~여자는 고개를 끄덕인다. "물론이에요"~ */
  IF ~~ THEN REPLY #40091 /* ~"당신은 자신이 이 곳 손님이라고 했소?"~ */ GOTO 3
  IF ~~ THEN REPLY #40092 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 12
  IF ~~ THEN REPLY #40093 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 4
  IF ~  Global("Ecco_Speak","GLOBAL",1)
~ THEN REPLY #40094 /* ~"침묵하는 창녀에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ GOTO 6
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40095 /* ~"나는 케사이-세리스가 래벌의 딸이라는 애기를 들었소. 그게 사실이오?"~ */ GOTO 7
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #40096 /* ~"나는 비비안의 향기를 찾고 있소... 그것이 어디 있는지 혹시 아시오?"~ */ GOTO 8
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40097 /* ~"나는 마릿사의 진홍색 베일을 찾고 있소... 그것이 어디 있는지 혹시 아시오?"~ */ GOTO 9
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40098 /* ~"혹시 래벌 퍼즐웰이 대해 아는 것이 없소?"~ */ GOTO 10
  IF ~  GlobalGT("Dolora","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40099 /* ~"나는 지금까지 모두 아홉 명의 창녀들과 얘기를 했소... 열 번째 학생이 누구인지, 아니면 어디 있는지 혹시 아시오?"~ */ GOTO 11
  IF ~~ THEN REPLY #40100 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 2.0 12.0
  SAY #40101 /* ~그녀는 고개를 끄덕인다. "그래요. 나는 왜 내 남편이 이 곳에 계속 오는지 알려고 어느 날 저녁 이 곳을 방문했어요... 그리고 나는 이 곳의 창녀들 중 여러 명과 금새 친구가 되었지요. 그래서 나도 이 곳에 오는 거예요! 좋은 대화를 즐기는 건 남자만의 특권은 아니에요."~ */
  IF ~~ THEN REPLY #40102 /* ~"옳은 말이오. 다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40103 /* ~"그럴지도. 어쨌든 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY #40104 /* ~"이 매음굴은 훨-후럼-그레이스에 의해 설립되었어요... 그녀는 감각의 공동체 지망생들에게 대화와 의사 소통의 섬세한 기술을 가르치고 있어요. 내가 들은 말이 사실이라면 이 매음굴은 부유한 손님들의 기부에 의해 유지되고 있어요."~ */
  IF ~  !NearbyDialog("DGrace")
!Dead("Grace")
~ THEN REPLY #40105 /* ~"훨-후럼-그레이스?"~ */ GOTO 14
  IF ~~ THEN REPLY #40106 /* ~"감각의 공동체에 대해 얘기해주시오."~ */ GOTO 5
  IF ~~ THEN REPLY #40107 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40108 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #40109 /* ~여자는 잠시 당신을 묘하다는 표정으로 쳐다본다. "당신도 그들에 대해서 들어본 적은 있겠지요? 센세이트 말이에요? 그들은 체험이 다원 우주를 이해하는 열쇠라고 믿는 당파예요. 그들의 당파 본부인 시 공회당은 이 근처에 있어요... 이 곳을 나가서 왼쪽으로 한 번 돌고, 또 디시 왼쪽으로 돌면 나올 거예요. 그 곳에 가면 감각의 공동체에 대해 기꺼이 얘기할 사람들이 여럿 있을 거예요."~ */
  IF ~~ THEN REPLY #40110 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40111 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY #40112 /* ~"나는 그녀를 모르고... 그녀의 이름도 기억이 나지 않아요. 남는 그녀가 말을 할 수 없다고 들었기 때문에 그녀와 얘기를 하려고 하질 않았어요."~ */
  IF ~~ THEN REPLY #40113 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40114 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.4 13.0
  SAY #40115 /* ~"래벌? 나는 래벌이란 사람을 몰라요, 그녀가 케사이의 어머니인지는 더욱더 알 수 없고요. 하지만 케사이는 내게 자신이 고아라고 말했어요. 그녀의 아버지는 반 마족이나 그녀가 시길에서 자라도록 그녀를 버렸다고 해요."~ */
  IF ~~ THEN REPLY #40116 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40117 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.5
  SAY #40118 /* ~"아니, 몰라요. 하지만 비비안은 얼마 전부터 그것을 찾고 있었어요. 그녀는 몹시 화가 나 있어요! 그녀가 그것을 하루라도 빨리 찾았으면 좋겠어요. 요즘 그녀는 그 얘기 말고는 하려고 하지를 않으니까요."~ */
  IF ~~ THEN REPLY #40119 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40120 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.6
  SAY #40121 /* ~여자는 얼굴을 몹시 찌푸린다. "아, 나는 그 마릿사란 여자를 좋아하지 않아요... 정말 불쾌한 성격을 지녔어요! 그리고 그녀의 베일에 대해서는 아는 것이 없어요."~ */
  IF ~~ THEN REPLY #40122 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40123 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.7
  SAY #40124 /* ~"래벌... 퍼즐웰..." 그녀는 그 이름을 전에 들어본 적이 없는 듯 천천히 발음한다. "미안하지만 알지 못해요."~ */
  IF ~~ THEN REPLY #40125 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40126 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.8
  SAY #40127 /* ~"내가 아는 한 이 곳에는 아홉 명의 창녀밖에 없어요... 그리고 나는 분명히 그들 모두와 얘기를 나누었어요. 아마 내가 아직 만나지 못한 새로운 여자가 있는 모양이죠..,?"~ */
  IF ~~ THEN REPLY #40128 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40129 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.1
  SAY #40130 /* ~"이 곳에 있는 친구들과 얘기를 하려고 들렸어요. 나는 지적인 욕망을 힐난하는 매음굴의 몇 안 되는 여자 손님들 중 하나예요."~ */
  IF ~~ THEN REPLY #40131 /* ~"당신은 손님이오?"~ */ GOTO 3
  IF ~~ THEN REPLY #40132 /* ~"당신은 그들 중 특히 누구를 추천하오?"~ */ GOTO 13
  IF ~~ THEN REPLY #40133 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40134 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #40135 /* ~"그건 당신이 어떤 종류의 사람과 대화를 나누길 좋아하느냐에 달렸어요. 나는 비비안과 케사이-세리스와 친해요, 그리고 그 귀엽고 명랑한 네니와 가끔씩 잡담을 하죠."~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #40136 /* ~"나는 케사이-세리스가 래벌의 딸이라는 애기를 들었소. 그게 사실이오?"~ */ GOTO 7
  IF ~~ THEN REPLY #40137 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40138 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 4.0
  SAY #40139 /* ~"그래요... 창녀들은 그녀를 그레이스 여사. 그녀는 대개 매음굴의 로비에서 손님들을 맞이해요... 그녀와 얘기를 하고 싶다면 그 곳에 가보세요."~ */
  IF ~~ THEN REPLY #40140 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40141 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END
