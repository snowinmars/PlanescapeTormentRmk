// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMACH1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMACH1~

IF ~  Global("Machine_1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #64241 /* ~이 고대의 기계는 잊혀진 전쟁 유물인 듯하다. 전면에 레버들이 달린 기묘한 패널을 제외하고는 기계의 대부분이 먼지로 덮여 있다. 기묘하게도 그 주위의 바닥은 최근 - 아마 지난 몇 년 사이에 누가 그 위를 걸은 듯 어지럽혀져 있다.~ */
  IF ~  Global("Machine","GLOBAL",3)
~ THEN REPLY #64261 /* ~일단 패널을 찾은 후 'X'자로 표시된 레버를 찾는다.~ */ DO ~IncrementGlobal("Machine","GLOBAL",1)
~ GOTO 5
  IF ~  GlobalGT("Machine","GLOBAL",0)
GlobalLT("Machine","GLOBAL",3)
~ THEN REPLY #64246 /* ~일단 패널을 찾은 후 'X'자로 표시된 레버를 찾는다.~ */ DO ~IncrementGlobal("Machine","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Machine","GLOBAL",0)
~ THEN REPLY #64247 /* ~패널을 조사한다.~ */ GOTO 1
  IF ~~ THEN REPLY #64248 /* ~기계를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2
  SAY #64242 /* ~패널에는 일련의 톱니바퀴들과 레버들이 있다, 그리고 각 레버 아래에는 일련의 긁어서 낸 표시들이 있는데, 누군가 대거로 급하게 새긴 것 같다. 어떤 것에는 아무런 자국도 없고, 또 다른 것들에는 사선이 하나 표시되어 있으며, 나머지 하나는 'X'로 표시되어 있다. 그 이유는 알 수 없으나 당신은 'X' 레버가 당신이 이 곳을 탈출하는 데 도움이 될 것이라는 사실을 안다. ~ */
  IF ~  Global("Clock_1","GLOBAL",1)
~ THEN REPLY #64249 /* ~X'자로 표시된 레버를 당긴다.~ */ DO ~IncrementGlobal("Machine","GLOBAL",1)
~ JOURNAL #64238 /* ~나는 요새에서 이상한 기계를 발견했다. 그것은 일종의 대포처럼 생겼으나 나는 그것이 요새를 위한 일종의 '문지기 집'이나 잠금 장치가 아닐까 하는 생각이 든다. 그것을 당기자 나는 요새 내의 다른 격리된 지역으로 이동하였는데, 그 곳은 메인 갤러리가 내려다보이는 발코니였다. 나는 다른 기계들을 찾아서 어떤 방법으로든 그것들을 작동시켜야 한다는 사실을 안다. 내 기억이 돌아오고 있는 것이 틀림없다. 시계에 새겨진 메시지가 암시하듯이 내 화신들 중 하나가 같은 과정을 이미 거쳐 간 것 같다. ~ */ GOTO 2
  IF ~  Global("Clock_1","GLOBAL",0)
~ THEN REPLY #64250 /* ~X'자로 표시된 레버를 당긴다.~ */ DO ~IncrementGlobal("Machine","GLOBAL",1)
~ JOURNAL #64239 /* ~나는 요새에서 이상한 기계를 발견했다. 그것은 일종의 대포처럼 생겼으나 나는 그것이 요새를 위한 일종의 '문지기 집'이나 잠금 장치가 아닐까 하는 생각이 든다. 그것을 당기자 나는 요새 내의 다른 격리된 지역으로 이동하였는데, 그 곳은 메인 갤러리가 내려다보이는 발코니였다. 나는 다른 기계들을 찾아서 어떤 방법으로든 그것들을 작동시켜야 한다는 사실을 안다. 그 이유는 모르겠으나 내가 전에 같은 작업을 해본 적이 있다는 기묘한 느낌이 든다. ~ */ GOTO 2
  IF ~~ THEN REPLY #64251 /* ~기계를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #64243 /* ~당신이 만지자 레버는 쉽게 움직인다, 그리고 놀랍게도 그것은 안개가 되어 사라진다... 안개는 당신 손으로 퍼져 나가고, 그러자 당신 손도 사라지기 시작한다, 그리고 다음에는 당신 팔이... 현기증이 당신을 엄습하고, 주변의 벽들이 희미해지기 시작한다...~ */
  IF ~  !Dead("Grace")
Global("Fortress_Grace","GLOBAL",1)
~ THEN REPLY #64252 /* ~"뭐-"~ */ DO ~IncrementGlobal("Fortress_Death_Counter","GLOBAL",-1)
SetGlobal("Machine_1","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1201csG0",FALSE)
~ EXIT
  IF ~  Dead("Grace")
Global("Fortress_Grace","GLOBAL",1)
~ THEN REPLY #64310 /* ~"뭐-"~ */ DO ~SetGlobal("Machine_1","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[849.1008],1)
TeleportParty("AR1201",[849.1008],14)
MoveViewPoint([849.1008],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64311 /* ~"뭐-"~ */ DO ~SetGlobal("Machine_1","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[849.1008],1)
TeleportParty("AR1201",[849.1008],14)
MoveViewPoint([849.1008],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~  Global("Machine_1","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #64244 /* ~이 고대의 기계는 잊혀진 전쟁 유물인 듯하다. 전면에 레버들이 달린 기묘한 패널을 제외하고는 기계의 대부분이 먼지로 덮여 있다. 당신이 제일 먼저 당겼던 레버는 흔적조차 찾아볼 수 없다. 그것은 사라졌다 - 마치 애당초 존재도 하지 않았던 것 같다.~ */
  IF ~~ THEN REPLY #64253 /* ~기계를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1
  SAY #64245 /* ~당신은 재빨리 'X'로 표시된 레버를 찾아서 잡아당긴다. 당신이 만지자 레버는 쉽게 움직인다, 그리고 그것은 안개가 되어 사라진다 - 당신은 심호흡을 한다, 그리고 주변의 벽들이 희미하게 사라지기 시작함에 따라 다시 현기증이 당신을 엄습한다...~ */
  IF ~  !Dead("Grace")
Global("Fortress_Grace","GLOBAL",1)
~ THEN REPLY #64254 /* ~"어디로 가는 거지 *이-*"~ */ DO ~IncrementGlobal("Fortress_Death_Counter","GLOBAL",-1)
SetGlobal("Machine_1","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1201csG0",FALSE)
~ EXIT
  IF ~  Dead("Grace")
Global("Fortress_Grace","GLOBAL",1)
~ THEN REPLY #64314 /* ~"어디로 가는 거지 *이-*"~ */ DO ~SetGlobal("Machine_1","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[849.1008],1)
TeleportParty("AR1201",[849.1008],14)
MoveViewPoint([849.1008],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64315 /* ~"어디로 가는 거지 *이-*"~ */ DO ~SetGlobal("Machine_1","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[849.1008],1)
TeleportParty("AR1201",[849.1008],14)
MoveViewPoint([849.1008],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0
  SAY #64255 /* ~당신은 재빨리 'X'로 표시된 레버를 찾아서 잡아당긴다. 당신이 만지자 레버는 쉽게 움직인다, 그리고 그것은 안개가 되어 사라진다 - 당신은 심호흡을 한다, 그러나 다른 때와는 달리... 아무런 일도 일어나지 않는다.~ */
  IF ~~ THEN JOURNAL #64260 /* ~내가 유물의 네 번째 레버를 당기자 요새의 원형 천정이 있는 곳에서 뭔가가 열린 듯했다... 아마도 출구일까? 나는 그 곳을 찾아 여기서 줄행랑을 쳐야겠다...~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #64256 /* ~마치 *뭔가가* 열린 듯 멀리서 포효가 들려 온다, 그리고 울부짖는 듯한 바람이 통로를 지나서 밀려 들어온다. 당신이 소리가 어디서 나는지 알아보려고 할 때, 당신은 자신이 분해되어 바람의 일부가 되고 있다는 사실을 갑자기 깨닫는다...~ */
  IF ~  !Dead("Grace")
Global("Fortress_Grace","GLOBAL",1)
~ THEN REPLY #64257 /* ~"*이젠* 또 무슨 일이 일어나는 거지...?!"~ */ DO ~IncrementGlobal("Fortress_Death_Counter","GLOBAL",-1)
SetGlobal("Machine_1","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1201csG0",FALSE)
~ EXIT
  IF ~  Dead("Grace")
Global("Fortress_Grace","GLOBAL",1)
~ THEN REPLY #64312 /* ~"*이젠* 또 무슨 일이 일어나는 거지...?!"~ */ DO ~SetGlobal("Machine_1","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[849.1008],1)
TeleportParty("AR1201",[849.1008],14)
MoveViewPoint([849.1008],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64313 /* ~"*이젠* 또 무슨 일이 일어나는 거지...?!"~ */ DO ~SetGlobal("Machine_1","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[849.1008],1)
TeleportParty("AR1201",[849.1008],14)
MoveViewPoint([849.1008],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
END
