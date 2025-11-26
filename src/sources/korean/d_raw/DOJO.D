// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DOJO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DOJO~

IF ~  GlobalGT("CR_Vic","GLOBAL",3)
GlobalLT("CR_Vic","GLOBAL",6)
Global("Alley_Pregnant","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #18838 /* ~이 큰 사내는 이전보다 더 커 보이며, 그의 전신은 누덕누덕 기운 갈색 모피로 덮여 있다. 그는 슬프게 말한다. "오조는 이제 벽 속의 남자가 좋아."~ */
  IF ~~ THEN REPLY #2830 /* ~"여기서 무슨 일이 일어났소?"~ */ GOTO 1
  IF ~~ THEN REPLY #18839 /* ~"모두들 어디로 갔소?"~ */ GOTO 2
  IF ~~ THEN REPLY #18840 /* ~"이제 당신은 위어랫이오?"~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #18841 /* ~"당신 말하는 게 훨씬 나아졌군, 오조. 무슨 일이 일어난 거요?"~ */ GOTO 5
  IF ~~ THEN REPLY #18842 /* ~"그럼 당신을 죽여야겠소."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18843 /* ~"안됐군. 안녕히 계시오."~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2829 /* ~"큰 모피. 이빨. 모든 친구는 물어. 어떤 건 음식. 어떤 건 모피. 그들 오조 그냥 내버려 둬."~ */
  IF ~~ THEN REPLY #18844 /* ~"그래 모두들 다 어디 갔소?"~ */ GOTO 2
  IF ~~ THEN REPLY #18845 /* ~"쥐들이 침략을 했소? 고맙소, 오조. 안녕히 계시오."~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #18846 /* ~"쥐들과 털로 뒤덮인 사람 왔어. 모두 치고. 그들은 우는 곳으로 갔어. 오조는 따라가지 않아어. 그들은 돌아왔어. 그들은 털이 많고 사나워."~ */
  IF ~~ THEN REPLY #18847 /* ~"알겠소. 내가 이 일에 대해 알아야 할 다른 사항은 없소?"~ */ GOTO 6
  IF ~~ THEN REPLY #18848 /* ~"알겠소. 고맙소, 오조. 안녕히 계시오."~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.5 1.1 2.1 4.1 5.1
  SAY #18849 /* ~돌아서니 구부린 자세로 지금 당장이라도 뛰어들 준비를 하고 있는 거한이 보인다. 그의 눈은 마치 야수와 같으며, 그의 열린 입에서는 침이 흘러나오고 있다. 그의 이빨은 매우, 매우 날카롭다.~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18850 /* ~"그러지 마시오, 오조. 난 당신을 해치고 싶지 않소."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #18851 /* ~"그러지 마시오, 오조. 난 당신을 해치고 싶지 않소."~ */ GOTO 8
  IF ~~ THEN REPLY #18852 /* ~그를 공격한다. ~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2
  SAY #18853 /* ~그는 슬프게 자신의 손을 쳐다본 후 고개를 들어 당신을 본다. 그가 얘기를 할 때 그의 이빨이 약간 반짝인다. "쥐." 그의 입 주변에 사악한 미소가 감돌기 시작한다.~ */
  IF ~~ THEN REPLY #18854 /* ~"내가 알아야 할 다른 사항은 없소?"~ */ GOTO 6
  IF ~~ THEN REPLY #18855 /* ~"그거 안됐군. 안녕히 계시오, 오조."~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #18856 /* ~"그럼 당신이 다른 사람들을 검염시키지 못하도록 만들어야겠군. 죽을 준비를 하시오."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3
  SAY #18857 /* ~그는 어깨를 으쓱한다.~ */
  IF ~~ THEN REPLY #18858 /* ~"내가 알아야 할 다른 사항은 없소?"~ */ GOTO 6
  IF ~~ THEN REPLY #18859 /* ~"그럼 안녕히 계시오."~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 2.0 4.0 5.0
  SAY #18860 /* ~"떠나. 쥐들은 물어. 그럼 난 당신을 물어."~ */
  IF ~~ THEN REPLY #18861 /* ~"좋소. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.0
  SAY #18862 /* ~그는 잠시 동작을 멈춘다, 그리고 천천히 근육의 긴장을 푼다. "떠나, 아니면 난 당신을 물어."~ */
  IF ~~ THEN REPLY #18863 /* ~떠난다.~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #18864 /* ~그를 공격한다. ~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY #18865 /* ~그는 당신 말을 무시하고 당신에게 달려든다!~ */
  IF ~~ THEN REPLY #18866 /* ~"오조, 기다리시오!"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18867 /* ~"꼭 그래야만 한다면..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  Global("Ojo","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #18868 /* ~거한은 당신 쪽으로 몸을 돌리더니 몸을 구부렸다가 달려든다!~ */
  IF ~~ THEN REPLY #18869 /* ~"오조, 기다리시오!"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18870 /* ~"그게 당신이 원하는 거라면..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
NearbyDialog("DMorte")
~ THEN BEGIN 10 // from:
  SAY #18871 /* ~오조는 벽으로부터 고개를 돌려 당신을 멍하니 쳐다본다. ~ */
  IF ~~ THEN EXTERN ~DMORTE~ 197
END

IF ~~ THEN BEGIN 11 // from:
  SAY #18872 /* ~오조는 벽으로부터 고개를 돌려 모트를 바라본다. 그의 눈으로부터 뭔가 서서히 타오르기 시작하는 것 같다. ~ */
  IF ~~ THEN REPLY #18873 /* ~"좋아, 모트, 그만 됐네."~ */ EXTERN ~DMORTE~ 198
  IF ~~ THEN REPLY #18874 /* ~"오조, 물어볼 것이 있소."~ */ GOTO 12
  IF ~~ THEN REPLY #18875 /* ~"여기서 나가야겠군. 안녕히 계시오, 오조."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 12 // from: 11.1 16.0 17.0 18.4 19.1 20.2 22.2 23.1 27.3 28.2 29.1 30.2 31.1 32.3 33.6 35.1 36.1 37.1 38.2 39.1 40.4 41.4 42.4 43.3
  SAY #18876 /* ~오조는 그냥 바라만 본다.~ */
  IF ~  Global("Know_Ojo_Wall","GLOBAL",1)
~ THEN REPLY #18877 /* ~"벽 속의 남자에 대해 다시 애기해줄 수 있겠소?"~ */ GOTO 27
  IF ~~ THEN REPLY #18878 /* ~"당신 자신에 대해 다시 얘기해주시오."~ */ GOTO 17
  IF ~~ THEN REPLY #18879 /* ~"뭘 하고 있는 거요?"~ */ GOTO 18
  IF ~~ THEN REPLY #18880 /* ~"이 마을 사람들에 대하여 얘기해주시오."~ */ GOTO 33
  IF ~~ THEN REPLY #18881 /* ~"지하 묘지에 대해서 얘기해주시오."~ */ GOTO 21
  IF ~~ THEN REPLY #18882 /* ~"매장된 마을에 대해 얘기해주시오."~ */ GOTO 21
  IF ~~ THEN REPLY #18883 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 14.0 15.0 21.0
  SAY #18884 /* ~그는 당신을 보며 눈을 깜박인다.~ */
  IF ~~ THEN REPLY #18885 /* ~그를 가리킨다: "당신은 누구요?"~ */ GOTO 16
  IF ~~ THEN REPLY #18886 /* ~"관두시오. 다른 질문을 하겠소..."~ */ GOTO 15
  IF ~~ THEN REPLY #18887 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 14 // from:
  SAY #18888 /* ~늘어진 턱을 한 억세게 생긴 사내가 보인다. 그의 눈에서 지성의 자취라고는 찾아보기도 힘들다. ~ */
  IF ~~ THEN REPLY #18889 /* ~"당신은 누구요?"~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #18890 /* ~"무엇을 하고 있는 거요?"~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #18891 /* ~"이 마을 사람들에 대하여 얘기해주시오."~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #18892 /* ~"지하 묘지에 대해서 얘기해주시오."~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #18893 /* ~"매장된 마을에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #18894 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY #18895 /* ~그는 당신을 보며 눈을 깜박인다. ~ */
  IF ~~ THEN REPLY #18896 /* ~"당신 자신에 대해 얘기해주시오."~ */ GOTO 13
  IF ~~ THEN REPLY #18897 /* ~"뭘 하고 있는 거요?"~ */ GOTO 21
  IF ~~ THEN REPLY #18898 /* ~"이 마을 사람들에 대하여 얘기해주시오."~ */ GOTO 21
  IF ~~ THEN REPLY #18899 /* ~"지하 묘지에 대해서 얘기해주시오."~ */ GOTO 21
  IF ~~ THEN REPLY #18900 /* ~"매장된 마을에 대해 얘기해주시오."~ */ GOTO 21
  IF ~~ THEN REPLY #18901 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.0
  SAY #18902 /* ~"오조."~ */
  IF ~~ THEN REPLY #18903 /* ~"알았소, 오조. 당신에게 물어볼 것들이 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #18904 /* ~"고맙소, 오조. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.1
  SAY #18905 /* ~그는 어깨를 으쓱한다.~ */
  IF ~~ THEN REPLY #18906 /* ~"좋소... 그럼 다른 질문에도 대답해주시오."~ */ GOTO 12
  IF ~~ THEN REPLY #18907 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.2
  SAY #18908 /* ~"오조 얘기해..." 그는 갑자기 말을 멈추고 손을 주무르기 시작한다.~ */
  IF ~~ THEN REPLY #18909 /* ~그의 손을 살펴본다.~ */ GOTO 19
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18910 /* ~"누구에게 얘기하고 있는 거요?"~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #18911 /* ~"누구에게 얘기하고 있는 거요?"~ */ GOTO 24
  IF ~~ THEN REPLY #18912 /* ~"뭐?"~ */ GOTO 22
  IF ~~ THEN REPLY #18913 /* ~"좋소. 그 밖에도 질문할 것들이 있소."~ */ GOTO 12
  IF ~~ THEN REPLY #18914 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #18915 /* ~그의 피부에는 작고 빨간 딱지가 있다. 당신이 바라보는 중에도 그는 딱지를 다시 벗겨 내고 있다. ~ */
  IF ~~ THEN REPLY #18916 /* ~"당신 손은 어떻게 된 거요?"~ */ GOTO 20
  IF ~~ THEN REPLY #18917 /* ~"당신에게 할 다른 질문들이 있소, 오조."~ */ GOTO 12
  IF ~~ THEN REPLY #18918 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #18919 /* ~"물렸어."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18920 /* ~"누가 당신을 물었소?"~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #18921 /* ~"누가 당신을 물었소?"~ */ GOTO 24
  IF ~~ THEN REPLY #18922 /* ~"좋소. 그 밖에도 질문할 것이 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #18923 /* ~"안녕히 계시오, 오조."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.4 12.5 14.1 14.2 14.3 14.4 15.1 15.2 15.3 15.4
  SAY #18924 /* ~"모르는 사람하곤 얘기 안 해." 그는 손을 문지르며 당신으로부터 고개를 돌린다.~ */
  IF ~~ THEN REPLY #18925 /* ~"좋소. 당신 자신에 대해 얘기해주시오."~ */ GOTO 13
  IF ~~ THEN REPLY #18926 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.3
  SAY #18927 /* ~"오조 얘기해." 그는 당신으로부터 고개를 돌린다.~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18928 /* ~"누구에게 얘기하고 있는 거요?"~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #18929 /* ~"누구에게 얘기하고 있는 거요?"~ */ GOTO 24
  IF ~~ THEN REPLY #18930 /* ~"좋소. 그 밖에도 질문할 것들이 있소."~ */ GOTO 12
  IF ~~ THEN REPLY #18931 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 18.1 20.0 22.0 40.0 41.1 42.1 43.0
  SAY #18932 /* ~그는 벽을 쳐다본 후 다시 당신을 바라본다. "벽 속의 남자."~ */
  IF ~~ THEN REPLY #18933 /* ~"벽 속에 사람이 있소?"~ */ DO ~SetGlobal("Know_Ojo_Wall","GLOBAL",1)
~ GOTO 27
  IF ~~ THEN REPLY #18934 /* ~"어, 좋소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #18935 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 18.2 20.1 22.1 40.1 41.2 42.2 43.1
  SAY #18936 /* ~오조는 벽들 중 한 곳을 쳐다본 후 다시 당신 쪽으로 고개를 돌린다. 그는 눈을 가늘게 뜨고 있으며 입 한쪽이 씰룩거리고 있다. "너 누구? 너 떠나."~ */
  IF ~~ THEN REPLY #18937 /* ~"당신에게 조금만 더 물어보고 싶소, 오조."~ */ GOTO 25
  IF ~~ THEN REPLY #18938 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #18939 /* ~"아니! 너 떠나!" 그는 흥분하고 있다. ~ */
  IF ~~ THEN REPLY #18940 /* ~"몇 가지만 더 물어봅시다."~ */ GOTO 26
  IF ~~ THEN REPLY #18941 /* ~"그럼 좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #18942 /* ~그는 구석에다 몸을 처박아 당신의 시선을 피한다. 아무리 구슬러도 그로 하여금 당신을 쳐다보거나 당신 질문에 대답하도록 만들 수는 없을 것 같다. ~ */
  IF ~~ THEN REPLY #18943 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 12.0 23.0 28.1 29.0 30.1 31.0 32.2
  SAY #18944 /* ~그는 벽을 쳐다본 후 다시 당신 쪽으로 고개를 돌린다.~ */
  IF ~~ THEN REPLY #18945 /* ~"벽 속의 남자는 뭐라고 말하고 있소?"~ */ GOTO 28
  IF ~~ THEN REPLY #18946 /* ~"벽 속의 남자는 어떻게 생겼소?"~ */ GOTO 30
  IF ~~ THEN REPLY #18947 /* ~"그는 어느 벽 속에 있소?"~ */ GOTO 32
  IF ~~ THEN REPLY #18948 /* ~"좋소. 그 밖에도 질문할 것들이 있소."~ */ GOTO 12
  IF ~~ THEN REPLY #18949 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #18950 /* ~"우는 돌이 있는 곳에 대해서 얘기를 해. 내게 얘기를 들려줘. 나도 얘기를 하고."~ */
  IF ~~ THEN REPLY #18951 /* ~"무엇에 대한 얘기 말이오?"~ */ GOTO 29
  IF ~~ THEN REPLY #18952 /* ~"벽 속의 남자에 대해 다른 질문들을 좀 하고 싶소..."~ */ GOTO 27
  IF ~~ THEN REPLY #18953 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #18954 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #18955 /* ~그는 벽을 바라보며 아무 말도 하지 않는다.~ */
  IF ~~ THEN REPLY #18956 /* ~"그럼 좋소. 벽 속의 남자에 대해 다시 얘기해주시오."~ */ GOTO 27
  IF ~~ THEN REPLY #18957 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #18958 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1
  SAY #18959 /* ~"작아. 붉은 눈. 털이 많아."~ */
  IF ~~ THEN REPLY #18960 /* ~"그는 쥐인 것 같소."~ */ GOTO 31
  IF ~~ THEN REPLY #18961 /* ~"좋소. 벽 속의 남자에 대해 다른 질문들을 좀 하고 싶소..."~ */ GOTO 27
  IF ~~ THEN REPLY #18962 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #18963 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0 32.0 32.1
  SAY #18964 /* ~그는 고개를 끄덕인다.~ */
  IF ~~ THEN REPLY #18965 /* ~"좋소. 벽 속의 남자에 대해 다른 질문들을 좀 하고 싶소..."~ */ GOTO 27
  IF ~~ THEN REPLY #18966 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #18967 /* ~"고맙소, 오조. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 27.2
  SAY #18968 /* ~그는 벽을 가리킨다. 벽에는 작은 구멍이 나 있다. 자세히 보니 그 구멍은 마치 쥐가 갉아먹은 듯 울퉁불퉁하다.~ */
  IF ~~ THEN REPLY #18969 /* ~"이건 마치 쥐가 씹은 듯하오."~ */ GOTO 31
  IF ~~ THEN REPLY #18970 /* ~"벽 속의 남자는 쥐요?'~ */ GOTO 31
  IF ~~ THEN REPLY #18971 /* ~"알겠소... 오조, 벽 속의 남자에 대해 다른 질문들을 좀 하고 싶소..."~ */ GOTO 27
  IF ~~ THEN REPLY #18972 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #18973 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 12.3 35.0 36.0 37.0 38.1 39.0 40.3 41.3 42.3 43.2
  SAY #18974 /* ~"누구?"~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #18975 /* ~"안나."~ */ GOTO 34
  IF ~  !NearbyDialog("DAnnah")
GlobalGT("Annah","GLOBAL",0)
~ THEN REPLY #18976 /* ~"안나."~ */ GOTO 35
  IF ~~ THEN REPLY #18977 /* ~"마타."~ */ GOTO 36
  IF ~~ THEN REPLY #18978 /* ~"파로드."~ */ GOTO 37
  IF ~~ THEN REPLY #18979 /* ~"그리스."~ */ GOTO 38
  IF ~~ THEN REPLY #18980 /* ~"퀸트"~ */ GOTO 39
  IF ~~ THEN REPLY #18981 /* ~"대신 다른 질문을 하고 싶소."~ */ GOTO 12
  IF ~~ THEN REPLY #18982 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #18983 /* ~그는 안나를 두려운 듯 바라본다. ~ */
  IF ~~ THEN EXTERN ~DANNAH~ 109
END

IF ~~ THEN BEGIN 35 // from: 33.1
  SAY #18984 /* ~"심술궂은 소녀."~ */
  IF ~~ THEN REPLY #18985 /* ~"좋소. 다른 사람들에 대해 얘기해주시오."~ */ GOTO 33
  IF ~~ THEN REPLY #18986 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 12
  IF ~~ THEN REPLY #18987 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 33.2
  SAY #18988 /* ~"무서운 마녀."~ */
  IF ~~ THEN REPLY #18989 /* ~"좋소. 다른 사람들에 대해 얘기해주시오."~ */ GOTO 33
  IF ~~ THEN REPLY #18990 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 12
  IF ~~ THEN REPLY #18991 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 33.3
  SAY #18992 /* ~"훼어-로드."~ */
  IF ~~ THEN REPLY #18993 /* ~"좋소. 다른 사람들에 대해 얘기해주시오."~ */ GOTO 33
  IF ~~ THEN REPLY #18994 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 12
  IF ~~ THEN REPLY #18995 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 33.4
  SAY #18996 /* ~그는 갑자기 눈을 가늘게 뜬다. "죽었어."~ */
  IF ~~ THEN REPLY #18997 /* ~"어떻게 그가 죽은지 아시오?"~ */ GOTO 40
  IF ~~ THEN REPLY #18998 /* ~"좋소. 다른 사람들에 대해 얘기해주시오."~ */ GOTO 33
  IF ~~ THEN REPLY #18999 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 12
  IF ~~ THEN REPLY #19000 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 33.5
  SAY #19001 /* ~"퀸트."~ */
  IF ~~ THEN REPLY #19002 /* ~"좋소. 다른 사람들에 대해 얘기해주시오."~ */ GOTO 33
  IF ~~ THEN REPLY #19003 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 12
  IF ~~ THEN REPLY #19004 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.0
  SAY #19005 /* ~"벽 속의 남자가 내게 말해줬어."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #19006 /* ~"벽 속의 남자에 대해 얘기해주시오."~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #19007 /* ~"벽 속의 남자에 대해 얘기해주시오."~ */ GOTO 24
  IF ~~ THEN REPLY #19008 /* ~"그가 당신에게 뭐라고 말했소?"~ */ GOTO 41
  IF ~~ THEN REPLY #19009 /* ~"다른 마을 사람들에 대해 얘기해주시오."~ */ GOTO 33
  IF ~~ THEN REPLY #19010 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #19011 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.2
  SAY #19012 /* ~"그리스 죽었어."~ */
  IF ~~ THEN REPLY #19013 /* ~"그리스는 어디 있소?"~ */ GOTO 42
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #19014 /* ~"벽 속의 남자에 대해 얘기해주시오."~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #19015 /* ~"벽 속의 남자에 대해 얘기해주시오."~ */ GOTO 24
  IF ~~ THEN REPLY #19016 /* ~"다른 마을 사람들에 대해 얘기해주시오."~ */ GOTO 33
  IF ~~ THEN REPLY #19017 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #19038 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #19018 /* ~"우는 곳에서."~ */
  IF ~~ THEN REPLY #19019 /* ~"눈물을 흘리는 돌 지하 묘지 말이오?"~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #19020 /* ~"벽 속의 남자에 대해 얘기해주시오."~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #19021 /* ~"벽 속의 남자에 대해 얘기해주시오."~ */ GOTO 24
  IF ~~ THEN REPLY #19022 /* ~"다른 마을 사람들에 대해 얘기해주시오."~ */ GOTO 33
  IF ~~ THEN REPLY #19023 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #19024 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #19025 /* ~그는 고개를 끄덕인다.~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #19026 /* ~"벽 속의 남자에 대해 얘기해주시오."~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #19027 /* ~"벽 속의 남자에 대해 얘기해주시오."~ */ GOTO 24
  IF ~~ THEN REPLY #19028 /* ~"다른 마을 사람들에 대해 얘기해주시오."~ */ GOTO 33
  IF ~~ THEN REPLY #19029 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #19030 /* ~"안녕히 계시오."~ */ EXIT
END
