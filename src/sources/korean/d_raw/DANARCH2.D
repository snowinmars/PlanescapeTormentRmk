// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANARCH2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DANARCH2~

IF ~  NumTimesTalkedTo(0)
Global("Know_Anarchists","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #44366 /* ~마른 사내가 어슬렁거리고 있는 것이 보인다. 그의 길고 날렵한 손가락은 약간 떨리고 있으며, 그는 당신과 얘기할 때도 당신을 제대로 마주보지 못한다. "놀랬잖소! 난 이 근방에서 당신을 본 적이 없소. 내게 뭘... 원하시오?"~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44370 /* ~"어떤 친구가 이 곳에 아나키스트 세포가 있다고 말해주었소. 암호는 '일식'이오." ~ */ GOTO 1
  IF ~~ THEN REPLY #44371 /* ~"당신은 누구요?"~ */ GOTO 8
  IF ~~ THEN REPLY #44373 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 9
  IF ~~ THEN REPLY #44374 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 8.1 9.0 10.0
  SAY #44376 /* ~어리숙하던 그의 태도가 갑자기 사무적으로 바뀐다. "그가 그랬다... 그가 당신과 비밀의 악수도 했소? 당신의 비밀 암호 반지도 줬소? 당신은 이 세포의 축가를 알고 있소? 당신은 이러한 일들에 대한 교육을 받았소?" 그는 잠시 당신을 아래위로 훑어보더니 다시 입을 연다. "아닌 것 같군. 다음 번에는 내가 당신에게 암호를 물어보는 게 어떻겠소?" 그는 한숨을 쉰다. "무엇을 원하시오?"~ */
  IF ~~ THEN REPLY #44377 /* ~"아이템을 좀 구입하고 싶소."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44379 /* ~"나는 은신할 곳이 필요하오."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44381 /* ~"이 곳의 당신들 세포에 대해 물어보고 싶소."~ */ GOTO 3
  IF ~~ THEN REPLY #44382 /* ~"당신들은 여기서 무엇을 성취하려고 하고 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #44383 /* ~"당신은 왜 아나키스트가 되었소?"~ */ GOTO 5
  IF ~~ THEN REPLY #44384 /* ~"아무 것도 없는 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY #44386 /* ~"당신 마음에 들기를 바라겠소."~ */
  IF ~~ THEN REPLY #44387 /* ~"그래, 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 4.2 11.2
  SAY #44389 /* ~"비밀 혁명가가 되기 위한 첫 번째 조건이 뭔지 아시오?" 그는 당신이 대답을 말하려고 하는 바로 그 순간까지 기다렸다가 다시 입을 연다. "그건 그 사실을 비밀로 지키는 거요. 당신이 누가 당신을 보냈다고 하든 간에 난 당신에게 어떤 비밀도 가르쳐 주지 않겠소, 동지. 자, 이제 그건 그렇다 치고 달리 필요한 건 없소?"~ */
  IF ~~ THEN REPLY #44395 /* ~"아이템을 좀 구입하고 싶소."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44396 /* ~"나는 은신할 곳이 필요하오."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44397 /* ~"당신들은 여기서 무엇을 성취하려고 하고 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #44399 /* ~"당신은 왜 아나키스트가 되었소?"~ */ GOTO 5
  IF ~~ THEN REPLY #44400 /* ~"아무 것도 없는 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.3 3.2 11.3
  SAY #44403 /* ~"우리가 달성하려는 목적은 비밀이오. 지하 조직으로서 당연한 게 아니겠소? 당신도 그것이 결실을 맺게 되면 알게 될 거요, 하지만 가까운 시일 내에 그렇게 되리라고는 기대하지 마시오. 우리는 매우 조심스럽게 계획을 실행하고 있소. 무슨 말인지 알겠소? 자, 조심에 대한 얘기는 했으니 이제 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #44409 /* ~"아이템을 좀 구입하고 싶소."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44411 /* ~"나는 은신할 곳이 필요하오."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44412 /* ~"이 곳의 당신들 세포에 대해 물어보고 싶소."~ */ GOTO 3
  IF ~~ THEN REPLY #44414 /* ~"당신은 왜 아나키스트가 되었소?"~ */ GOTO 5
  IF ~~ THEN REPLY #44415 /* ~"아무 것도 없는 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.4 3.3 4.3 11.4
  SAY #44418 /* ~"당신 주변을 둘러보시오. 진정한 자유를 누리고 있는 자가 보이오? 누군가에 의해 억압당하지 않는 자가 있다고 생각하오? 스스로를 중요한 사람이라고 생각하는 자들도 누군가의 꼭두각시요. 누군가가 체제 전체를 붕괴시켜야만 하오. ~ */
  IF ~~ THEN REPLY #44420 /* ~"그리고 그것을 무엇으로 대체한단 말이오?"~ */ GOTO 6
  IF ~~ THEN REPLY #44421 /* ~"충분한 이유인 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #44423 /* ~"그거 내가 판단할 일이 아니오. 나는 파괴를 하여 사람들이 그 잔해를 줍도록 하는 것이 전문이오. 나는 다른 사람들이 창조를 할 수 있도록 하기 위해 파괴를 하오. 우리는 모두 전공 분야가 있소. 나는 낙관론자요. 나는 사람들이 언젠가는 좋은 것을 창출할 거라고 믿소. 하지만 그 때까지는 나는 계속 파괴할 것이오."~ */
  IF ~~ THEN REPLY #44424 /* ~"그럼 어느 것이 선인지는 누가 결정하오? 왜 당신들만 특별하다고 생각하는 거요?"~ */ GOTO 7
  IF ~~ THEN REPLY #44426 /* ~"열심히 하시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #44427 /* ~"내가 남들과 다른 점은 내게는 현상을 바꾸려고 노력할 각오가 있다는 것이오. 내게 무엇이 옳고 그른지 판단할 수 있는 자격이 있는 건 내가 평등을 추구하기 때문이오. 평범한 벌통 주민이 부유한 귀족과 같은 대우를 받는 날이 올 때까지 나는 내 몫을 다할 거요."~ */
  IF ~~ THEN REPLY #44428 /* ~"좋소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.1 9.1 10.1
  SAY #44429 /* ~"나는 코낼이오. 난 여기서 일하오."~ */
  IF ~~ THEN REPLY #44430 /* ~"그리고 이 곳은 뭐 하는 곳이오?"~ */ GOTO 9
  IF ~  Global("Know_An_Pass","GLOBAL",1)
~ THEN REPLY #44431 /* ~"어떤 친구가 이 곳에 아나키스트 세포가 있다고 말해주었소. 암호는 '일식'이오." ~ */ GOTO 1
END

IF ~~ THEN BEGIN 9 // from: 0.2 8.0 10.2
  SAY #44433 /* ~그는 당신이 농담을 하는 건지 보려고 당신을 조심스럽게 살핀다. "이 곳은 아홉 번째 세계의 금고로 창고요. 들어올 때 간판도 읽지 않았소?"~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
~ THEN REPLY #44435 /* ~"어떤 친구가 이 곳에 아나키스트 세포가 있다고 말해주었소. 암호는 '일식'이오." ~ */ GOTO 1
  IF ~~ THEN REPLY #44436 /* ~"별로 유심히 보지 않았소. 당신은 누구요?"~ */ GOTO 8
  IF ~~ THEN REPLY #44438 /* ~대답을 해주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Know_Anarchists","GLOBAL",0)
~ THEN BEGIN 10 // from:
  SAY #44440 /* ~"또 당신이오? 이 곳에서 뭘 원하면 출구 앞에 있는 머리와 얘기하시오."~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
~ THEN REPLY #44442 /* ~"어떤 친구가 이 곳에 아나키스트 세포가 있다고 말해주었소. 암호는 '일식'이오." ~ */ GOTO 1
  IF ~~ THEN REPLY #44443 /* ~"당신은 누구요?"~ */ GOTO 8
  IF ~~ THEN REPLY #44444 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 9
  IF ~~ THEN REPLY #44446 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~  GlobalGT("Know_Anarchists","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #44448 /* ~"무슨 고민이라도 있소? 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #44449 /* ~"아이템을 좀 구입하고 싶소."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44451 /* ~"나는 은신할 곳이 필요하오."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44452 /* ~"이 곳의 당신들 세포에 대해 물어보고 싶소."~ */ GOTO 3
  IF ~~ THEN REPLY #44453 /* ~"당신들은 여기서 무엇을 성취하려고 하고 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #44454 /* ~"당신은 왜 아나키스트가 되었소?"~ */ GOTO 5
  IF ~~ THEN REPLY #44456 /* ~"아무 것도 없는 것 같소. 안녕히 계시오."~ */ EXIT
END
