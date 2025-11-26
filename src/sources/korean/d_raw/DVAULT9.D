// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVAULT9.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DVAULT9~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 12 even though they appear after this state */
~  !Global("Vault_Attack","GLOBAL",1)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45843 /* ~"아홉 번째 세계의 금고에 오신 것을 환영하오! 오늘은 어떤 도움이 필요하시오?"~ */
  IF ~  Global("Know_Vault","AR0510",0)
~ THEN REPLY #45844 /* ~"이 곳은 어떤 곳이오?"~ */ DO ~SetGlobal("Know_Vault","AR0510",1)
~ GOTO 2
  IF ~  Global("Know_Head","AR0510",0)
~ THEN REPLY #45845 /* ~"당신은 어떤 존재요?"~ */ DO ~SetGlobal("Know_Head","AR0510",1)
~ GOTO 3
  IF ~  GlobalLT("Warehouse_Clear","GLOBAL",4)
GlobalGT("Warehouse_Clear","GLOBAL",0)
~ THEN REPLY #45846 /* ~"나는 이 곳에서 물건을 찾는 데 문제가 생겼다고 들었소."~ */ DO ~SetGlobal("Warehouse_Clear","GLOBAL",4)
~ GOTO 10
  IF ~~ THEN REPLY #45847 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #66903 /* ~"안녕히 계시오."~ */ GOTO 11
END

IF WEIGHT #2 /* Triggers after states #: 12 even though they appear after this state */
~  !Global("Vault_Attack","GLOBAL",1)
NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #45848 /* ~"아홉 번째 세계의 금고에 다시 오신 것을 환영하오! 오늘처럼 좋은 날 내가 어떻게 도와드리면 되겠소?"~ */
  IF ~  Global("Know_Vault","AR0510",0)
~ THEN REPLY #45849 /* ~"이 곳은 어떤 곳이오?"~ */ DO ~SetGlobal("Know_Vault","AR0510",1)
~ GOTO 2
  IF ~  Global("Know_Head","AR0510",0)
~ THEN REPLY #45850 /* ~"당신은 어떤 존재요?"~ */ DO ~SetGlobal("Know_Head","AR0510",1)
~ GOTO 3
  IF ~~ THEN REPLY #45851 /* ~"나는 물건을 저장하고 싶소."~ */ GOTO 6
  IF ~~ THEN REPLY #45852 /* ~"나는 맡긴 것을 되찾고 싶소."~ */ GOTO 9
  IF ~  GlobalLT("Warehouse_Clear","GLOBAL",4)
