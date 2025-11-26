// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJUMBLE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DJUMBLE~

IF ~  Global("Jumble","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2937 /* ~이 작고 머리가 벗겨진 사내는 그가 입고 있는 오렌지색 튜닉과 불룩 튀어나온 똥배 때문에 마치 걸어다니는 호박처럼 보인다. 그는 느린 리듬으로 배를 드럼을 두드리듯 멍하게 두드리고 있다. 그의 기괴하고 사악한 미소와 그의 눈에서 번득이고 있는 광채는 그를 약간 미친 사람처럼 보이게 만든다.~ */
  IF ~~ THEN REPLY #2938 /* ~"안녕하시오..."~ */ DO ~SetGlobal("Jumble","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #41917 /* ~그를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #41918 /* ~남자는 과장되게 고개를 숙이고 '점블 머더센스 - 카오시텍츠 대마도사'라고만 적힌 작은 명함을 내민다. 그리고 그는 당신 손에서 명함을 낚아채더니 미친 듯이 싱글거리며 그것을 삼킨다.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 462
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41928 /* ~"당신에게 물어볼 것들이 있소, 점블..."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #41929 /* ~"당신이 리크윈드를 저주한 사람이군, 그렇지 않소?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #67862 /* ~나는 리크윈드를 저주한 자를 시 공회당에서 만났다. 그의 이름은 점블 머더센스이다. ~ */ GOTO 8
  IF ~  Global("Jumble_Reekwind","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #67863 /* ~"난 당신이 리크윈드에게 건 저주를 풀어주었으면 하오."~ */ GOTO 9
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41930 /* ~"이만 실례하겠소, 점블. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 11.0
  SAY #41931 /* ~점블은 하품을 한다, 그리고 손으로 배를 드럼처럼 두들기면서 시선을 돌린다.~ */
  IF ~~ THEN REPLY #41932 /* ~"점블? 내 질문?"~ */ GOTO 3
  IF ~~ THEN REPLY #41933 /* ~"관두시오... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 8.1 12.2
  SAY #41934 /* ~점블은 눈알을 부라린다. 그는 당신 쪽으로 돌아선다, 그리고 능글맞게 웃으며 당신을 도발한다.~ */
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #41935 /* ~"적어도 이 질문은 대답해주시오. 당신이 리크윈드를 저주한 사람이오?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #67862 /* ~나는 리크윈드를 저주한 자를 시 공회당에서 만났다. 그의 이름은 점블 머더센스이다. ~ */ GOTO 8
  IF ~  Global("Jumble_Reekwind","GLOBAL",1)
~ THEN REPLY #67865 /* ~"좋소, 하지만 난 당신이 리크윈드에게 건 저주를 풀어주었으면 하오."~ */ GOTO 9
  IF ~~ THEN REPLY #41936 /* ~"당신은 벙어리요? 그래서 내 질문에 답하지 않는 거요?"~ */ GOTO 4
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41937 /* ~진실: "나는 답을 원하오. 만약 그래야만 한다면 당신을 두들겨 패서라도 얻어내겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Jumble_1","GLOBALGood",-1)
~ GOTO 5
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41938 /* ~허풍: "나는 답을 원하오. 만약 그래야만 한다면 당신을 두들겨 패서라도 얻어내겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jumble_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #41939 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.2
  SAY #41940 /* ~점블은 머리를 기울이면서 바보처럼 싱글거린다. 그는 천천히 어깨를 으쓱한다... 그리고 눈을 감고 당신에게 혀를 내민다. ~ */
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41941 /* ~진실: "나는 답을 원하오. 만약 그래야만 한다면 당신을 두들겨 패서라도 얻어내겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Jumble_1","GLOBALGood",-1)
~ GOTO 5
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41942 /* ~허풍: "나는 답을 원하오. 만약 그래야만 한다면 당신을 두들겨 패서라도 얻어내겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jumble_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #41943 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.3 3.4 4.0 4.1 9.1 9.2 10.0 10.1
  SAY #41944 /* ~점블은 한쪽 눈썹을 치켜 올리고 한 걸음 물러선다. 그는 갑자기 입을 연다, 그리고 그의 입술이나 목이 움직여서 소리를 내거나 말하는 모양을 만들지도 않는 데도 불구하고 그의 입으로부터는 알아들을 수 없는 소리가 빗발치듯 쏟아진다.~ */
  IF ~~ THEN REPLY #41945 /* ~"대체 뭔...?"~ */ DO ~SetGlobal("Jumble","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_ADD_JUMBLE_CURSE)
~ JOURNAL #66219 /* ~나는 점블 머더센스라는 이름의 카오시텍트 메이지에 의해 지속적으로 딸꾹질을 하는 저주에 걸렸다. 공회당에 이 성가신 저주를 제거하거나, 아니면 점블로 하여금 저주를 풀도록 만들 수 있는 방법을 아는 사람이 있기를 바랄 뿐이다. ~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #41946 /* ~점블이 입을 다물자 소리는 멈춘다... 그는 눈을 가늘게 뜨고 당신을 보며 자기 만족의 미소를 짓는다. 갑자기 당신은 딸꾹질을 한다.

그리고 딸꾹. 또 딸꾹. 다시 딸꾹.

점블 머더센스는 고개를 돌리고 당신에게 가라고 손짓한다.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 463
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41947 /* ~"내게 무슨 짓을 한 거요?"~ */ GOTO 7
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41948 /* ~"점블... 제발, 당신이 한 일을 원상태로 돌려놓으시오."~ */ GOTO 7
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41949 /* ~"점블, 당신이 무슨 짓을 했던 어서 원상태로 돌려놓으시오, 아니면 뼈저리게 후회할 테니."~ */ GOTO 7
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41950 /* ~"내가 이 저주를 풀도록 도와줄 수 있는 사람을 빨리 찾아야겠군. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1 6.2 6.3
  SAY #41951 /* ~점블은 당신을 완전히 무시한다.~ */
  IF ~~ THEN REPLY #41952 /* ~그를 공격한다. ~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #41953 /* ~"내가 이 저주를 풀도록 도와줄 수 있는 사람을 빨리 찾아야겠군. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.2 3.0 11.1
  SAY #41954 /* ~점블은 '나는 모르오'라고 말하려는 듯 순진한 표정을 지으며 어깨를 으쓱한다. 그리고 나서 그는 입을 손으로 막고 경박한 여학생처럼 낄낄거린다.~ */
  IF ~~ THEN REPLY #41955 /* ~"그에게 건 저주를 풀어주었으면 하오."~ */ GOTO 9
  IF ~~ THEN REPLY #41956 /* ~"다른 질문이 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #41957 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.3 3.1 8.0 11.2
  SAY #41958 /* ~점블은 당신 말을 듣지 못한 척한다. 그리고 대신 시끄럽게 트림을 하고, 시 공회당 안을 두리번거리며 배를 다시 두드리기 시작한다.~ */
  IF ~~ THEN REPLY #41959 /* ~"내가 어떤 일을 해야 리크윈드의 저주를 풀도록 당신을 설득시킬 수 있겠소?" ~ */ GOTO 10
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41960 /* ~진실: "뜨거운 맛을 보기 전에 리크윈드에게 건 저주를 푸시오, 점블."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Jumble_1","GLOBALGood",-1)
~ GOTO 5
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41961 /* ~허풍: "뜨거운 맛을 보기 전에 리크윈드에게 건 저주를 푸시오, 점블."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jumble_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #41962 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #41963 /* ~점블은 당신을 보려고 하지는 않고 고개만 젓는다.~ */
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41964 /* ~진실: "뜨거운 맛을 보기 전에 리크윈드에게 건 저주를 푸시오, 점블."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Jumble_1","GLOBALGood",-1)
~ GOTO 5
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41965 /* ~허풍: "뜨거운 맛을 보기 전에 리크윈드에게 건 저주를 푸시오, 점블."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jumble_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #41966 /* ~떠난다.~ */ EXIT
END

IF ~  Global("Jumble","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #41967 /* ~점블 머더센스는 늘 하던 대로 과장되게 인사를 한다. 그리고 머리를 한쪽으로 기울이며 호기심어린 표정으로 당신을 본다.~ */
  IF ~~ THEN REPLY #41968 /* ~"당신에게 물어볼 것들이 있소, 점블..."~ */ GOTO 2
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #41969 /* ~"당신이 리크윈드를 저주한 사람이군, 그렇지 않소?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #67862 /* ~나는 리크윈드를 저주한 자를 시 공회당에서 만났다. 그의 이름은 점블 머더센스이다. ~ */ GOTO 8
  IF ~  Global("Jumble_Reekwind","GLOBAL",1)
~ THEN REPLY #67866 /* ~"난 당신이 리크윈드에게 건 저주를 풀어주었으면 하오."~ */ GOTO 9
  IF ~~ THEN REPLY #41970 /* ~"그냥 지나다가 들렸을 뿐이오. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Jumble","GLOBAL",2)
~ THEN BEGIN 12 // from:
  SAY #41971 /* ~당신을 보자 점블은 얼굴을 찌푸린다. 그리고 무례한 손짓을 하며 오지 말라고 손을 흔든다.~ */
  IF ~  Global("Know_Salabesh_Curse","GLOBAL",1)
~ THEN REPLY #41972 /* ~살라베쉬가 당신에게 가르쳐 준 저주를 그에게 건다.~ */ GOTO 15
  IF ~~ THEN REPLY #41973 /* ~"점블, 당신이 내게 건 저주를 풀어줘야겠소."~ */ GOTO 13
  IF ~~ THEN REPLY #41974 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #41975 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #41976 /* ~그는 눈알을 부라리며 크게 하품을 한다. ~ */
  IF ~  Global("Know_Salabesh_Curse","GLOBAL",1)
~ THEN REPLY #41977 /* ~살라베쉬가 당신에게 가르쳐 준 저주를 그에게 건다.~ */ GOTO 15
  IF ~~ THEN REPLY #41978 /* ~진실: "뜨거운 맛을 보기 전에 저주를 푸시오, 점블."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Jumble_1","GLOBALGood",-1)
~ GOTO 14
  IF ~~ THEN REPLY #41979 /* ~허풍: "뜨거운 맛을 보기 전에 저주를 푸시오, 점블."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jumble_1","GLOBALLaw",-1)
~ GOTO 14
  IF ~~ THEN REPLY #41980 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.1 13.2
  SAY #41981 /* ~점블 머더센스는 자신의 손톱을 점검하고 다듬는 모습을 보여준다.~ */
  IF ~  Global("Know_Salabesh_Curse","GLOBAL",1)
~ THEN REPLY #41982 /* ~살라베쉬가 당신에게 가르쳐 준 저주를 그에게 건다.~ */ GOTO 15
  IF ~~ THEN REPLY #41983 /* ~그를 공격한다. ~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #41984 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.0 13.0 14.0
  SAY #41985 /* ~당신이 살라베쉬의 저주의 주문을 외우자 점블은 다소 회의적인 표정으로 당신을 쳐다본다. 잠시 동안의 거북한 정적이 지나간 후 그는 아무런 일도 일어나지 않았다고 생각한다... 그리고 그는 이를 드러내며 사악하게 웃는다.~ */
  IF ~~ THEN REPLY #41986 /* ~계속한다.~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #41987 /* ~그는 자신의 저주로 반격을 하려고 입을 연다... 그러나 목소리가 나오지 않는다는 사실을 깨닫는다! 살라베쉬의 저주는 점블로부터 말할 수 있는 능력을 빼앗았고, 그 결과 남을 저주할 수 있는 그의 능력 역시 사라지게 되었다. 그는 자신의 목을 꽉 잡는다, 그리고 그의 눈에는 당황하는 기색이 역력하다.~ */
  IF ~~ THEN REPLY #41988 /* ~"입장이 바뀐 것 같군, 점블. 만약 당신이 저주를 건 적이 있는 사람이 - *딸꾹!* - 당신이 더 이상 말을 하거나 저주를 걸 수 없다는 사실을 알게 되면 어떻게 될 것 같소?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #41989 /* ~점블은 무릎을 꿇고 애원하는 눈빛으로 당신을 올려다본다. 그는 당장이라도 울음을 터뜨릴 것 같다.~ */
  IF ~~ THEN REPLY #41990 /* ~"내게 건 저주를 - *딸꾹!* - 풀어주겠소? 그리고 당신에게 악의를 품지 않은 사람에게는 다시는 저주를 걸지 않겠다고 맹세하겠소?"~ */ DO ~SetGlobal("Jumble","GLOBAL",3)
AddexperienceParty(10000)
~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #41991 /* ~점블은 양손을 가슴에 얹고 열심히 고개를 끄덕인다. ~ */
  IF ~~ THEN REPLY #41992 /* ~"좋소. 그럼 저주를 풀도록 하겠소..."~ */ DO ~ApplySpell(Protagonist,SPECIAL_REMOVE_JUMBLE_CURSE)
~ JOURNAL #66550 /* ~나는 '저주의 달인'인 칠흑의 살라베쉬로부터 배운 주술 덕분에 점블 머더센스로 하여금 그가 내게 건 저주를 풀도록 강제할 수 있었다. ~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #41993 /* ~당신이 살라베쉬의 저주를 해제하자 점블은 안도의 한숨을 쉰다. 다음에는 그가 당신에게 건 자신의 저주를 푼다, 그러자 드디어 당신의 딸꾹질은 멈춘다. 그는 겸손하게 고개를 숙이고 바닥을 쳐다본다.~ */
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #67870 /* ~"당신은 리크윈드에게도 저주를 걸었소, 그렇지 않소?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #67862 /* ~나는 리크윈드를 저주한 자를 시 공회당에서 만났다. 그의 이름은 점블 머더센스이다. ~ */ GOTO 22
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",1)
~ THEN REPLY #41994 /* ~"리크윈드에게 건 저주도 푸시오."~ */ DO ~SetGlobal("Reekwind","GLOBAL",2)
AddexperienceParty(1000)
~ JOURNAL #66551 /* ~나는 내 자신의 작은 저주를 이용하여 점블 머더센스로 하여금 리크윈드에게 건 저주를 풀도록 설득하는 데 성공했다. ~ */ GOTO 20
  IF ~~ THEN REPLY #41995 /* ~"안녕히 계시오, 점블."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1 21.1 22.0
  SAY #41996 /* ~점블은 입을 비죽거리며 고개를 끄덕인다, 그리고 그가 손을 한 번 흔들자 리크윈드의 저주가 풀린다."~ */
  IF ~~ THEN REPLY #41997 /* ~"고맙소. 안녕히 계시오, 점블."~ */ EXIT
END

IF ~  Global("Jumble","GLOBAL",3)
~ THEN BEGIN 21 // from:
  SAY #41998 /* ~점블은 당신에게 거북하게 인사를 하고 불안한 표정을 짓는다. 그가 당신을 다시는 상대하고 싶어하지 않는다는 건 명백하다.~ */
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #67871 /* ~"당신은 리크윈드에게도 저주를 걸었소, 그렇지 않소?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ GOTO 22
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",1)
~ THEN REPLY #41999 /* ~"당신이 리크윈드에게 건 해묵은 저주도 푸시오."~ */ DO ~SetGlobal("Reekwind","GLOBAL",2)
AddexperienceParty(1000)
~ JOURNAL #66551 /* ~나는 내 자신의 작은 저주를 이용하여 점블 머더센스로 하여금 리크윈드에게 건 저주를 풀도록 설득하는 데 성공했다. ~ */ GOTO 20
  IF ~~ THEN REPLY #42000 /* ~"그냥 지나던 길이었소, 점블. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.0 21.0
  SAY #67867 /* ~점블은 시끄럽게 한숨을 쉬고 눈알을 부라린다, 그리고 고개를 끄덕인다.~ */
  IF ~~ THEN REPLY #67868 /* ~난 당신이 오래 전에 리크윈드에게 건 저주를 풀어주었으면 하오."~ */ DO ~SetGlobal("Reekwind","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 20
  IF ~~ THEN REPLY #67869 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END
