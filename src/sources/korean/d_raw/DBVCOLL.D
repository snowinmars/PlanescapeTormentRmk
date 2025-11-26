// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBVCOLL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBVCOLL~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #54788 /* ~이 사내는 누더기가 된 더러운 갈색 겉옷을 입고 있으며, 긴 두건이 그의 얼굴의 대부분을 가리고 있다.~ */
  IF ~~ THEN REPLY #54789 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #54790 /* ~그를 그냥 내버려 둔다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #54791 /* ~그는 두건 아래서 눈을 가늘게 뜨고 있다, 그리고 그는 뒤로 한 걸음 물러선다. "무엇을 원하시오?"~ */
  IF ~~ THEN REPLY #54792 /* ~"뭘 하고 있는 거요?"~ */ GOTO 2
  IF ~  CreatureInArea("AR0108")
~ THEN REPLY #54793 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 3
  IF ~  CreatureInArea("AR0109")
~ THEN REPLY #54794 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 4
  IF ~~ THEN REPLY #54795 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #54796 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 9.0
  SAY #54797 /* ~"난 내 일에만 신경 쓰고 싶소. 당신도 그렇게 해 달라고 부탁하고 싶소."~ */
  IF ~  CreatureInArea("AR0108")
~ THEN REPLY #54799 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 3
  IF ~  CreatureInArea("AR0109")
~ THEN REPLY #54798 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 4
  IF ~~ THEN REPLY #54800 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #54801 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 9.1
  SAY #54802 /* ~그는 주위를 둘러본다. "특별한 이름은 없소. '쓰레기 굴'이라고 할 수도 있겠군."~ */
  IF ~~ THEN REPLY #54803 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 2
  IF ~~ THEN REPLY #54804 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #54805 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 9.2
  SAY #54806 /* ~"파로드의 마을이오." 그는 천정의 벽돌과 쓰레기를 가리킨다. "매장된 마을이오."~ */
  IF ~~ THEN REPLY #54807 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 2
  IF ~~ THEN REPLY #54808 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #54809 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3 2.2 3.1 4.1 9.3
  SAY #54810 /* ~"에?"~ */
  IF ~  Global("Pharod","GLOBAL",0)
CreatureInArea("AR0108")
~ THEN REPLY #54811 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
CreatureInArea("AR0109")
~ THEN REPLY #54812 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 8
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #54813 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 6
  IF ~~ THEN REPLY #54814 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.2 7.0 8.0
  SAY #54815 /* ~그는 어리둥절한 표정으로 고개를 저을 뿐이다.~ */
  IF ~  Global("Pharod","GLOBAL",0)
CreatureInArea("AR0108")
~ THEN REPLY #54816 /* ~"그럼 파로드에 대해선 아오? 그가 어디 있는지 아시오?"~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
CreatureInArea("AR0109")
~ THEN REPLY #54817 /* ~"그럼 파로드에 대해선 아오? 그가 어디 있는지 아시오?"~ */ GOTO 8
  IF ~~ THEN REPLY #54818 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0 6.0
  SAY #54819 /* ~그는 고개를 끄덕인다. "쓰레기 굴의 남서쪽으로 가시오. 그 곳에는 파로드가 있는 곳으로 통하는 함정문이 있소."~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #54820 /* ~"또한 나는 내가 잃어버린 일지도 찾고 있소." ~ */ GOTO 6
  IF ~~ THEN REPLY #54821 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1 6.1
  SAY #54822 /* ~그는 고개를 끄덕인다. "북서쪽에 큰 건물로 통하는 아치가 있소... 그 안으로 들어가면 파로드가 있을 거요."~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #54823 /* ~"또한 나는 내가 잃어버린 일지도 찾고 있소." ~ */ GOTO 6
  IF ~~ THEN REPLY #54824 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 9 // from:
  SAY #54825 /* ~그는 한 걸음 물러서서 두건을 덮어쓴 채 당신을 의심스런 눈초리로 흘긋 본다. "또 왔소? 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #54826 /* ~"뭘 하고 있는 거요?"~ */ GOTO 2
  IF ~  CreatureInArea("AR0108")
~ THEN REPLY #54827 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 3
  IF ~  CreatureInArea("AR0109")
~ THEN REPLY #54828 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 4
  IF ~~ THEN REPLY #54829 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #54830 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END