GlobalGT("Warehouse_Clear","GLOBAL",0)
~ THEN REPLY #45853 /* ~"나는 이 곳에서 물건을 찾는 데 문제가 생겼다고 들었소."~ */ DO ~SetGlobal("Warehouse_Clear","GLOBAL",4)
~ GOTO 10
  IF ~~ THEN REPLY #45854 /* ~"안녕히 계시오."~ */ GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 7.0
  SAY #45855 /* ~"아홉 번째 세계의 금고는 마계구를 비롯해 시길 전역의 지적 생명체들을 위해 봉사하는 창고요! 우리의 좌우명은 다음과 같소 : '한 세계만 가지고는 충분하지 않을 때!' 우리는 저장할 공간이 부족한 사람들을 위해 공간을 제공하오. 우리의 가격은 저렴하오! 우리의 서비스 또한 탁월하오! 그리고 손님에 대한 우리의 친절은 여러 차원들에 알려져 있소!"~ */
  IF ~~ THEN REPLY #45856 /* ~"당신은 어떤 존재요?"~ */ GOTO 3
  IF ~~ THEN REPLY #45857 /* ~"안녕히 계시오."~ */ GOTO 10
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0 7.1
  SAY #45858 /* ~"나는 아홉 번째 세계의 금고의 대변인이오. 나는 당신과 같은 고객들에게 봉사하기 위해 존재하오. 당신이 원하는 것을 말해주시오!"~ */
  IF ~~ THEN REPLY #45859 /* ~"나는 물건을 저장하고 싶소."~ */ GOTO 6
  IF ~~ THEN REPLY #45860 /* ~"나는 맡긴 것을 되찾고 싶소."~ */ GOTO 9
  IF ~~ THEN REPLY #45861 /* ~"왜 이 곳은 아홉 번째 세계의 금고라 불리는 거요?"~ */ GOTO 4
  IF ~~ THEN REPLY #45862 /* ~"정말 이 곳은 하나의 세계만큼이나 크오?"~ */ GOTO 5
  IF ~~ THEN REPLY #45863 /* ~"관두시오. 고맙소."~ */ GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 3.2 5.2 7.4
  SAY #45864 /* ~"솔직히 짐작도 가지 않소! 아마 소유주가 그게 멋진 이름이라고 생각했던 모양이오."~ */
  IF ~~ THEN REPLY #45865 /* ~"나는 물건을 저장하고 싶소."~ */ GOTO 6
  IF ~~ THEN REPLY #45866 /* ~"나는 맡긴 것을 되찾고 싶소."~ */ GOTO 9
  IF ~~ THEN REPLY #45867 /* ~"정말 이 곳은 하나의 세계만큼이나 크오?"~ */ GOTO 5
  IF ~~ THEN REPLY #45868 /* ~"아. 안녕히 계시오."~ */ GOTO 11
END

IF ~~ THEN BEGIN 5 // from: 3.3 4.2 7.5
  SAY #45869 /* ~"아니, 영업을 위한 과장에 불과하오. 물론 이 곳에는 저장할 공간이 많으나 그 정도로 크지는 않소."~ */
  IF ~~ THEN REPLY #45870 /* ~"나는 물건을 저장하고 싶소."~ */ GOTO 6
  IF ~~ THEN REPLY #45871 /* ~"나는 맡긴 것을 되찾고 싶소."~ */ GOTO 9
  IF ~~ THEN REPLY #45872 /* ~"왜 이 곳은 아홉 번째 세계의 금고라 불리는 거요?"~ */ GOTO 4
  IF ~~ THEN REPLY #45873 /* ~"아. 안녕히 계시오."~ */ GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 1.2 3.0 4.0 5.0 7.2
  SAY #45874 /* ~"미안하오! 지금은 빈 공간이 없소! 뭐 달리 도울 일은 없겠소?"~ */
  IF ~~ THEN REPLY #45875 /* ~"난 이 곳이 대규모의 창고라고 생각했었는데 그렇지가 않소?"~ */ GOTO 8
  IF ~~ THEN REPLY #45876 /* ~"나는 맡긴 것을 되찾고 싶소."~ */ GOTO 9
  IF ~~ THEN REPLY #45877 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #45878 /* ~"아니오. 안녕히 계시오."~ */ GOTO 11
END

IF ~~ THEN BEGIN 7 // from: 0.3 6.2 8.0 9.7 10.1 12.0 13.1 15.0 16.0 17.0 18.0 19.0 20.0
  SAY #45879 /* ~"물론이오! 어떤 도움을 원하시오?"~ */
  IF ~~ THEN REPLY #45880 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 2
  IF ~~ THEN REPLY #45881 /* ~"당신은 어떤 존재요?"~ */ GOTO 3
  IF ~~ THEN REPLY #45882 /* ~"나는 물건을 저장하고 싶소."~ */ GOTO 6
  IF ~~ THEN REPLY #45883 /* ~"나는 맡긴 것을 되찾고 싶소."~ */ GOTO 9
  IF ~~ THEN REPLY #45884 /* ~"왜 이 곳은 아홉 번째 세계의 금고라 불리는 거요?"~ */ GOTO 4
  IF ~~ THEN REPLY #45885 /* ~"정말 이 곳은 하나의 세계만큼이나 크오?"~ */ GOTO 5
  IF ~  GlobalLT("Warehouse_Clear","GLOBAL",4)
