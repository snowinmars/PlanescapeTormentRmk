// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DXANTHIA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DXANTHIA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 16 19 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51104 /* ~좋은 옷을 입은 아름다운 젊은 여인이 보인다. 그녀의 피부는 이 지역의 다른 주민들과는 달리 누런 빛을 띠고 있지 않다. 그녀는 근처에 있는 세 생물들을 주시하고 있다. ~ */
  IF ~~ THEN REPLY #51105 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #51106 /* ~그녀를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51107 /* ~그녀는 돌아서서 당신을 바라본다. 그녀는 잠시 화난 듯한 표정을 짓는다. "뭐죠? 뭘 원하죠?"~ */
  IF ~~ THEN REPLY #51108 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #51109 /* ~"아무 것도 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.1 7.1 8.1 9.1 10.1 12.1 13.0 14.1 15.0
  SAY #51110 /* ~"좋아요." 그녀는 짜증스러워하는 것 같다.~ */
  IF ~~ THEN REPLY #51111 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #51112 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 4
  IF ~~ THEN REPLY #51113 /* ~"이 구역에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 14
  IF ~~ THEN REPLY #51114 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #51115 /* ~"내 이름은 잔시아예요." 그녀는 당신을 아래위로 훑어본 후 눈살을 찌푸린다. "달리 원하는 거라도 있나요?"~ */
  IF ~~ THEN REPLY #51116 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #51117 /* ~"이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #51118 /* ~"이제 곧 싸움이 벌어질 것이고 난 그걸 보고 싶어요." 그녀는 사악한 미소를 짓는다. "재미있을 거예요."~ */
  IF ~~ THEN REPLY #51119 /* ~"대결?"~ */ GOTO 5
  IF ~~ THEN REPLY #51120 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #51121 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 14.0
  SAY #51122 /* ~"그래요. 저기 있는 세 토콜라들이 보이나요?" 그녀는 온통 근육투성이인 거구의 생명체들을 가리킨다. "그들은 어떤 아비샤이를 죽이려고 할 거예요." 그녀는 코웃음친다. "바보들."~ */
  IF ~~ THEN REPLY #51123 /* ~"아비샤이라는 괴물에 대해 들었소. 그것은 정확히 어떤 놈이오?"~ */ GOTO 6
  IF ~~ THEN REPLY #51124 /* ~"토콜라들이라면 자신들 일은 자신들이 알아서 처리할 수 있을 것 같소."~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #51125 /* ~"그것은 마계의 생물로, 아마 바테주일 거예요..." 그녀는 생각을 하느라 눈살을 찌푸린다. "어쨌든, 아비샤이는 성질이 더럽고, 날카로운 발톱을 가지고 있으며, 주문도 쓸 수가 있어요. 난적이죠..."~ */
  IF ~~ THEN REPLY #51126 /* ~"토콜라들이라면 자신들 일은 자신들이 알아서 처리할 수 있을 것 같소."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #51127 /* ~"정상적인 상황이라면 그렇다고 할 수 있겠지요, 토콜라들은 강력한 전사들이니까요..." 그녀는 교활하게 미소지으며 당신 귀에다 대고 속삭인다. "하지만 난 그들이 모른 걸 알고 있어요..."~ */
  IF ~~ THEN REPLY #51128 /* ~"그건 대체 뭐요?"~ */ DO ~SetGlobal("Know_Xanthia_Plan","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #51129 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #51130 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #51131 /* ~"아비샤이는 마법으로만 해칠 수가 있어요." 그녀는 낄낄댄다. "토콜라들은 틀림없이 일방적으로 학살당할 거예요." 그녀는 똑바로 서서 기대가 된다는 눈빛으로 토콜라들을 바라본다.~ */
  IF ~~ THEN REPLY #51132 /* ~"어떻게 그들이 마법에 의해서만 손상을 입는다는 것을 아시오?"~ */ GOTO 9
  IF ~~ THEN REPLY #51133 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #51134 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #51135 /* ~그녀는 짜증스럽다는 표정으로 당신을 본다. "내 남편은 하모니움의 고위 간부예요. 하모니움 경비병들은 아비샤이와 같은 적들도 상대할 수 있도록 훈련을 받아요." 그녀는 시선을 돌린다. "그게 내가 알게 된 경위예요. 내 남편이 말해줬어요."~ */
  IF ~~ THEN REPLY #51136 /* ~"왜 토콜라들에게 이 사실에 대해 경고해주지 않는 거요?"~ */ GOTO 10
  IF ~~ THEN REPLY #51137 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #51138 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #51139 /* ~"왜 내가 그래야 하죠?" 그녀는 사악한 미소를 짓는다. "내가 바로 그 싸움을 제안한 사람인데."~ */
  IF ~~ THEN REPLY #51140 /* ~"그건 왜요?"~ */ GOTO 11
  IF ~~ THEN REPLY #51141 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #51142 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #51143 /* ~"내 남편은 부하들과 선술집에서 술을 함께 마심으로서 자신의 평판을 향상시키려고 하죠. 어젯밤 그는 나도 동행을 시켰어요. 저 세 얼간이들도 그 곳에서 자신들이 얼마나 뛰어난 전사인지를 자랑하고 있었어요. 그들이 술에 만취한 상태라는 건 명백했어요. 그런데 술집에서 나가다가 그들 중 하나가 발이 걸려 넘어지면서 내가 앉아 있던 테이블 위로 엎어졌어요." 그녀는 잠시 얘기를 멈춘다. ~ */
  IF ~~ THEN REPLY #51144 /* ~"계속하시오."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #51145 /* ~그녀는 분노로 얼굴을 찌푸린다. "술의 대부분은 내 무릎에 쏟아져 아주 비싼 이브닝 가운을 엉망으로 만들었어요. 그 바보가 내게 사과를 하려고 할 때, 난 그에게 나는 뛰어난 전사의 사과만 받으며, 뛰어난 전사라는 것을 입증하기 위해서는 아비샤이와 맨손으로 싸워서 이겨야 한다고 말했죠."~ */
  IF ~~ THEN REPLY #51146 /* ~"당신은 그들이 당신 드레스를 망쳤다고 해서 그들을 죽게 만들 셈이오?"~ */ JOURNAL #67304 /* ~나는 마계구에서 잔씨아라는 여인을 만났다. 그녀는 세 토콜라가 술에 취해 그녀에게 술을 엎질러 그녀의 이브닝 가운을 망친 탓에 몹시 화가 나 있다. 그녀는 그들이 백병전에서 아비샤이를 물리치기 전에는 그들의 사과를 받지 않기로 함으로서 그들에게 복수를 하기로 마음을 먹었다. 그녀에 의하면 아비샤이는 마법의 무기나 마법으로만 해칠 수가 있다고 한다, 하지만 토콜라에게는 둘 중 어느 것도 없다. 그녀는 토콜라들이 아비샤이에게 살육당하는 것을 지켜볼 심산이다. 그들에게 경고해야 하나?~ */ GOTO 13
  IF ~~ THEN REPLY #51147 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #51148 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #51149 /* ~"당신은 이 상황의 뒤에 감추어진 복잡성을 이해하지 못하는군요." 그녀는 마치 정박아를 보는 듯한 눈으로 당신을 쳐다본다. "나는 내 남편과 그의 부하들이 보는 앞에서 망신을 당했다고요!" 그녀는 화가 난 것 같다. ~ */
  IF ~~ THEN REPLY #51150 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #51151 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.2
  SAY #51152 /* ~"아무 것도 하고 있지 않아요..." 그녀는 역겹다는 표정으로 주위를 둘러본다. "그 싸움만 아니라면 이런 데서 있지도 않을 거예요." ~ */
  IF ~~ THEN REPLY #51153 /* ~"대결?"~ */ GOTO 5
  IF ~~ THEN REPLY #51154 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #51155 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 16 19 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 15 // from:
  SAY #51156 /* ~잔시아가 보인다. 그녀는 지루하다는 표정으로 당신을 본다. "왜 날 또 귀찮게 하는 거죠?"~ */
  IF ~~ THEN REPLY #51157 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #51158 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 19 even though they appear after this state */
