// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDEVORE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDEVORE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48410 /* ~키가 작은 사내가 보인다. 그의 눈은 억눌린 분노로 이글거리고 있다. 그는 노동자들에 소리를 질러 명령을 내리면서 조급하게 당신 쪽으로 고개를 돌린다. "무엇을 원하시오?"~ */
  IF ~~ THEN REPLY #48411 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #48412 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 4
  IF ~~ THEN REPLY #48413 /* ~"커스트에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ GOTO 5
  IF ~  Global("Anarchist_Treasure","GLOBAL",1)
~ THEN REPLY #48414 /* ~"나는 그림스칼프와 얘기를 했소. 그는 당신이 자기 물건을 가지고 있다고 했소."~ */ DO ~SetGlobal("Anarchist_Treasure","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 6
  IF ~~ THEN REPLY #48415 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Anarchist_Treasure","GLOBAL",2)
~ THEN BEGIN 1 // from: 8.0
  SAY #48416 /* ~"아무 것도 없소 친구. 내가 이 작전을 평화롭게 수행할 수 있도록 해주시오, 알겠소? 무슨 일이 일어나면 여기로 오시오, 우리가 도와줄 테니. 하지만 지금 현재로서는 다른 사람들이 우리가 함께 있는 것을 보는 것은 바람직하지 않소."~ */
  IF ~~ THEN REPLY #48417 /* ~"좋소. 안녕히 계시오."~ */ JOURNAL #47845 /* ~창고의 상인인 디보어는 내게 만약 뭔가 잘못되면 창고로 돌아오라고 말했다. 대신 나는 그를 그냥 내버려두기로 하였다. ~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #48418 /* ~"뭐, 또 당신인가? 뭘 원하시오 ?"~ */
  IF ~~ THEN REPLY #48419 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #48420 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 4
  IF ~~ THEN REPLY #48421 /* ~"커스트에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ GOTO 5
  IF ~  Global("Anarchist_Treasure","GLOBAL",1)
~ THEN REPLY #48422 /* ~"나는 그림스칼프와 얘기를 했소. 그는 당신이 자기 물건을 가지고 있다고 했소."~ */ DO ~SetGlobal("Anarchist_Treasure","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 6
  IF ~~ THEN REPLY #48423 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 2.0 7.0
  SAY #48424 /* ~"나는 디보어요. 여긴 내 창고요, 그리고 당신은 내 시간을 낭비하고 있소."~ */
  IF ~~ THEN REPLY #48425 /* ~"좋소. 그 밖에도 물어볼 것들이 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #48426 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 2.1 7.1
  SAY #48427 /* ~그는 크게 한숨을 쉰다. "여긴 창고요. 이 곳에는 물건을 보관하오 - 무기, 돈, 술, 옷감, 식료품 - 사람이 필요로 하는 것이라면 뭐든지. 당신도 창고에 대해서는 들어보지 않았소?"~ */
  IF ~~ THEN REPLY #48428 /* ~"물론이오. 그 밖에도 물어볼 것들이 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #48429 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 2.2 7.2
  SAY #48430 /* ~"이 곳은 사람들이 살려고 발버둥치는 곳이오. 우리는 자신이 할 수 있는 일을 해서 삶을 영위하고 있으나, 때로는 우리가 하루종일 하는 일이라고는 자기네 질문에 대답하려고 기다리고 있는 것뿐이라고 착각하는 모험자들이라는 족속들 때문에 방해를 받기도 하오."~ */
  IF ~~ THEN REPLY #48431 /* ~"좋소, 그 밖에도 물어볼 것들이 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #48432 /* ~"무슨 말인지 알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.3 2.3 7.3
  SAY #48433 /* ~"그림스캘프? 그가 아직 죽지 않았단 말이오? 내가 그를 마지막으로 보았을 때 그는... 아, 알겠소. 그는 내게 자기 몫을 내놓으라고 협박하거나... 정중히 부탁하려고 당신을 보낸 것이군... 아니면 시길의 아나키스트 사이에서 무슨 일이라도 벌어지고 있소? 그는 늘 은밀하게 계획을 지키곤 했소. 우리... 아니... 그들이, 헤, 헤... 그에게 칼침을 몇 발 놓을 수 있었던 건 어디까지나 우연이었소. 가서 그의 몫을 가져올 테니, 잠깐 기다리시오."~ */
  IF ~~ THEN REPLY #48434 /* ~"서두르시오."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveGoldForce(250)
GiveItemCreate("OgrGaunt",Protagonist,1,0,0)
~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 3.0 4.0 5.0
  SAY #48435 /* ~그는 한숨을 쉰다. "뭐요?"~ */
  IF ~~ THEN REPLY #48436 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #48437 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 4
  IF ~~ THEN REPLY #48438 /* ~"커스트에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ GOTO 5
  IF ~  Global("Anarchist_Treasure","GLOBAL",1)
~ THEN REPLY #48439 /* ~"나는 그림스칼프와 얘기를 했소. 그는 당신이 자기 물건을 가지고 있다고 했소."~ */ DO ~SetGlobal("Anarchist_Treasure","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 6
  IF ~~ THEN REPLY #48443 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #48440 /* ~그는 동전 한 자루와 한 쌍의 잔인하게 생긴 건틀릿을 가지고 돌아온다. 그는 주변을 불안하게 둘러보면서 말한다. "자, 이것들을 받으시오. 그럼 이제 여기서 나가 주시오."~ */
  IF ~~ THEN REPLY #48441 /* ~"당신에게 할 질문이 몇 개 더 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #48442 /* ~"안녕히 계시오."~ */ EXIT
END