GlobalGT("Warehouse_Clear","GLOBAL",0)
~ THEN REPLY #45886 /* ~"나는 이 곳에서 물건을 찾는 데 문제가 생겼다고 들었소."~ */ DO ~SetGlobal("Warehouse_Clear","GLOBAL",4)
~ GOTO 10
  IF ~~ THEN REPLY #45887 /* ~"관두시오. 고맙소."~ */ GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #45888 /* ~"어... 그렇소." 머리는 좀 부끄러워하는 듯하다. "여분의 공간이 전혀 없고 이 주변에서 뭔가 이상한 일이 일어나고 있다는 것 밖에 모르오, 하지만 구체적으로 무슨 일이 일어나고 있는지는 모르겠소. 어쨌든 요점은 이렇소: 우리는 더 이상 저장을 위탁받을 수가 없소."~ */
  IF ~~ THEN REPLY #45889 /* ~"아. 그렇다면 몇 가지 물어볼 것들이 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #45890 /* ~"알겠소. 그럼 안녕히 계시오."~ */ GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 1.3 3.1 4.1 5.1 6.1 7.3 10.0 13.0
  SAY #45891 /* ~"정확히 어떤 것을 찾고 계시오?"~ */
  IF ~  Global("Vault_Gold","GLOBAL",1)
~ THEN REPLY #45892 /* ~"나는 큰 돈주머니 하나를 찾고 있소."~ */ GOTO 13
  IF ~  Global("Vault_Gold","GLOBAL",0)
~ THEN REPLY #45893 /* ~"나는 큰 돈주머니 하나를 찾고 있소."~ */ GOTO 14
  IF ~  Global("Pillow_Quest","GLOBAL",3)
~ THEN REPLY #45894 /* ~"나는 관 제작자 햄리스를 위해 베개를 하나 찾으러 왔소."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",4)
GiveItemCreate("DrmPllw",Protagonist,1,0,0)
~ GOTO 17
  IF ~  Global("Plans_Quest","GLOBAL",3)
~ THEN REPLY #45895 /* ~"나는 이 곳에서 무덤의 설계도를 찾을 수 있다고 들었소."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",4)
GiveItemCreate("TombPlan",Protagonist,1,0,0)
~ GOTO 18
  IF ~  Global("Stolen_Papers","GLOBAL",3)
!Global("Evidence_Papers","GLOBAL",3)
~ THEN REPLY #45896 /* ~"누가 내게 당신에게 가서 돈을 빌리러 왔다고 말하라고 했소. ~ */ DO ~SetGlobal("Stolen_Papers","GLOBAL",4)
GiveItemCreate("LoanDoc",Protagonist,1,0,0)
~ GOTO 19
  IF ~  Global("Stolen_Papers","GLOBAL",3)
Global("Evidence_Papers","GLOBAL",3)
~ THEN REPLY #45897 /* ~"누가 내게 당신에게 가서 내가 픽잇에게 웃음을 주었다고(픽잇에게 한방 먹였다고) 말하라고 했소. ~ */ DO ~SetGlobal("Stolen_Papers","GLOBAL",4)
SetGlobal("Evidence_Papers","GLOBAL",4)
GiveItemCreate("Evidence",Protagonist,1,0,0)
GiveItemCreate("LoanDoc",Protagonist,1,0,0)
~ GOTO 20
  IF ~  Global("Stolen_Papers","GLOBAL",4)