~  Global("Barsh_Abishai","GLOBAL",4)
~ THEN BEGIN 16 // from:
  SAY #51159 /* ~잔시아가 보인다. 그녀는 증오에 찬 표정으로 당신을 본다. "당신이 그 불한당들에게 경고를 했군요, 그렇지 않나요?"~ */
  IF ~~ THEN REPLY #51160 /* ~"그렇소. 난 내가 옳다고 생각하는 일을 했소."~ */ DO ~AddexperienceParty(2000)
~ GOTO 17
  IF ~~ THEN REPLY #51161 /* ~"아니, 난 당신이 무슨 말을 하고 있는지 모르겠소."~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #51162 /* ~그녀는 고개를 천천히 끄덕인다. "나는 이 모욕을 결코 잊지 않겠어요. 안녕히 계세요." 그녀는 돌아서서 자리를 뜬다.~ */
  IF ~~ THEN REPLY #51163 /* ~떠난다.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY #51164 /* ~그녀는 미소짓는다. "좋아요, 당신이 원하는 대로 술수를 부려 보세요. 하지만 이건 알아 둬요. 나는 내가 받은 모욕을 결코 잊지 않아요. 안녕히 계세요." 그녀는 돌아서서 자리를 뜬다.~ */
  IF ~~ THEN REPLY #51165 /* ~떠난다.~ */ DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #0 ~  Global("Barsh_Abishai","GLOBAL",3)
~ THEN BEGIN 19 // from:
  SAY #64167 /* ~잔시아가 보인다. 당신이 다가가자 그녀는 지루하다는 표정으로 당신을 본다. "나는 당신이 그 멍청이 토프와 얘기하는 것을 보았어요, 그에게 경고를 해주었나요?"~ */
  IF ~  !Global("Xanthia_Rewarded","GLOBAL",1)
~ THEN REPLY #64168 /* ~"아니, 난 당신과 함께 쇼를 즐기기로 했소."~ */ GOTO 20
  IF ~  Global("Xanthia_Rewarded","GLOBAL",1)
~ THEN REPLY #68127 /* ~"아니오, 당신이 내게 멋진 *선물*을 주었는데 그럴 수는 없지."~ */ GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #64169 /* ~잔시아는 소리내어 웃은 후 미소를 짓는다. "정말 멋지군요... 원하시는 대로 나와 함께 쇼를 즐기도록 하세요." 그녀는 잠시 생각하더니 허리에 찬 주머니를 푼다. "자... 귀부인의 즐거움을 방해하지 않은 데 대한 상으로 이걸 받으세요." 그녀는 당신에게 주머니를 건네준다.~ */
  IF ~~ THEN REPLY #64170 /* ~"고맙소, 잔시아. 안녕히 계시오."~ */ DO ~SetGlobal("Xanthia_Rewarded","GLOBAL",1)
AddexperienceParty(500)
GivePartyGold(500)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY #68128 /* ~잔시아는 소리내어 웃은 후 미소를 짓는다. "정말 멋지군요..." 그녀는 당신에게 등을 돌린다. ~ */
  IF ~~ THEN REPLY #68129 /* ~"안녕히 계시오."~ */ EXIT
END
