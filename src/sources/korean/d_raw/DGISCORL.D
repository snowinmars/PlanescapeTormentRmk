// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGISCORL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGISCORL~

IF ~  Global("Giscorl","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #20655 /* ~턱에 짧은 적회색의 수염이 난 호리호리한 상인이 보인다. 그는 여러 겹의 밝은 색의 옷을 걸치고 있는데, 어찌나 많이 껴입었는지 마치 팔과 다리가 달린 깃발처럼 보일 지경이다. 당신이 지켜보자 그는 약간 몸을 떤다. ~ */
  IF ~~ THEN REPLY #20656 /* ~"안녕하시오."~ */ DO ~SetGlobal("Giscorl","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21068 /* ~"당신이 기스콜이오?"~ */ DO ~SetGlobal("Giscorl","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #21069 /* ~그 상인을 무시하고 시장 안을 돌아다닌다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #21056 /* ~"나, 기스콜." 그는 고개를 숙이고 자신의 떨리는 손을 펼친다. 그러자 그의 손과 팔뚝에 난 시커먼 흉터가 보인다... 그는 전에 심한 화상을 입은 적이 있는 듯하다. ~ */
  IF ~~ THEN REPLY #21070 /* ~"어, 당신은 어떤 물건들을 파시오?"~ */ DO ~SetGlobal("Giscorl","GLOBAL",2)
~ GOTO 3
  IF ~~ THEN REPLY #21071 /* ~"어... 당신은 어떻게 해서 양손을 다치게 되었소?"~ */ DO ~SetGlobal("Giscorl","GLOBAL",2)
~ GOTO 4
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21072 /* ~"나는 넝마주이 광장의 산파인 멥베스의 세탁물을 찾으러 왔소."~ */ GOTO 6
  IF ~~ THEN REPLY #21073 /* ~"방해해서 미안하오. 안녕히 계시오."~ */ EXIT
END

IF ~  GlobalGT("Giscorl","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #21057 /* ~기스콜은 당신 쪽으로 돌아선다. "나, 기스콜." 그는 고개를 숙이고 자신의 떨리는, 흉터투성이의 손을 펼친다. "나, 기스콜."~ */
  IF ~  Global("Giscorl","GLOBAL",2)
~ THEN REPLY #21074 /* ~"당신이 무엇을 파는지 좀 볼 수 있겠소?"~ */ DO ~StartStore("Giscorl",Protagonist)
~ EXIT
  IF ~  Global("Giscorl","GLOBAL",1)
~ THEN REPLY #21075 /* ~"어, 당신은 무슨 일을 하오?"~ */ GOTO 3
  IF ~~ THEN REPLY #21076 /* ~"어... 당신은 어떻게 해서 양손을 다치게 되었소?"~ */ GOTO 4
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21077 /* ~"나는 넝마주이 광장의 산파인 멥베스의 세탁물을 찾으러 왔소."~ */ GOTO 6
  IF ~~ THEN REPLY #21078 /* ~"오늘은 아무런 용건도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.1
  SAY #21058 /* ~"기스콜은 옷을 사." 기스콜의 목소리는 시계처럼 단조롭고 규칙적이다. "기스콜은 옷을 팔고, 옷을 세탁하고, 옷을 수선하고..." 그는 떨리는 손으로 자신이 입고 있는 여러 겹의 옷을 가리킨다. "... 옷을 입어."~ */
  IF ~~ THEN REPLY #21079 /* ~"당신이 무엇을 파는지 좀 볼 수 있겠소?"~ */ DO ~StartStore("Giscorl",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #21080 /* ~"어... 당신은 어떻게 해서 양손을 다치게 되었소?"~ */ GOTO 4
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21081 /* ~"알겠소. 보시오, 나는 넝마주이 광장의 산파인 멥베스의 세탁물을 찾으러 왔소."~ */ GOTO 6
  IF ~~ THEN REPLY #21082 /* ~"오늘은 아무런 용건도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.2 3.1 12.1
  SAY #21059 /* ~기스콜은 당신 말을 듣지 못한 것 같다. 그는 단조로운 목소리로 자신의 선전 구호를 반복할 뿐이다: "기스콜은 옷을 사고, 옷을 팔고, 옷을 세탁하고, 옷을 수선하고..." 그는 떨리는 손으로 자신이 입고 있는 여러 겹의 옷을 가리킨다. "... 옷을 입어."~ */
  IF ~~ THEN REPLY #21083 /* ~"당신이 무엇을 파는지 좀 볼 수 있겠소?"~ */ DO ~StartStore("Giscorl",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #21084 /* ~"나는 질문했소: 당신은 어떻게 해서 양손을 다치게 되었소?"~ */ GOTO 5
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21085 /* ~"알겠소. 보시오, 나는 넝마주이 광장의 산파인 멥베스의 세탁물을 찾으러 왔소."~ */ GOTO 6
  IF ~~ THEN REPLY #21086 /* ~"오늘은 아무런 용건도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #21060 /* ~기스콜의 단조로운 목소리가 떨리기 시작한다. "기스콜은 옷을 사-사고, 옷을 팔-팔고, 옷을 세-세탁하고, 옷을 수-수선하고..." 그는 다시 손짓으로 자신을 가리키나, 손이 어찌나 떨리는지 동작을 끝낼 수조차 없다. ~ */
  IF ~~ THEN REPLY #21087 /* ~"관두시오. 당신이 무엇을 파는지 좀 볼 수 있겠소?"~ */ DO ~StartStore("Giscorl",Protagonist)
~ EXIT
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21088 /* ~"어... 관두시오. 보시오, 나는 넝마주이 광장의 산파인 멥베스의 세탁물을 찾으러 왔소."~ */ GOTO 6
  IF ~~ THEN REPLY #21089 /* ~"방해해서 미안하오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2 2.3 3.2 4.2 5.1 12.2
  SAY #21061 /* ~기스콜은 눈을 깜박인다. "옷을 세탁해?"~ */
  IF ~~ THEN REPLY #21090 /* ~"그래, 넝마주이 광장의 멥베스 말이오..."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #21062 /* ~"어... 넝마? 주이?" 그는 뭔가를 세는 것처럼 손가락을 두드린다. "알아. 기억해." 그는 당신에게 기다리라고 말하려는 듯 자신의 떨리는 손가락을 들어올린다.~ */
  IF ~~ THEN REPLY #21091 /* ~그가 세탁물을 가져오기를 기다린다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
AddexperienceParty(500)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #21063 /* ~그는 납작하게 만든 녹색 넝마의 덩어리를 가지고 돌아온다. 그것은 종이만큼이나 얇기는 하나 나무판 대신 써도 좋을 만큼 뻣뻣하다. 이 넝마 조각들에는 녹색 석회빛 풀이 얼마나 지독하게 뭉쳐져 있는지 그걸 풀려면 몇 해 동안 물에 담그어도 모자랄 것 같다.~ */
  IF ~~ THEN REPLY #21092 /* ~"어... 당신은 이것들을 몇 번이나 세탁한 거요?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #21064 /* ~"기스콜은 세탁해, 닷새마다 옷에 풀을 먹여, 세탁해, 닷새마다 옷에 풀을 먹여." 그는 눈을 깜박인다. "기스콜은 여러 해 동안 세탁해. 다섯 번째 날에는 늘 세탁해. 기스콜의 의식."~ */
  IF ~~ THEN REPLY #21093 /* ~"하지만 그것들은 완전히 못쓰게 됐소."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #21065 /* ~"세탁. 기스콜의 의식." 그의 목소리는 마치 좀비처럼 단조롭다. "닷새마다 *꼭* 옷에 풀을 먹여야 해."~ */
  IF ~~ THEN REPLY #3014 /* ~"그럴 필요도 없는데 닷새마다 세탁한 건 무엇 때문... 관둡시다. 그냥 주시오."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #21066 /* ~"옷 줄께." 그는 고개를 끄덕이고 나서 당신에게 넝마를 준다. 그것은 벽돌을 한아름 들고 가는 것처럼 무겁다.~ */
  IF ~~ THEN REPLY #21095 /* ~"그럼 그것들을 멥베스에게로 가지고 돌아가도록 하겠소. 안녕히 계시오."~ */ DO ~GiveItemCreate("MebRags",Protagonist,1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 12.0
  SAY #21067 /* ~당신이 기스콜의 물건들을 살펴보는 일을 마치자 그는 고개를 끄덕인다. "나, 기스콜."~ */
  IF ~~ THEN REPLY #21097 /* ~"실은 당신이 파는 물건들을 다시 한 번 보고 싶소..."~ */ DO ~StartStore("Giscorl",Protagonist)
~ GOTO 12
  IF ~~ THEN REPLY #21098 /* ~"어... 당신은 어떻게 해서 양손을 다치게 되었소?"~ */ GOTO 4
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21099 /* ~"알겠소. 보시오, 나는 넝마주이 광장의 산파인 멥베스의 세탁물을 찾으러 왔소."~ */ GOTO 6
  IF ~~ THEN REPLY #21100 /* ~"오늘은 더 이상의 용건이 없소. 안녕히 계시오."~ */ EXIT
END
