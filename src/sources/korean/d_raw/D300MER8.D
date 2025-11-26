// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER8.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER8~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17772 /* ~이 노파는 벽 옆에 조용히 서서 먼 곳을 바라보고 있다. 그녀는 자신의 주변을 오가는 사람들에 대해서 무관심한 것 같다, 그리고 그녀는 수십 마리의 작은 생선을 매단 나무 막대기를 꽉 쥐고 있다.~ */
  IF ~~ THEN REPLY #17790 /* ~"안녕하시오..."~ */ GOTO 2
  IF ~~ THEN REPLY #17791 /* ~그녀를 그냥 내버려 둔다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
!Global("Good_Fishwife_1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #17773 /* ~"안녕하시오, 생선을 좀..." 그녀는 갑자기 당신을 알아본다. "아, 당신이 돌아왔군."~ */
  IF ~~ THEN REPLY #22136 /* ~"그렇소, 질문하고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #17793 /* ~"그냥 지나다가 들렸을 뿐이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #17774 /* ~"오... 안녕하시오." 그녀는 잠시 눈을 가늘게 뜨고 당신을 보며 당신이 누군지 기억해내려고 한다. "이런! 나는 당신이 내 단골이라고 생각했소." 그녀는 자신의 생선 막대기를 내민다. "참치? 고등어? 아니면 해삼?"~ */
  IF ~~ THEN REPLY #17794 /* ~"생선은 사양하겠소. 질문할 것들이 좀 있소."~ */ GOTO 3
  IF ~~ THEN REPLY #17795 /* ~"사양하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #17775 /* ~"흠..." 그녀는 입을 굳게 다물고 눈살을 찌푸리며, 당신 어깨 너머를 바라본다.~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",9)
PartyHasItem("Tankard")
~ THEN REPLY #22143 /* ~"큰 잔을 가져왔소. 생선에서 나오는 잉크를 그 안에 담을 수 있겠소?"~ */ DO ~DestroyPartyItem("Tankard",FALSE)
GiveItemCreate("TankardF",Protagonist,1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",10)
~ GOTO 20
  IF ~  Global("Mebbeth_Quest","GLOBAL",7)
~ THEN REPLY #22108 /* ~"*브로고타-지느러미*란 생선에 대해 들은 적이 있소? 내가 듣기로는 그 생선의 아가미에서 잉크가 나온다고 하오."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",8)
~ GOTO 18
  IF ~~ THEN REPLY #17796 /* ~뒤로 고개를 돌려 그녀가 뭘 쳐다보고 있는지 본다.~ */ GOTO 4
  IF ~~ THEN REPLY #17797 /* ~"어... 내게 이 구역에 대해 얘기해줄 수 있겠소?"~ */ GOTO 15
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17798 /* ~"파로드란 사람을 아시오?"~ */ GOTO 15
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17799 /* ~"나는 어딘가에서 일지를 잃어버렸소. 혹시 본 적이 있소?"~ */ GOTO 15
  IF ~~ THEN REPLY #17800 /* ~"관두시오... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.2
  SAY #17776 /* ~당신 뒤에는 아무 것도 관심의 대상이 될 만한 것이 없다. 당신이 다시 돌아서자 그녀가 당신을 쳐다보고 있는 것이 보인다... 그녀는 재빨리 고개를 돌리고 다시 먼 데를 바라보기 시작한다. ~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",9)
PartyHasItem("Tankard")
~ THEN REPLY #22149 /* ~"큰 잔을 가져왔소. 생선에서 나오는 일크를 그 안에 담을 수 있겠소?"~ */ DO ~DestroyPartyItem("Tankard",FALSE)
GiveItemCreate("TankardF",Protagonist,1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",10)
~ GOTO 20
  IF ~  Global("Mebbeth_Quest","GLOBAL",7)
~ THEN REPLY #22109 /* ~"*브로고타-지느러미*란 생선에 대해 들은 적이 있소? 내가 듣기로는 그 생선의 아가미에서 잉크가 나온다고 하오."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",8)
~ GOTO 18
  IF ~~ THEN REPLY #17801 /* ~"뭐? 당신에게 내가 낯이 익소?"~ */ GOTO 5
  IF ~~ THEN REPLY #17802 /* ~"내게 이 구역에 대해서 얘기해줄 수 있겠소?~ */ GOTO 15
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17803 /* ~"파로드란 사람을 아시오?"~ */ GOTO 15
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17804 /* ~"나는 어딘가에서 일지를 잃어버렸소. 혹시 본 적이 있소?"~ */ GOTO 15
  IF ~~ THEN REPLY #17805 /* ~"어... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.2 15.2
  SAY #17777 /* ~"세상에, 아니오!" 그녀는 잠시 멈춘다. "그래, 그렇소."~ */
  IF ~~ THEN REPLY #17806 /* ~"그럼 날 전에 본 적이 있소?"~ */ GOTO 6
  IF ~~ THEN REPLY #17807 /* ~"흥미롭군. 안녕히 계시오, 생선장수."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #17778 /* ~"나는... 당신과 매우 닮은 사람을 본 적이 있소. 그건 정말 오래 전 일이었소."~ */
  IF ~~ THEN REPLY #17808 /* ~"말해주시오..."~ */ GOTO 7
  IF ~~ THEN REPLY #17809 /* ~"흥미롭군. 안녕히 계시오, 생선장수."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 17.0
  SAY #17779 /* ~"그런데 말이오... 내 시력은 이제는 별로 좋지가 않소, 그리고 그 때도 좋지 않았소 하지만 나는 당신이 작은 집단을 거느리고 여길 지나치는 걸 본 생각이 나오."~ */
  IF ~~ THEN REPLY #17810 /* ~"그 사람들은 어떻게 생겼었소?"~ */ GOTO 8
  IF ~~ THEN REPLY #17811 /* ~"흥미롭군. 안녕히 계시오, 생선장수."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #17780 /* ~"잘 모르오... 그건 매우 오래 전 일이었고, 당신들은 빠른 걸음으로 지나쳐갔으니까. 하지만 이제는 기억이 나오, 당신이 위풍당당하게 걷던 것이... 당신을 따라가며 당신에게 발길을 멈추고 뒤돌아 서서 자신과 얘기를 하라고 애원하는 여인이 있었소... 하지만 당신은 그녀를 밀어 제쳤소."~ */
  IF ~~ THEN REPLY #17812 /* ~"그리고 어떤 일이 일어났소?"~ */ GOTO 9
  IF ~~ THEN REPLY #17813 /* ~"흥미롭군. 안녕히 계시오, 생선장수."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #17781 /* ~"그녀는 매우 아름다웠소... 너무나 슬퍼 보였고, 동시에 화도 난 것 같았소. 그녀는 거기서 잠시 가만히 서 있었으나, 곧 다시 당신을 따라가려고 발걸음을 재촉했소."~ */
  IF ~~ THEN REPLY #17814 /* ~"당신은 그 곳에 어떤 집단이 있었다고 했소? 그 밖에 또 누가 있었소?"~ */ GOTO 10
  IF ~~ THEN REPLY #17815 /* ~"흥미롭군. 안녕히 계시오, 생선장수."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #17782 /* ~그녀는 어깨를 으쓱한다. "적어도 두 사람의 남자가 당신과 함께 있었소... 내가 명확히 기억하는 것은 키가 크고 마른 사내뿐이오. 그로부터는 술 냄새가 심하게 났소. 멀리서도 냄새를 맡을 수 있을 정도였소. 또한 그는 오랫동안 목욕을 안 한 사람처럼 보였소. 그는 당신을 가까이 따라가며 아무 말도 하지 않았소. 그는 마치 그녀가 존재조차 하지 않는 거처럼 행동했소, 그녀가 당신의 걸음을 멈추려고 당신에게 부딪칠 때도 말이오. 내가 기억하는 건 그뿐이오."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #17816 /* ~그녀의 시간에 대한 대가로 동전 몇 닢을 준다.~ */ GOTO 11
  IF ~~ THEN REPLY #17817 /* ~"흥미롭군. 고맙소, 그리고 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #17783 /* ~이 생선장수에게 얼마를 주겠습니까?~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #17818 /* ~동전 한 닢.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Fishwife_1","GLOBALGood",1)
TakePartyGold(1)
~ GOTO 12
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17819 /* ~동전 다섯 닢.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Fishwife_1","GLOBALGood",1)
TakePartyGold(5)
~ GOTO 13
  IF ~  PartyGoldGT(9)
~ THEN REPLY #17820 /* ~동전 열 닢.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Fishwife_1","GLOBALGood",1)
TakePartyGold(10)
~ GOTO 13
  IF ~  PartyGoldGT(19)
~ THEN REPLY #17821 /* ~동전 스무 닢.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Fishwife_1","GLOBALGood",1)
TakePartyGold(20)
~ GOTO 14
  IF ~~ THEN REPLY #17822 /* ~한 닢도 주지 않는다: "흥미롭군. 고맙소, 그리고 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #17784 /* ~그녀는 당신을 향해 미소를 지으며 고개를 끄덕인다. "고맙소, 손님."~ */
  IF ~~ THEN REPLY #17823 /* ~"물론이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1 11.2
  SAY #17785 /* ~"오! 친절도 하시지. 레이디의 그림자가 당신을 그냥 지나치기를."~ */
  IF ~~ THEN REPLY #17824 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.3
  SAY #17786 /* ~그녀는 한줌의 동전이 쌓이는 것을 그냥 바라만 보며 어쩔 줄 모른다. 당신이 손을 그녀 쪽으로 더 가까이 내밀자 그녀는 거북하게 웃으며 마침내 돈을 받는다. "오... 세상에! 정말 고맙소! 레이디의 그림자가 당신을 그냥 지나치고, 당신에게 늘 행운이 따르기를! 내 도움이 필요하면 언제든지 오시오."~ */
  IF ~~ THEN REPLY #17825 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.3 3.4 3.5 4.3 4.4 4.5 15.3 15.4 15.5
  SAY #17787 /* ~그녀는 고개를 젓는다, 그리고 입을 굳게 다문 채 계속 당신 어깨 너머를 바라본다. 당신이 그녀가 무엇을 보고 있는지 살피려고 고개를 돌린 후 다시 돌아서면, 그 때마다 그녀가 당신을 쳐다보고 있다. ~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",9)
PartyHasItem("Tankard")
~ THEN REPLY #22153 /* ~"큰 잔을 가져왔소. 생선에서 나오는 일크를 그 안에 담을 수 있겠소?"~ */ DO ~DestroyPartyItem("Tankard",FALSE)
GiveItemCreate("TankardF",Protagonist,1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",10)
~ GOTO 20
  IF ~  Global("Mebbeth_Quest","GLOBAL",7)
~ THEN REPLY #22112 /* ~"*브로고타-지느러미*란 생선에 대해 들은 적이 있소? 내가 듣기로는 그 생선의 아가미에서 잉크가 나온다고 하오."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",8)
~ GOTO 18
  IF ~~ THEN REPLY #17826 /* ~"뭐? 당신에게 내가 낯이 익소?"~ */ GOTO 5
  IF ~~ THEN REPLY #17827 /* ~"내게 이 구역에 대해서 얘기해줄 수 있겠소?~ */ GOTO 15
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17828 /* ~"파로드란 사람을 아시오?"~ */ GOTO 15
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17829 /* ~"나는 어딘가에서 일지를 잃어버렸소. 혹시 본 적이 있소?"~ */ GOTO 15
  IF ~~ THEN REPLY #17830 /* ~"어... 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Good_Fishwife_1","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY #17788 /* ~"다시 만나 반갑소! 내가 어떻게 도와 드리면 되겠소?"~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",9)
PartyHasItem("Tankard")
~ THEN REPLY #22157 /* ~"큰 잔을 가져왔소. 생선에서 나오는 일크를 그 안에 담을 수 있겠소?"~ */ DO ~TransformPartyItem("Tankard","TankardF",1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",10)
~ GOTO 20
  IF ~  Global("Mebbeth_Quest","GLOBAL",7)
~ THEN REPLY #22116 /* ~"*브로고타-지느러미*란 생선에 대해 들은 적이 있소? 내가 듣기로는 그 생선의 아가미에서 잉크가 나온다고 하오."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",8)
~ GOTO 18
  IF ~~ THEN REPLY #17831 /* ~"당신이 언제 날 보았는지 다시 얘기해 줄 수 있겠소?~ */ GOTO 17
  IF ~~ THEN REPLY #17832 /* ~"아무 것도 아니오, 그냥 지나다가 들렸을 뿐이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.2
  SAY #17789 /* ~"물론이오!" ~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 18 // from: 3.1 4.1 15.1 16.1
  SAY #22105 /* ~그녀는 눈을 깜박인 후 고개를 끄덕인다. "그래, 그 생선... 정말 기괴한 생선이오. 그것에 대해 아는 사람은 별로 없고, 그것을 먹고자 하는 사람은 더욱 없소... 죽이기도 힘들고, 죽은 후에도 마치 살아 있는 것 같소. 아직도 꿈틀거리는 것에 입을 대려고 하는 사람은 많지 않소."~ */
  IF ~~ THEN REPLY #22120 /* ~"당신은 그 생선을 가지고 있소?"~ */ JOURNAL #21904 /* ~메어'앰에겐 생선이 있다, 하지만 *늘 그렇듯이* 일이 그렇게 간단하지는 않다. 잉크를 담기 위해선 컵이나 큰 잔이 필요하다. 아마 시장의 상인들 중 하나가 내게 필요한 물건을 팔고 있을지도 모른다. ~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #22106 /* ~"그렇소... 하지만 잉크를 가져가려면 담을 용기가 필요하오. 혹시 사발이나 컵을 가지고 있소?"~ */
  IF ~  CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #22126 /* ~"좋소. 가서 용기를 구한 후 다시 오겠소."~ */ EXIT
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #22127 /* ~"흠... 또는 큰 잔... 아마 시장의 상인들 중 하나가 팔고 있을지도. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 3.0 4.0 15.0 16.0
  SAY #22107 /* ~그녀는 고개를 끄덕이고 장대로부터 생선 한 마리를 빼낸다... 그녀가 손으로 잡자 그것은 꿈틀거린다, 그리고 그녀가 그것을 걸레처럼 쥐어짜기 시작하자 꼬리를 마구 흔들어댄다. 그녀는 아가미로부터 푸른빛을 띤 액체가 흘러나올 때까지 생선을 비틀어 짠다. 당신이 가져온 용기가 거의 차자 그녀는 손을 놓고 꿈틀거리는 생선을 자신의 옆에 있는 자루에 던져넣는다.~ */
  IF ~~ THEN REPLY #22129 /* ~"고맙소. 안녕히 계시오."~ */ JOURNAL #21905 /* ~나는 드디어 잉크를 큰 잔 가득히 입수했다. 이제 난 이 역겨운 걸 가지고 멥베스에게 돌아갈 수 있다... 누가 알겠나, 그녀로 하여금 이 놈을 마시도록 할 수 있을지. ~ */ EXIT
END
