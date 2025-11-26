// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDDABUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDDABUS~

IF ~  Global("Alley_Dabus_SC","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #50355 /* ~죽은 다버스의 시체가 보인다. 시체가 썩는 냄새는 가히 압도적이며, 시체의 부자연스러운 자세로 미루어 볼 때 사후 경직이 일어난지 오래된 것 같다. 하지만 왠지 당신은 이 광경에 자극을 받는다. ~ */
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #50356 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ DO ~SetGlobal("Alley_Dabus_SC","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #50370 /* ~시체가 안식을 취하도록 내버려 둔다.~ */ DO ~SetGlobal("Alley_Dabus_SC","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 7.0
  SAY #50357 /* ~몇 초 동안은 아무런 일도 일어나지 않을 것처럼 보인다. 그러다 갑자기 시체의 열린 입으로부터 숨을 헐떡이는 듯한 소리가 희미하게 나온다.~ */
  IF ~~ THEN REPLY #50358 /* ~"이보시오? 내 말이 들리오?"~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #50359 /* ~잠시 동안의 침묵이 흐른 후 시체가 갑자기 말문을 연다. "'물론 난 들을 수 있어! 난 죽었지 귀가 먹은 건 아니니까... 얼간아."[Temp Line written by Steve Bokkes]~ */
  IF ~~ THEN REPLY #50360 /* ~"긴장을 푸시오... 난 당신에 몇 가지 질문을 하려고 할 뿐이오."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #50361 /* ~질문? 내가 무슨 정보 창구처럼 보이냐, 멍청아?[Temp Line written by Steve Bokkes]~ */
  IF ~~ THEN REPLY #50362 /* ~아니 당신들 다버스들은 그림으로만 얘기해야 하는 것 아니오?[Temp Line written by Steve Bokkes]~ */ GOTO 4
  IF ~~ THEN REPLY #50369 /* ~"내가 이 빌어먹을 임신한 골목 퀘스트를 끝내고 마계구로 갈 수 있도록 당신이 어떻게 죽었는지나 말해주시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #50363 /* ~빌어먹을! 넌 정말 천치로군. 모두 다 죽음이 만국공용어란 것 정도는 알고 있어. 네가 알아듣지도 못할 텐데 그 꺼벙한 심벌들을 뱉어내는 게 무슨 의미가 있겠어? 그럼 이 퀘스트를 어떻게 해결할 거야? 게다가 이건 개발 단계에서의 대사에 불과해, 병신아![Temp Line written by Steve Bokkes]~ */
  IF ~~ THEN REPLY #50364 /* ~"내가 이 빌어먹을 임신한 골목 퀘스트를 끝내고 마계구로 갈 수 있도록 당신이 어떻게 죽었는지나 말해주시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #50365 /* ~"물론이지, 백치야. 얘기할 테니 잘 들으라고. 난 건물들이 변하는 괴현상을 조사하려고 이 골목에 왔지. 그런데 이 건물 안에 들어오니까 창이고 문이고 할 것 없이 전부 닫혀버리더라고. 나는 출구도 없이 이 곳에 갇히게 됐어. 망치로 부시고 탈출하려고 했지만, 그럴 때마다 건물이 스스로를 수리했어."~ */
  IF ~~ THEN REPLY #50366 /* ~"고맙소, 큰 도움이 되었소."~ */ DO ~SetGlobal("Know_Dead_Dabus","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #50367 /* ~천만에, 얼간아![Temp Line written by Steve Bokkes]~ */
  IF ~~ THEN REPLY #50368 /* ~떠난다.~ */ EXIT
END

IF ~  GlobalGT("Alley_Dabus_SC","GLOBAL",0)
Global("Know_Dead_Dabus","GLOBAL",0)
~ THEN BEGIN 7 // from:
  SAY #50371 /* ~죽은 다버스의 시체가 보인다. 시체가 썩는 냄새는 가히 압도적이며, 시체의 부자연스러운 자세로 미루어 볼 때 사후 경직이 일어난지 오래된 것 같다. 하지만 왠지 당신은 이 광경에 자극을 받는다. ~ */
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #50372 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 1
  IF ~~ THEN REPLY #50373 /* ~시체가 안식을 취하도록 내버려 둔다.~ */ EXIT
END

IF ~  GlobalGT("Alley_Dabus_SC","GLOBAL",0)
Global("Know_Dead_Dabus","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY #50374 /* ~죽은 다버스는 당신에게 할 말이 없다. 스티브가 최종적으로 대사를 넣으면 다시 해보슈.[Temp Line written by Steve Bokkes]~ */
  IF ~~ THEN REPLY #50375 /* ~떠난다.~ */ EXIT
END