Global("Evidence_Papers","GLOBAL",3)
~ THEN REPLY #45898 /* ~"누가 내게 당신에게 가서 내가 픽잇에게 웃음을 주었다고(픽잇에게 한방 먹였다고) 말하라고 했소. ~ */ DO ~SetGlobal("Evidence_Papers","GLOBAL",4)
GiveItemCreate("Evidence",Protagonist,1,0,0)
~ GOTO 20
  IF ~~ THEN REPLY #45899 /* ~"아무 것도 아니오. 하지만 몇 가지 물어볼 것들이 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #45900 /* ~"아무 것도 아니오. 잘 있으시오."~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 0.2 1.4 2.1 7.6
  SAY #45901 /* ~"그렇소. 내 소유주들은 그것들이 무엇인지 매우 궁금해 하고 있소. 나도 알고는 싶지만 나는 큰 대가리에 걸린 주문에 불과하오! 나는 그 많은 저장 공간이 다 어떻게 되었는지 모르오. 참고로 우리는 현재 영업을 하고 있소! 맡긴 물건을 찾는 데는 아무런 문제도 없소. 말씀만 하시오!~ */
  IF ~~ THEN REPLY #45902 /* ~"그럼 좋소. 나는 맡긴 것을 되찾고 싶소."~ */ GOTO 9
  IF ~~ THEN REPLY #45903 /* ~"대신 몇 가지 질문을 하고 싶소."~ */ GOTO 7
  IF ~~ THEN REPLY #45904 /* ~"고맙소, 그러리다. 하지만 나중에 하도록 하겠소.안녕히 계시오."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 0.4 1.5 3.4 4.3 5.3 6.3 7.7 8.1 9.8 10.2 12.1 13.2 15.1 16.1 17.1 18.1 19.1 20.1
  SAY #45905 /* ~"안녕히 가시오! 우리 아홉 번째 세계의 금고는 늘 고객을 소중하게 생각하오. 다시 찾아 주시면 고맙겠소."~ */
  IF ~~ THEN REPLY #45906 /* ~"그러리다."~ */ EXIT
  IF ~~ THEN REPLY #45907 /* ~"안녕히 계시오."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Vault_Attack","GLOBAL",1)
~ THEN BEGIN 12 // from:
  SAY #45908 /* ~"미안하오. 제발 머리만은 공격하지 마시오."~ */
  IF ~~ THEN REPLY #45909 /* ~"좋소. 몇 가지 물어볼 것들이 있소..."~ */ DO ~SetGlobal("Vault_Attack","GLOBAL",0)
~ GOTO 7
  IF ~~ THEN REPLY #45910 /* ~"좋소. 안녕히 계시오."~ */ DO ~SetGlobal("Vault_Attack","GLOBAL",0)
~ GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 9.0
  SAY #45911 /* ~"미안하오! 그 아이템은 이미 누가 찾아갔소. 다른 물건을 찾아가시겠소?"~ */
  IF ~~ THEN REPLY #45912 /* ~"그렇소."~ */ GOTO 9
  IF ~~ THEN REPLY #45913 /* ~"아니오. 질문에나 대답해주시오."~ */ GOTO 7
  IF ~~ THEN REPLY #45914 /* ~"아니오. 안녕히 계시오."~ */ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 9.1
  SAY #45915 /* ~"우리는 당신이 묘사한 것과 같은 동전 자루를 보관하고 있소! 한 가지만 여쭈어 봐야겠소: 그 안에 얼마가 들어 있었소?"~ */
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #45916 /* ~어쩐지 이 추측이 맞는 것처럼 느껴진다... "동전 1,123 닢."~ */ DO ~SetGlobal("Vault_Gold","GLOBAL",1)
GivePartyGold(1123)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #45918 /* ~어쩐지 이 추측이 맞는 것처럼 느껴진다... "동전 1,123 닢."~ */ DO ~SetGlobal("Vault_Gold","GLOBAL",1)
GivePartyGold(1123)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #45930 /* ~어쩐지 이 추측이 맞는 것처럼 느껴진다... "동전 1,123 닢."~ */ DO ~SetGlobal("Vault_Gold","GLOBAL",1)
GivePartyGold(1123)
~ GOTO 15
  IF ~~ THEN REPLY #45937 /* ~추측: "동전 1,000 닢."~ */ GOTO 16
  IF ~~ THEN REPLY #45938 /* ~추측: "동전 500 닢."~ */ GOTO 16
  IF ~~ THEN REPLY #45940 /* ~추측: "동전 750 닢."~ */ GOTO 16
  IF ~~ THEN REPLY #45943 /* ~추측: "동전 331 닢."~ */ GOTO 16
  IF ~~ THEN REPLY #45945 /* ~추측: "동전 2,112 닢."~ */ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1 14.2
  SAY #45917 /* ~"여기 있소! 아홉 번째 세계의 금고를 이용해 주셔서 고맙소! 더 찾을 물건은 있으시오?"~ */
  IF ~~ THEN REPLY #45984 /* ~"몇 가지 질문에 더 대답해주시오..."~ */ GOTO 7
  IF ~~ THEN REPLY #45986 /* ~"사양하겠소. 안녕히 계시오."~ */ GOTO 11
