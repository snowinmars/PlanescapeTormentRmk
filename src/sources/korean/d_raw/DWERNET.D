// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWERNET.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DWERNET~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58937 /* ~거구의 깡패가 보인다. 흉터투성이 얼굴이 폭력으로 얼룩진 그의 과거를 잘 말해주고 있으며, 그의 목소리는 해저에서 자갈을 가는 소리 같다. "뭘 원하오?"~ */
  IF ~  Global("Caretaker","GLOBAL",2)
~ THEN REPLY #66327 /* ~"당신과 쓰레기 하치장 관리인인 카이스에 대해 얘기하려고 왔소."~ */ DO ~SetGlobal("Caretaker","GLOBAL",3)
~ GOTO 2
  IF ~~ THEN REPLY #66328 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #66329 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #66324 /* ~"또 당신이야?" 그는 내뱉듯 말한다.~ */
  IF ~  Global("Caretaker","GLOBAL",2)
~ THEN REPLY #66330 /* ~"당신과 쓰레기 하치장 관리인인 카이스에 대해 얘기하려고 왔소."~ */ DO ~SetGlobal("Caretaker","GLOBAL",3)
~ GOTO 2
  IF ~~ THEN REPLY #66331 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #66332 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #66325 /* ~"아. 그 불쌍한 작자가 우리가 돈을 가지러 갈 거라는 소릴 들은 모양이지?" 그는 몸을 긁는다. "가서 그에게 돈을 내놓지 않으면 죽은 목숨이라고 전해. 이제 꺼져."~ */
  IF ~~ THEN REPLY #66333 /* ~"우선 몇 가지 질문을 하고 싶소..."~ */ GOTO 3
  IF ~~ THEN REPLY #66334 /* ~"좋소. 안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #66326 /* ~"난 염병할 가이드가 아냐. 질문할 게 있으면 관심 있는 작자에게 가서 물어봐. 난 아니니까. 부하를 시켜 널 손보기 전에 어서 꺼져."~ */
  IF ~  Global("Caretaker","GLOBAL",3)
~ THEN REPLY #66335 /* ~"그럼 좋소. 안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
  IF ~  GlobalLT("Caretaker","GLOBAL",3)
~ THEN REPLY #66336 /* ~"그럼 좋소. 안녕히 계시오."~ */ EXIT
END
