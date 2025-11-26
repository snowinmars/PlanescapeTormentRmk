// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMURK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMURK~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58784 /* ~평범한 상인이 보인다. 당신이 다가가자 그는 미소를 지으며 고개를 끄덕인다.~ */
  IF ~~ THEN REPLY #58785 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #58786 /* ~그를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58789 /* ~그는 공손히 고개를 끄덕인다. "안녕하시오. 나는 머크요. 내 물건에 관심이 있으시오?"~ */
  IF ~~ THEN REPLY #58790 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58791 /* ~"어떤 물건들을 가지고 있소?"~ */ GOTO 3
  IF ~~ THEN REPLY #58792 /* ~"아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58793 /* ~그는 고개를 젓고 눈살을 찌푸린다. "나는 정보는 취급하지 않소. 질문이 있다면 다른 데로 가보시오."~ */
  IF ~~ THEN REPLY #58794 /* ~"좋소, 어떤 물건들을 가지고 있소?"~ */ GOTO 3
  IF ~~ THEN REPLY #58795 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 4.0
  SAY #58796 /* ~그의 눈이 번득인다, 그리고 그는 사악한 미소를 짓는다. "나는 다양한 종류의 도끼와 건틀릿을 취급하고 있소. 다른 자를 맨손으로 묵사발을 만드는 것보다 더 좋은 건 그를 잘라 조각을 내버리는 거요."~ */
  IF ~~ THEN REPLY #58797 /* ~"당신 물건들을 좀 보여주시오."~ */ DO ~StartStore("CrstG1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58798 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #58799 /* ~상인 머크가 보인다. 당신이 다가가자 그는 고개를 끄덕인다. "다시 만나 반갑소. 내 도움이 필요하시오?"~ */
  IF ~~ THEN REPLY #58800 /* ~"어떤 물건들을 가지고 있소?"~ */ GOTO 3
  IF ~~ THEN REPLY #58801 /* ~"당신 물건들을 좀 보여주시오."~ */ DO ~StartStore("CrstG1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58802 /* ~"안녕히 계시오."~ */ EXIT
END