END

IF ~~ THEN BEGIN 16 // from: 14.3 14.4 14.5 14.6 14.7
  SAY #45948 /* ~"미안하오! 그 돈 자루는 손님 것이 아닌 것 같소. 다른 물건을 찾아가시겠소?"~ */
  IF ~~ THEN REPLY #45950 /* ~"날 위해 다른 질문에 대답해주시오."~ */ GOTO 7
  IF ~~ THEN REPLY #45952 /* ~"사양하겠소. 안녕히 계시오."~ */ GOTO 11
END

IF ~~ THEN BEGIN 17 // from: 9.2
  SAY #45954 /* ~"베개? 나도 베개가 있으면 좋겠소... 그것도 커다란 돌 베개가! 여기 당신 베개가 있소, 햄리스 씨, 그리고 그걸 가지고 편안히 주무시기 바라오! 다른 물건도 찾아가시겠소?"~ */
  IF ~~ THEN REPLY #45957 /* ~"몇 가지 질문에 더 대답해주시오..."~ */ GOTO 7
  IF ~~ THEN REPLY #45959 /* ~"사양하겠소. 안녕히 계시오."~ */ GOTO 11
END

IF ~~ THEN BEGIN 18 // from: 9.3
  SAY #45962 /* ~"무덤 설계도? 당신은 죽은 것처럼 보이지 않소. 물론 그건 내가 참견할 일은 아니오. 여기 당신 도면들이 있소, 손님! 다른 물건도 찾아가시겠소?"~ */
  IF ~~ THEN REPLY #45965 /* ~"몇 가지 질문에 더 대답해주시오..."~ */ GOTO 7
  IF ~~ THEN REPLY #45978 /* ~"사양하겠소. 안녕히 계시오."~ */ GOTO 11
END

IF ~~ THEN BEGIN 19 // from: 9.4
  SAY #45990 /* ~"오! 내 비밀 암호 중 하나요! 여기 당신이 원하는 서류들이 있소!~ */
  IF ~~ THEN REPLY #45991 /* ~"날 위해 다른 질문에 대답해주시오."~ */ GOTO 7
  IF ~~ THEN REPLY #45992 /* ~"사양하겠소. 안녕히 계시오."~ */ GOTO 11
END

IF ~~ THEN BEGIN 20 // from: 9.5 9.6
  SAY #45993 /* ~"그게 무슨 뜻이든 간에 그렇게 했기를 바라오! 난 그냥 멍청한 돌머리에 불과하니까! 여기 당신 서류들이 있소! 고맙소! 어떤 도움이 필요하시오?"~ */
  IF ~~ THEN REPLY #45994 /* ~"몇 가지 질문에 더 대답해주시오..."~ */ GOTO 7
  IF ~~ THEN REPLY #45995 /* ~"사양하겠소. 안녕히 계시오."~ */ GOTO 11
END
