// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DQUISAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DQUISAI~

IF ~  NumTimesTalkedTo(0)
GlobalLT("Qui_Sai","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2974 /* ~이것은 눈을 감고 팔을 허리에다 갖다 붙인 어떤 신사의 화강암으로 만든 등신대 석상이다. 그것은 매우 뛰어난 솜씨로 만들어졌으며, 얼마나 세밀하고 살아 있는 것 같은지 과연 그것이 진짜 석상인지 의심을 하게 될 정도이다.~ */
  IF ~  !NearbyDialog("DMorte")
Global("Qui_Sai","GLOBAL",0)
~ THEN REPLY #28953 /* ~"안녕하시오...?"~ */ GOTO 1
  IF ~  NearbyDialog("DMorte")
Global("Qui_Sai","GLOBAL",0)
~ THEN REPLY #28954 /* ~"안녕하시오...?"~ */ GOTO 2
  IF ~  Global("CW_Sal_Hint","GLOBAL",1)
~ THEN REPLY #28955 /* ~"내가 만난 살라베쉬라는 메이지가 이 곳에 있다는 돌 인간에 대하여 얘기해주었소. 그가 바로 당신이오?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~  Global("Qui_Sai","GLOBAL",1)
~ THEN REPLY #28956 /* ~"안녕하시오... 당신이 퀴-사이요?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #28957 /* ~석상을 만진다.~ */ GOTO 3
  IF ~~ THEN REPLY #28958 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 31.0
  SAY #28897 /* ~석상은 아무런 응답도 하지 않는다.~ */
  IF ~  Global("CW_Sal_Hint","GLOBAL",1)
~ THEN REPLY #28959 /* ~"내가 만난 살라베쉬라는 메이지가 이 곳에 있다는 돌 인간에 대하여 얘기해주었소. 그가 바로 당신이오?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #28960 /* ~석상을 만진다.~ */ GOTO 3
  IF ~~ THEN REPLY #28961 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #28898 /* ~석상은 아무런 응답도 하지 않는다.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 285
END

IF ~~ THEN BEGIN 3 // from: 0.4 1.1 31.3
  SAY #28899 /* ~당신이 그 석상을 만져서 알아낸 것은 그것을 장식하고 있는 옷은 돌이 아니라 그냥 회색 옷인 반면, 그 '피부'는 화강암처럼 단단하고 차갑다는 사실이다. ~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
!NearbyDialog("DMorte")
~ THEN REPLY #28982 /* ~"흠... 누가 왜 석상에다가 옷을 입히겠소?"~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,INT)
NearbyDialog("DMorte")
~ THEN REPLY #28983 /* ~"흠... 누가 왜 석상에다가 옷을 입히겠소?"~ */ EXTERN ~DMORTE~ 287
  IF ~  Global("CW_Sal_Hint","GLOBAL",1)
~ THEN REPLY #28984 /* ~"내가 만난 살라베쉬라는 메이지가 이 곳에 있다는 돌 인간에 대하여 얘기해주었소. 그가 바로 당신이오?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #28985 /* ~석상을 내려친다.~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 23
  IF ~~ THEN REPLY #28986 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28900 /* ~석상은 이전과 마찬가지로 당신 질문에 아무런 응답도 하지 않는다. ~ */
  IF ~  Global("CW_Sal_Hint","GLOBAL",1)
~ THEN REPLY #28987 /* ~"내가 만난 살라베쉬라는 메이지가 이 곳에 있다는 돌 인간에 대하여 얘기해주었소. 그가 바로 당신이오?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #28988 /* ~석상을 내려친다.~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 23
  IF ~~ THEN REPLY #28989 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 0.3 1.0 3.2 4.0 31.1 31.2
  SAY #28901 /* ~'석상'이 움직였다... 거의 알아채지 못할 정도였지만 그것은 분명히 고개를 끄덕였다. ~ */
  IF ~~ THEN REPLY #28990 /* ~"좋소. 질문할 것들이 좀 있소."~ */ GOTO 6
  IF ~~ THEN REPLY #28991 /* ~"그렇게 생각했소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 24.0 32.0
  SAY #28902 /* ~'석상'은 지금까지와 마찬가지로 아무 말이 없다. ~ */
  IF ~~ THEN REPLY #28992 /* ~"여보시오? 내 질문에 대한 답은?~ */ GOTO 7
  IF ~~ THEN REPLY #28993 /* ~"흠... 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #28903 /* ~여전히 아무런 응답도 없다.~ */
  IF ~~ THEN REPLY #28994 /* ~응답하기를 기다린다.~ */ GOTO 57
  IF ~~ THEN REPLY #28998 /* ~포기하고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 58.0 58.1
  SAY #28904 /* ~'석상'이 눈을 뜬다. 그는 차가운 회색 눈으로 당신을 쳐다본다. 그는 두 개의 바위가 스치는 것과 같은 묵직한 목소리로 말한다. "당신의 인내심은... 나도 알았소. 이제 퀴-사이는 당신과... 얘기하도록... 하겠소."~ */
  IF ~~ THEN REPLY #28999 /* ~"나는 당신에 대해 질문할 것이 있소..."~ */ GOTO 11
  IF ~~ THEN REPLY #29000 /* ~"이 곳에 대해 물어볼 것들이 있소."~ */ GOTO 30
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #29001 /* ~"당신은 래벌 퍼즐웰에 대해 무엇을 아시오?"~ */ GOTO 29
  IF ~~ THEN REPLY #29002 /* ~"그 일에 대해선 나중에 얘기하도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 58.2
  SAY #28905 /* ~'석상'이 눈을 뜬다. 그는 차가운 회색 눈으로 당신을 쳐다본다. 그는 두 개의 바위가 스치는 것과 같은 묵직한 목소리로 말한다. "당신의 인내심은... 나도 알았소. 이제 퀴-사이는 당신과... 얘기하도록... 하겠소."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 289
END

IF ~~ THEN BEGIN 10 // from: 11.3 12.2 13.3 14.2 15.0 16.2 17.1 19.0 27.2 28.1 29.0 30.0 35.0 37.10 38.0 41.1 49.1 50.2 51.1 53.1 55.0 56.0 59.0
  SAY #28906 /* ~그가 혹시 당신 말을 듣지 못했나 하는 생각이 시작할 때 그가 대답을 한다. "질문하시오."~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
GlobalGT("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #65157 /* ~"나는 당신이 이전에 한 말에 대해 엘리와 얘기와 나누었소. 그조차도 전투는 반드시 해야만 한다고 했소. 도둑질에 의존하는 것은 잘못이오."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",2)
~ GOTO 20
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalGT("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #65158 /* ~"나는 당신이 이전에 한 말에 대해 엘리와 얘기와 나누었소. 그는 어떠한 도둑도 그처럼 완벽한 은밀 행동 기술은 터득하지 못했다고 했소. 그리고 어떤 적으로부터는 아예 숨을 수가 없소, 당신의 냄새나 단지 생각조차도 당신의 존재를 폭로할 테니까.~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",3)
~ GOTO 21
  IF ~  Global("CW_Qui_Question","GLOBAL",3)
~ THEN REPLY #65159 /* ~"나는 당신이 이전에 한 말에 대해 쏜쿰 여사와 얘기를 나누었소. 그녀는 메이지는 육체적으로 취약하며, 그들의 주문은 이 결함을 보완하기 위한 방편에 불과하다고 했소. 메이지는 마력을 모두 소진한 후에는 더 이상 싸울 수가 없소."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",4)
AddexperienceParty(10000)
~ GOTO 22
  IF ~~ THEN REPLY #29003 /* ~"나는 당신에 대해 질문할 것이 있소..."~ */ GOTO 11
  IF ~~ THEN REPLY #29004 /* ~"이 곳에 대해 물어볼 것들이 있소."~ */ GOTO 30
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #29005 /* ~"당신은 래벌 퍼즐웰에 대해 무엇을 아시오?"~ */ GOTO 29
  IF ~~ THEN REPLY #29006 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0 10.3 33.3
  SAY #28907 /* ~한참 동안 침묵의 시간이 흐른 후 그가 말한다. "질문하시오."~ */
  IF ~~ THEN REPLY #29007 /* ~"내가 당신을 처음 발견했을 때 당신은 어떤 명상을 하고 있었소?"~ */ GOTO 51
  IF ~~ THEN REPLY #29008 /* ~"당신은 누구요?"~ */ GOTO 12
  IF ~~ THEN REPLY #29009 /* ~"당신은 여기서 어떤 일을 하오?"~ */ GOTO 13
  IF ~~ THEN REPLY #29010 /* ~"실은 그 밖에도 물어볼 것이 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #29011 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1 13.2
  SAY #28908 /* ~"나는... 퀴-사이라고 하오."~ */
  IF ~~ THEN REPLY #29012 /* ~"당신은 대체 어떤 존재요?"~ */ GOTO 27
  IF ~~ THEN REPLY #29013 /* ~"당신은 여기서 어떤 일을 하오?"~ */ GOTO 13
  IF ~~ THEN REPLY #29014 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #29015 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.2 12.1 27.1 28.0
  SAY #28909 /* ~"퀴-사이는... 명상하오. 퀴-사이는... 또한... 다른 이들에게... 무술을 가르치오."~ */
  IF ~~ THEN REPLY #29016 /* ~"당신은 어떤 명상을 하고 있소?"~ */ GOTO 51
  IF ~  GlobalLT("Qui_Sai","GLOBAL",5)
Global("CW_Qui_Question","GLOBAL",0)
~ THEN REPLY #29017 /* ~"나를 훈련시켜 줄 수 있겠소?"~ */ GOTO 14
  IF ~~ THEN REPLY #29018 /* ~"당신은 누구요?"~ */ GOTO 12
  IF ~~ THEN REPLY #29019 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #29020 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY #28910 /* ~그는 당신을 아래위로 훑어보며 우르르 소리를 낸다. 그는 손을 천천히 들어 올리더니 손톱 하나를 *우두둑* 소리를 내며 부러뜨린다. "퀴-사이는 당신이... 이 돌을 부러뜨리는 것을 보고 싶소." 그는 당신에게 살아 있는 바위의 파편을 준다. ~ */
  IF ~  CheckStatGT(Protagonist,8,STR)
~ THEN REPLY #29021 /* ~돌을 깨트린다.~ */ GOTO 16
  IF ~  CheckStatLT(Protagonist,9,STR)
~ THEN REPLY #29022 /* ~돌을 깨트린다.~ */ JOURNAL #28756 /* ~시 공회당의 전투 강사인 퀴-사이는 내가 너무 약하다며 날 가르치기를 거부했다. 더 강해지게 되면 다시 찾아와야겠다. ~ */ GOTO 15
  IF ~~ THEN REPLY #29023 /* ~"관두시오. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #29024 /* ~"나는 이제 떠나야겠소; 돌은 여기 있소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY #28911 /* ~아무리 노력을 해도 당신은 그 돌을 부러뜨릴 수가 없다. "퀴-사이가 보기에... 당신은 무술을 배우기에는... 너무 약하고... 적성도 부족하오." 그는 당신으로부터 그 돌을 받아 입에 넣는다, 그리고 우두둑 소리를 내며 씹어 가루로 만든다. ~ */
  IF ~~ THEN REPLY #29025 /* ~"그럼 질문하고 싶은 것들이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #29026 /* ~"그렇다면 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.0
  SAY #28912 /* ~노력 끝에 당신은 돌을 두 조각으로 부러뜨린다. 그는 당신으로부터 그 돌을 받아 입에 넣는다, 그리고 우두둑 소리를 내며 씹어 가루로 만든다. "퀴-사이가 보기에 당신은... 육체적으로 적합하오. 퀴-사이가 이제 묻겠소... 왜 당신은... 훈련을 받으려 하오?"~ */
  IF ~~ THEN REPLY #29027 /* ~"내 자신을 방어하기 위해."~ */ GOTO 17
  IF ~~ THEN REPLY #29029 /* ~"내 적들을 격파하기 위해."~ */ GOTO 17
  IF ~~ THEN REPLY #29030 /* ~"관두시오. 다른 것에 대해 물어봅시다..."~ */ GOTO 10
  IF ~~ THEN REPLY #29031 /* ~"지금 당장은 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #28913 /* ~"그렇다면... 퀴-사이는... 접근전을 할 필요는 없다고 생각하오."~ */
  IF ~~ THEN REPLY #29032 /* ~"무슨 뜻이오?"~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #29033 /* ~"관두시오. 다른 것에 대해 물어봅시다..."~ */ GOTO 10
  IF ~~ THEN REPLY #29034 /* ~"그렇다면 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #28914 /* ~"퀴-사이가 말하고자 하는 것은... 이러한 일들을 하는 데는... 여러 가지 방법이 있다는 것이오. 예로서... 적의 무기를 훔쳐... 그를 무력화 시킬 수도 있소."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #29036 /* ~"하지만 여전히 전투는 하지 않으면 안 되오. 도둑질에 의존하는 것은 실수요."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",2)
~ GOTO 20
  IF ~  CheckStatLT(Protagonist,13,INT)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #29038 /* ~"그럼 당신은 날 훈련시켜 주지 않을 거요?"~ */ DO ~SetGlobal("Qui_Sai_Quest","GLOBAL",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.1 20.2
  SAY #28915 /* ~"퀴-사이가 보기에는... 그럴 필요가 없소. 당신은 퀴-사이를 납득시키는 데... 실패했소. 가서 도둑 강사와... 얘기를 하는 것이 좋을 것이오. 당신이 그의 아래에서 훈련을 받기를 원하지 않는다고 해도... 그로부터 내 주장에 대한 반론을 들을 수 있을지도 모르오..."~ */
  IF ~~ THEN REPLY #29041 /* ~"그럼 다른 것에 대해 물어보도록 하겠소..."~ */ JOURNAL #56794 /* ~퀴-사이는 도둑의 전사에 대한 비교 우위에 대하여 자세히 설명하며 나를 전사로서 훈련시키기를 거부했다. 그는 내게 공회당의 도둑 강사에게 가서 도둑의 훈련을 받으라고 권했으며, 만약 내가 도둑이 되고 싶지 않다면 도둑 강사와 얘기를 하여 퀴-사이의 반박에 대한 반론을 생각해내라고 말했다.~ */ GOTO 10
  IF ~~ THEN REPLY #29042 /* ~"그렇다면 안녕히 계시오."~ */ JOURNAL #56794 /* ~퀴-사이는 도둑의 전사에 대한 비교 우위에 대하여 자세히 설명하며 나를 전사로서 훈련시키기를 거부했다. 그는 내게 공회당의 도둑 강사에게 가서 도둑의 훈련을 받으라고 권했으며, 만약 내가 도둑이 되고 싶지 않다면 도둑 강사와 얘기를 하여 퀴-사이의 반박에 대한 반론을 생각해내라고 말했다.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 10.0 18.0 33.0
  SAY #28916 /* ~잠시 후 그는 고개를 끄덕인다. "적으로부터... 숨을 수도 있소. 보이지 않는다면... 공격당할 일도 없소. 그러면... 무적이오."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #29043 /* ~"하지만 그 어떤 도둑도 그 정도로 완벽한 은밀 행동 기술은 터득하지 못했소. 그리고 어떤 적들은 사람의 생각이나 냄새만으로도 그 존재를 감지할 수 있기 때문에 그들로부터는 아예 숨을 수가 없소.~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",3)
~ GOTO 21
  IF ~  GlobalGT("CW_Eli_Ans","GLOBAL",1)
~ THEN REPLY #29044 /* ~"하지만 그 어떤 도둑, 심지어는 엘리조차도 그 정도로 완벽한 은밀 행동 기술은 터득하지 못했소. 그리고 어떤 적들은 사람의 생각이나 냄새만으로도 그 존재를 감지할 수 있기 때문에 그들로부터는 아예 숨을 수가 없소.~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",3)
~ GOTO 21
  IF ~  CheckStatLT(Protagonist,15,INT)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #29045 /* ~"그럼 당신을 날 훈련시켜 주지 않을 거요?"~ */ DO ~SetGlobal("Qui_Sai_Quest","GLOBAL",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 21 // from: 10.1 20.0 20.1 33.1
  SAY #28917 /* ~잠시 후 그는 고개를 끄덕인다. "강력한 주문은... 많은 적을 물리칠 수 있소... 그 어떠한 칼보다도... 빨리."~ */
  IF ~  GlobalGT("Qui_Sai_Quest","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("CW_Thorn_Ans","GLOBAL",0)
~ THEN REPLY #29048 /* ~"메이지는 화염병과 같소. 강력하지만 일단 사용하고 나면 아무 것도 남지 않소. 그들은 육체적으로 취약하며, 그들의 주문은 그러한 결함을 메우기 위한 방편에 불과하오. 메이지는 마력을 모두 소진한 후에는 더 이상 싸울 수가 없소."~ */ DO ~SetGlobal("Qui_Sai_Quest","GLOBAL",3)
SetGlobal("CW_Qui_Question","GLOBAL",4)
AddexperienceParty(10000)
~ GOTO 22
  IF ~  Global("Qui_Sai_Quest","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("CW_Thorn_Ans","GLOBAL",0)
~ THEN REPLY #29048 /* ~"메이지는 화염병과 같소. 강력하지만 일단 사용하고 나면 아무 것도 남지 않소. 그들은 육체적으로 취약하며, 그들의 주문은 그러한 결함을 메우기 위한 방편에 불과하오. 메이지는 마력을 모두 소진한 후에는 더 이상 싸울 수가 없소."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",4)
AddexperienceParty(10000)
~ GOTO 22
  IF ~  CheckStatLT(Protagonist,15,INT)
Global("CW_Thorn_Ans","GLOBAL",0)
~ THEN REPLY #29050 /* ~"그럼 당신을 날 훈련시켜 주지 않을 거요?"~ */ DO ~SetGlobal("Qui_Sai_Quest","GLOBAL",2)
~ GOTO 59
END

IF ~~ THEN BEGIN 22 // from: 10.2 21.0 21.1 33.2
  SAY #28918 /* ~그는 목구멍으로부터 우르르 소리를 굵직하게 내며 가벼운 미소를 짓는다. "퀴-사이는 당신이... 가르침을 받을 자격이 있다고 생각하오. 훈련실에서... 퀴-사이를 기다리시오."~ */
  IF ~~ THEN REPLY #29053 /* ~"그 곳에 곧 가겠소."~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",4)
~ JOURNAL #58926 /* ~퀴-사이는 마침내 날 가르치는 데 동의를 했다, 그리고 내게 시 공회당의 전사 훈련실에서 자신을 기다리라고 했다. ~ */ EXIT
  IF ~~ THEN REPLY #29054 /* ~"지금은 다른 용무가 있기 때문에 나중에 가겠소."~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",4)
~ JOURNAL #58926 /* ~퀴-사이는 마침내 날 가르치는 데 동의를 했다, 그리고 내게 시 공회당의 전사 훈련실에서 자신을 기다리라고 했다. ~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 3.3 4.1
  SAY #28919 /* ~당신이 석상을 내려치려고 하자 그것은 갑자기 눈을 뜨고 당신을 주먹을 무쇠처럼 억센 손으로 거머쥔다. 그는 자신의 차가운 회색 눈을 가늘게 뜨고 두 개의 바위가 스치는 것과 같은 묵직한 목소리로 말한다. "왜... 당신은... 퀴-사이를 내려치려는 것이오?"~ */
  IF ~~ THEN REPLY #29055 /* ~"용서하시오, 난 당신이 정말로 석상인지 확인하고 싶었을 뿐이오."~ */ GOTO 24
  IF ~~ THEN REPLY #29056 /* ~"날 놀리려 한 데에 대한 응보요."~ */ GOTO 25
  IF ~~ THEN REPLY #29057 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 25.0
  SAY #28920 /* ~그는 천천히 고개를 끄덕이며 눈살을 찌푸린다. "용서를... 하겠소. 하지만... 당신에게는 인내심이 부족하오."~ */
  IF ~~ THEN REPLY #29058 /* ~"아마 그럴지도. 질문할 것들이 좀 있소."~ */ GOTO 6
  IF ~~ THEN REPLY #29059 /* ~"아마 그럴지도. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #28921 /* ~"퀴-사이는... 남을 속이려 하지 말라고 했소. 퀴-사이는... 당신이 경솔하고... 뻔뻔스럽다고... 생각하오."~ */
  IF ~~ THEN REPLY #29060 /* ~"용서하시오, 난 당신이 정말로 석상인지 확인하고 싶었을 뿐이오."~ */ GOTO 24
  IF ~~ THEN REPLY #29061 /* ~"안됐군. 질문할 것들이 좀 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Qui_1","GLOBALGood",-1)
~ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.1
  SAY #28922 /* ~그는 눈을 감고 다시 침묵한다. ~ */
  IF ~~ THEN REPLY #29062 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 12.0
  SAY #28923 /* ~"이 사람은... 돌의 왕자라고 불리는... 종족의 일원이오. 퀴-사이는... 대지의 지너시요."~ */
  IF ~~ THEN REPLY #29063 /* ~"지너시?"~ */ JOURNAL #65756 /* ~내가 시 공회당에서 만난 퀴-사이라는 사람은 자신이 대지의 정령과 인간의 혼혈인 '대지의 지너시'란 존재라고 말했다. ~ */ GOTO 28
  IF ~~ THEN REPLY #29064 /* ~"당신은 여기서 어떤 일을 하오?"~ */ GOTO 13
  IF ~~ THEN REPLY #29065 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #29066 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #28924 /* ~그는 자랑스럽게 고개를 끄덕인다. "퀴-사이의 아버지는... 대지의 정령계의 생물인... 다오였소. 퀴-사이의 어머니는... 귀족 출신... 인간 여자였소. 그러한 만남에서 태어난 자가... 대지의 지너시요."~ */
  IF ~~ THEN REPLY #29067 /* ~"당신은 여기서 어떤 일을 하오?"~ */ GOTO 13
  IF ~~ THEN REPLY #29068 /* ~"그 밖에 질문할 것들이 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #29069 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 8.2 10.5 33.5
  SAY #28925 /* ~"아무 것도 아니오."~ */
  IF ~~ THEN REPLY #29070 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #29071 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 8.1 10.4 33.4
  SAY #28926 /* ~"여기는... 시 공회당이오. 더 자세히 알고 싶으면... 다른 사람에게... 물어보시오."~ */
  IF ~~ THEN REPLY #29072 /* ~"흠... 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #29073 /* ~"그럼 다른 사람을 찾아보도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Qui_Sai","GLOBAL",2)
~ THEN BEGIN 31 // from:
  SAY #28927 /* ~석상은 늘 그렇듯이 아직도 조용히 부동의 자세로 이 곳에 서 있다.~ */
  IF ~  Global("Qui_Sai","GLOBAL",0)
~ THEN REPLY #29074 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~  Global("CW_Sal_Hint","GLOBAL",1)
~ THEN REPLY #29075 /* ~"내가 만난 살라베쉬라는 메이지가 이 곳에 있다는 돌 인간에 대하여 얘기해주었소. 그가 바로 당신이오?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~  Global("Qui_Sai","GLOBAL",1)
~ THEN REPLY #29076 /* ~"안녕하시오... 당신이 퀴-사이요?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #29077 /* ~석상을 만진다.~ */ GOTO 3
  IF ~~ THEN REPLY #29078 /* ~떠난다.~ */ EXIT
END

IF ~  Global("Qui_Sai","GLOBAL",2)
~ THEN BEGIN 32 // from:
  SAY #28928 /* ~'석상'은 늘 그렇듯이 아직도 조용히 부동의 자세로 이 곳에 서 있다.~ */
  IF ~~ THEN REPLY #29079 /* ~"안녕하시오. 질문할 것들이 좀 있소."~ */ GOTO 6
  IF ~~ THEN REPLY #29080 /* ~떠난다.~ */ EXIT
END

IF ~  Global("Qui_Sai","GLOBAL",3)
~ THEN BEGIN 33 // from:
  SAY #28929 /* ~"퀴-사이가 당신에게 인사하오."~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
GlobalGT("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #65160 /* ~"나는 당신이 이전에 한 말에 대해 엘리와 얘기와 나누었소. 그조차도 전투는 반드시 해야만 한다고 했소. 도둑질에 의존하는 것은 잘못이오."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",2)
~ GOTO 20
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalGT("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #65161 /* ~"나는 당신이 이전에 한 말에 대해 엘리와 얘기와 나누었소. 그는 어떠한 도둑도 그처럼 완벽한 은밀 행동 기술은 터득하지 못했다고 했소. 그리고 어떤 적으로부터는 아예 숨을 수가 없소, 당신의 냄새나 단지 생각조차도 당신의 존재를 폭로할 테니까.~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",3)
~ GOTO 21
  IF ~  Global("CW_Qui_Question","GLOBAL",3)
~ THEN REPLY #65162 /* ~"나는 당신이 이전에 한 말에 대해 쏜쿰 여사와 얘기를 나누었소. 그녀는 메이지는 육체적으로 취약하며, 그들의 주문은 이 결함을 보완하기 위한 방편에 불과하다고 했소. 메이지는 마력을 모두 소진한 후에는 더 이상 싸울 수가 없소."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",4)
AddexperienceParty(10000)
~ GOTO 22
  IF ~~ THEN REPLY #29081 /* ~"나는 당신에 대해 질문할 것이 있소..."~ */ GOTO 11
  IF ~~ THEN REPLY #29082 /* ~"이 곳에 대해 물어볼 것들이 있소."~ */ GOTO 30
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #29083 /* ~"당신은 래벌 퍼즐웰에 대해 무엇을 아시오?"~ */ GOTO 29
  IF ~~ THEN REPLY #29084 /* ~"그냥 지나다가 들렸을 뿐이오. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Qui_Sai","GLOBAL",4)
~ THEN BEGIN 34 // from:
  SAY #28930 /* ~"말하지... 마시오. 훈련실로... 가시오."~ */
  IF ~~ THEN REPLY #29085 /* ~"그 곳에 곧 가겠소."~ */ EXIT
  IF ~~ THEN REPLY #29086 /* ~"지금은 다른 용무가 있기 때문에 나중에 가겠소."~ */ EXIT
END

IF ~  Global("Qui_Sai","GLOBAL",5)
~ THEN BEGIN 35 // from:
  SAY #28931 /* ~그는 화강암같은 눈으로 당신을 냉정하게 쳐다본다. "당신은... 퀴-사이에게... 훈련을 받으려고 이 곳에 왔소?"~ */
  IF ~~ THEN REPLY #29087 /* ~"아니오, 질문할 것들이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #29088 /* ~"그렇소, 날 훈련시켜 주시오."~ */ GOTO 36
  IF ~~ THEN REPLY #65507 /* ~"지금은 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.1
  SAY #28932 /* ~"당신은... 전사가 직업이오?"~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #29089 /* ~"그렇소."~ */ GOTO 37
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #29090 /* ~"어... 아니오."~ */ GOTO 49
END

IF ~~ THEN BEGIN 37 // from: 36.0 40.0 41.0 42.2 43.2 44.2 45.2 46.2 48.1 50.0 50.1
  SAY #28933 /* ~"퀴-사이는... 특정한 무기만이 아닌... 모든 무기를 사용하는 법을 숙지하고 있소... 그리고 여러 종류의 무기의 달인이오. 퀴-사이로부터... 무엇을 배우고 싶소?"~ */
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29091 /* ~"내게 주먹으로 싸우는 법을 가르쳐 주시오."~ */ GOTO 38
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29092 /* ~"내게 주먹으로 싸우는 법을 가르쳐 주시오."~ */ GOTO 42
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29093 /* ~"내게 칼로 싸우는 법을 가르쳐 주시오."~ */ GOTO 38
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29094 /* ~"내게 칼로 싸우는 법을 가르쳐 주시오."~ */ GOTO 43
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29095 /* ~"내게 곤봉으로 싸우는 법을 가르쳐 주시오."~ */ GOTO 38
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29096 /* ~"내게 곤봉으로 싸우는 법을 가르쳐 주시오."~ */ GOTO 44
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29097 /* ~"내게 도끼로 싸우는 법을 가르쳐 주시오."~ */ GOTO 38
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29098 /* ~"내게 도끼로 싸우는 법을 가르쳐 주시오."~ */ GOTO 45
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29099 /* ~"내게 망치로 싸우는 법을 가르쳐 주시오."~ */ GOTO 38
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29100 /* ~"내게 망치로 싸우는 법을 가르쳐 주시오."~ */ GOTO 46
  IF ~~ THEN REPLY #29101 /* ~"실은 질문할 것들이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #29102 /* ~"지금은 아무 용건도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.2 37.4 37.6 37.8 40.1
  SAY #28934 /* ~"당신은 현 시점에서는... 더 이상... 배울 수가 없소. 경험을 더 쌓으면... 퀴-사이에게... 돌아오시오."~ */
  IF ~~ THEN REPLY #29103 /* ~"그렇다면 질문을 조금 더 하고 싶소..."~ */ GOTO 10
  IF ~~ THEN REPLY #29104 /* ~"그러리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 42.0 43.0 44.0 45.0 46.0 48.0
  SAY #28935 /* ~"그럼 퀴-사이는... 당신에게 가르칠 것이오."~ */
  IF ~~ THEN REPLY #29105 /* ~그와 훈련을 한다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #28936 /* ~"당신이... 뛰어난 학생이라... 퀴-사이는 기쁘오. 당신은 가르침을... 빨리 흡수하오."~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29106 /* ~"고맙소. 내게 더 가르쳐 줄 수 있는 것이 있소?"~ */ GOTO 37
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29107 /* ~"고맙소. 내게 더 가르쳐 줄 수 있는 것이 있소?"~ */ GOTO 38
  IF ~~ THEN REPLY #29108 /* ~"고맙소. 안녕히 계시오, 퀴-사이."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 42.1 43.1 44.1 45.1 46.1
  SAY #28937 /* ~당신이 지니고 있는 기술을 평가한 후 퀴-사이는 고개를 젓는다. "당신은... 이미 이 형태의 전투의... 숙련자요. 퀴-사이는 더 이상... 당신에게 가르칠 것이 없소. 만약 이 무기에 대해... 더 배우고 싶다면... 마계구에 있는 코러를 찾아가시오."~ */
  IF ~~ THEN REPLY #29109 /* ~"내게 더 가르쳐 줄 수 있는 것이 있소?"~ */ GOTO 37
  IF ~~ THEN REPLY #29110 /* ~"그렇다면 질문을 조금 더 하고 싶소..."~ */ GOTO 10
  IF ~~ THEN REPLY #29111 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 37.1
  SAY #28938 /* ~"퀴-사이는 당신에게... 주먹으로 싸우는 법을... 가르치겠소. 이것이... 당신이 원하는 것이오?"~ */
  IF ~  ProficiencyLT(Protagonist,FIST,3)
~ THEN REPLY #29112 /* ~"그렇소, 날 가르쳐 주시오."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 39
  IF ~  ProficiencyGT(Protagonist,FIST,2)
~ THEN REPLY #29113 /* ~"그렇소, 날 가르쳐 주시오."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 41
  IF ~~ THEN REPLY #29114 /* ~"아니오... 그 밖에 어떤 것들을 내게 가르쳐 줄 수가 있소?"~ */ GOTO 37
  IF ~~ THEN REPLY #29115 /* ~"아니오, 오늘을 훈련을 받고 싶은 생각이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 37.3
  SAY #28939 /* ~"퀴-사이는 당신에게... 칼로 싸우는 법을... 가르치겠소. 이것이... 당신이 원하는 것이오?"~ */
  IF ~  ProficiencyLT(Protagonist,DAGGER,3)
~ THEN REPLY #29116 /* ~"그렇소, 날 가르쳐 주시오."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 39
  IF ~  ProficiencyGT(Protagonist,DAGGER,2)
~ THEN REPLY #29117 /* ~"그렇소, 날 가르쳐 주시오."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 41
  IF ~~ THEN REPLY #29118 /* ~"아니오... 그 밖에 어떤 것들을 내게 가르쳐 줄 수가 있소?"~ */ GOTO 37
  IF ~~ THEN REPLY #29119 /* ~"아니오, 오늘을 훈련을 받고 싶은 생각이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 37.5
  SAY #28940 /* ~"퀴-사이는 당신에게... 곤봉으로 싸우는 법을... 가르치겠소. 이것이... 당신이 원하는 것이오?"~ */
  IF ~  ProficiencyLT(Protagonist,CLUB,3)
~ THEN REPLY #29120 /* ~"그렇소, 날 가르쳐 주시오."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 39
  IF ~  ProficiencyGT(Protagonist,CLUB,2)
~ THEN REPLY #29121 /* ~"그렇소, 날 가르쳐 주시오."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 41
  IF ~~ THEN REPLY #29122 /* ~"아니오... 그 밖에 어떤 것들을 내게 가르쳐 줄 수가 있소?"~ */ GOTO 37
  IF ~~ THEN REPLY #29123 /* ~"아니오, 오늘을 훈련을 받고 싶은 생각이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 37.7
  SAY #28941 /* ~"퀴-사이는 당신에게... 도끼로 싸우는 법을... 가르치겠소. 이것이... 당신이 원하는 것이오?"~ */
  IF ~  ProficiencyLT(Protagonist,AXE,3)
~ THEN REPLY #29124 /* ~"그렇소, 날 가르쳐 주시오."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 39
  IF ~  ProficiencyGT(Protagonist,AXE,2)
~ THEN REPLY #29125 /* ~"그렇소, 날 가르쳐 주시오."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 41
  IF ~~ THEN REPLY #29126 /* ~"아니오... 그 밖에 어떤 것들을 내게 가르쳐 줄 수가 있소?"~ */ GOTO 37
  IF ~~ THEN REPLY #29127 /* ~"아니오, 오늘을 훈련을 받고 싶은 생각이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 37.9
  SAY #28942 /* ~"퀴-사이는 당신에게... 강력한 망치로 싸우는 법을... 가르치겠소. 이것이... 당신이 원하는 것이오?"~ */
  IF ~  ProficiencyLT(Protagonist,HAMMER,3)
~ THEN REPLY #29128 /* ~"그렇소, 날 가르쳐 주시오."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 39
  IF ~  ProficiencyGT(Protagonist,HAMMER,2)
~ THEN REPLY #29129 /* ~"그렇소, 날 가르쳐 주시오."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 41
  IF ~~ THEN REPLY #29131 /* ~"아니오... 그 밖에 어떤 것들을 내게 가르쳐 줄 수가 있소?"~ */ GOTO 37
  IF ~~ THEN REPLY #29132 /* ~"아니오, 오늘을 훈련을 받고 싶은 생각이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY #28943 /* ~당신이 지니고 있는 기술을 평가한 후 퀴-사이는 고개를 끄덕이며 굵직한 우르르 소리를 낸다. "당신은... 강력한 망치에 대해... 더 배울...준비가 되었소."~ */
  IF ~~ THEN REPLY #29133 /* ~"그럼 가르쳐 주시오."~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #28944 /* ~"퀴-사이는 당신이 이 사실을... 알기를 바라오. 일단 당신이 망치의... 달인이 되기 위한 길을 걷기 시작하면... 다른 무기의 달인이 될 수가 없소. 이것이... 당신이 원하는 바요?"~ */
  IF ~~ THEN REPLY #29134 /* ~"그렇소, 난 망치의 전문가가 되고 싶소."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #28818 /* ~시 공회당의 전투 강사인 퀴-사이는 내게 망치의 오의를 전수해 주었다. 나는 이제 그 무기의 전문가가 되었다. ~ */ GOTO 39
  IF ~~ THEN REPLY #29135 /* ~"아니오... 그 밖에 어떤 것들을 내게 가르쳐 줄 수가 있소?"~ */ GOTO 37
END

IF ~~ THEN BEGIN 49 // from: 36.1
  SAY #28945 /* ~퀴-사이는 입술을 천천히 비죽거리며 불쾌한 표정을 짓는다. "그럼 퀴-사이는... 당신에게 아무 것도 가르칠 수 없소."~ */
  IF ~~ THEN REPLY #29136 /* ~"날 전사로 만들어 줄 수 있겠소?"~ */ GOTO 50
  IF ~~ THEN REPLY #29137 /* ~"그렇다면 질문을 조금 더 하고 싶소..."~ */ GOTO 10
  IF ~~ THEN REPLY #29138 /* ~"그렇다면 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #28946 /* ~퀴-사이는 왼쪽 눈썹을 느릿느릿 치켜 올린다. "당신은... 현재 직업을 버리고... 전사의 길을 걷겠소?"~ */
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #29139 /* ~"그렇소. 나는 더 이상 마법을 연구하고 싶지 않소. 날 전사로 만들어 주시오."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(FIGHTER)
~ GOTO 37
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #29140 /* ~"그렇소. 나는 더 이상 도둑이기를 원하지 않소. 날 전사로 만들어 주시오."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(FIGHTER)
~ GOTO 37
  IF ~~ THEN REPLY #29141 /* ~"실은 아니오. 하지만 물어볼 것들이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #29142 /* ~"지금은 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 11.0 13.0
  SAY #28947 /* ~"퀴-사이는... 돌의 길에 대해 명상하고 있소."~ */
  IF ~~ THEN REPLY #29143 /* ~"'돌의 길?'"~ */ GOTO 52
  IF ~~ THEN REPLY #29144 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #29145 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #28948 /* ~퀴-사이는 고개를 끄덕인다. "철학...이오. 그리고... 무술이오. 퀴-사이는 그것을 통해... 무적이 되려 하오."~ */
  IF ~~ THEN REPLY #29146 /* ~"무적? 그렇다면 당신은 전투에서 패배할 수가 없겠소..."~ */ GOTO 53
  IF ~~ THEN REPLY #29147 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #28949 /* ~"그렇소. 지금은... 아직... 완벽하지 않소. 하지만 언젠가... 퀴-사이는 완벽의 경지에 도달할 것이오. 퀴-사이는... 이 사실을 알고 있소."~ */
  IF ~  Global("Way_of_Stone","GLOBAL",0)
~ THEN REPLY #29148 /* ~"지금까지 당신이 발견한 내용을 내게 들려줄 수 있겠소?"~ */ GOTO 54
  IF ~~ THEN REPLY #29149 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #29150 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #28950 /* ~퀴-사이는 고개를 끄덕인다. "아무도... 퀴-사이에게 돌의 길에 대한 지식을 공유하자고... 부탁한 적이 없었소. 이제 퀴-사이는... 그의 지식을 당신과 나눌 것이오." 그는 장시간에 걸쳐 신중하고 느리게 설명하기 시작한다..."~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #29151 /* ~그의 강의를 들으며 돌의 길을 배운다.~ */ DO ~SetGlobal("Way_of_Stone","GLOBAL",1)
PermanentStatChange(Protagonist,ARMORCLASS,LOWER,1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #28819 /* ~시 공회당의 전투 강사인 퀴-사이는 내게 '돌의 길'을 가르쳐 주었다. 그 철학의 대부분은 혈육으로 이루어진 생명체인 내게는 별로 소용이 없고 적용되지도 않으나, 그 교의의 일부를 응용하여 적이 전투에서 내게 상처를 입히기 어렵도록 만들 수는 있다. ~ */ GOTO 55
  IF ~  CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #29152 /* ~그의 강의를 들으며 돌의 길을 이해하려고 노력한다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #28820 /* ~시 공회당의 전투 강사인 퀴-사이는 내게 '돌의 길'을 가르쳐 주여고 하였다. 하지만 내가 배우기에 그 철학은 너무도 복잡하고 이질적이었다. ~ */ GOTO 56
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #28951 /* ~여러 시간에 걸쳐 강의를 듣고 많은 질문을 한 끝에 당신은 퀴-사이가 돌의 길에 대해 당신에게 가르칠 수 있는 얼마되지 않는 내용이나마 이해할 수 있게 되었다. 당신은 전투중 적의 공격을 견디고 피하는 데 그 가르침을 응용함으로서 당신이 아머 클래스를 향상시킬 것이다. ~ */
  IF ~~ THEN REPLY #29153 /* ~고맙소, 퀴-사이. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #29154 /* ~"고맙소, 퀴-사이. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 54.1
  SAY #28952 /* ~여러 시간에 걸쳐 강의를 듣고 많은 질문을 했음에도 당신은 퀴-사이의 돌의 길을 이해할 수가 없다. 그 개념은 당신이 완전히 이해하기에는 너무 복잡하고 이질적이다.~ */
  IF ~~ THEN REPLY #29155 /* ~"어쨌든 고맙소, 퀴-사이. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #29156 /* ~"어. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 7.0
  SAY #31247 /* ~아직 아무런 반응이 없다. 당신은 퀴-사이가 당신 인내심을 시험하고 있다는 생각이 든다.~ */
  IF ~~ THEN REPLY #28995 /* ~응답하기를 기다린다.~ */ GOTO 58
  IF ~~ THEN REPLY #28996 /* ~포기하고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #31251 /* ~몇 분이 지난 후에도 퀴-사이로부터는 아직 아무런 반응이 없다.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #31257 /* ~잠시 동안만 더 조용히 기다린다...~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",3)
~ GOTO 8
  IF ~  NearbyDialog("DMorte")
!Global("Water","GLOBAL",3)
~ THEN REPLY #31258 /* ~잠시 동안만 더 조용히 기다린다...~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",3)
~ GOTO 8
  IF ~  NearbyDialog("DMorte")
Global("Water","GLOBAL",3)
~ THEN REPLY #31259 /* ~잠시 동안만 더 조용히 기다린다...~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",3)
~ GOTO 9
  IF ~~ THEN REPLY #31260 /* ~포기하고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 21.2
  SAY #65163 /* ~"퀴-사이가 보기에는... 그럴 필요가 없소. 당신은 퀴-사이를 납득시키는 데... 실패했소. 가서 메이지 강사와... 얘기를 하는 것이 좋을 것이오. 당신이 그녀의 아래에서 훈련을 받기를 원하지 않는다고 해도... 그녀로부터 내 주장에 대한 반론을 들을 수 있을지도 모르오..."~ */
  IF ~~ THEN REPLY #65164 /* ~"그럼 다른 것에 대해 물어보도록 하겠소..."~ */ JOURNAL #58925 /* ~퀴-사이는 이전의 도둑이 전사보다 뛰어나다는주장 대신 메이지의 전사에 대한 비교 우위에 대하여 자세히 설명하며 나를 전사로서 훈련시키기를 거부했다. 그는 내게 공회당의 메이지 강사에게 가서 메이지의 훈련을 받으라고 권했으며, 만약 내가 메이지가 되고 싶지 않다면 메이지 강사와 얘기를 하여 퀴-사이의 반박에 대한 반론을 생각해내라고 말했다.~ */ GOTO 10
  IF ~~ THEN REPLY #65165 /* ~"그렇다면 안녕히 계시오."~ */ JOURNAL #58925 /* ~퀴-사이는 이전의 도둑이 전사보다 뛰어나다는주장 대신 메이지의 전사에 대한 비교 우위에 대하여 자세히 설명하며 나를 전사로서 훈련시키기를 거부했다. 그는 내게 공회당의 메이지 강사에게 가서 메이지의 훈련을 받으라고 권했으며, 만약 내가 메이지가 되고 싶지 않다면 메이지 강사와 얘기를 하여 퀴-사이의 반박에 대한 반론을 생각해내라고 말했다.~ */ EXIT
END
