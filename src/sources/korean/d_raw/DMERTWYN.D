// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERTWYN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERTWYN~

IF ~  Global("Mertwyn","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2960 /* ~이 사내가 비틀거리며 걸으며, 수시로 여기저기에 부딪치고, 또 허공을 멍하니 바라보는 것을 볼 때... 그에게 뭔가 문제가 있다는 건 명백하다. 그에게 가까이 다가가자 당신은 그의 문제가 무엇인지 알게 된다. 그에게는 머리가 없다. 그의 어깨 위에 있는 건 정교하게 만들어진 가짜 머리에 불과하다.~ */
  IF ~  !PartyHasItem("Mertwyn")
~ THEN REPLY #2961 /* ~"안녕하시오...?"~ */ DO ~SetGlobal("Mertwyn","GLOBAL",1)
~ GOTO 1
  IF ~  PartyHasItem("Mertwyn")
Global("Mertwyn_Head","GLOBAL",0)
~ THEN REPLY #42316 /* ~"안녕하시오...?"~ */ DO ~SetGlobal("Mertwyn","GLOBAL",1)
~ GOTO 1
  IF ~  PartyHasItem("Mertwyn")
GlobalGT("Mertwyn_Head","GLOBAL",0)
~ THEN REPLY #42317 /* ~"이것이 머트윈의 몸이 틀림없군..."~ */ EXTERN ~DMHEAD~ 12
  IF ~~ THEN REPLY #42318 /* ~그것을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 17.0 17.1
  SAY #42320 /* ~머리 없는 동체는 더듬거리는 것를 잠시 멈춘다. 그것은 당신이 정확히 어디쯤 있는지 파악하려는 듯 손을 내민다.~ */
  IF ~~ THEN REPLY #42321 /* ~그것이 당신을 만지도록 한다.~ */ GOTO 2
  IF ~~ THEN REPLY #42322 /* ~그것의 손을 잡는다.~ */ GOTO 3
  IF ~~ THEN REPLY #42323 /* ~그것으로부터 물러선다.~ */ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #42324 /* ~잠시 후 그것의 손가락이 당신 팔뚝을 스친다. 그것은 당신의 팔을 꽉 잡는다, 그리고 당신의 어깨와 머리를 차례로 만져 본다. 그것은 당신 얼굴과 머리를 더듬으면서 뭔가를 확인이라도 하듯 손으로 당신의 목을 스치고 지나간다. 마침내 그것은 당신의 손을 잡고는 인사의 표시로 힘차게 악수한다. 당신은 그것의 피부가 차갑고 약간 끈끈하다는 사실을 눈치챈다. ~ */
  IF ~~ THEN REPLY #42325 /* ~"내 말을 알아들을 수 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #42326 /* ~"이만 실례하도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #42327 /* ~머리 없는 동체는 갑자기 뛰어오르더니 당신의 손을 꽉 잡고는 악수한다... 머리 없는 동체는 친절한 것 같다. 그것의 악력은 상당히 세나, 피부는 차갑고 약간 끈끈하다.~ */
  IF ~~ THEN REPLY #42328 /* ~"당신 머리는 어디 있소. 내 말을 알아들을 수나 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #42329 /* ~"이만 실례하도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #42330 /* ~동체는 일련의 손짓을 하더니 당신 대답을 기다린다. 그것은 무슨 질문을 하고 있는 것 같다. ~ */
  IF ~~ THEN REPLY #42331 /* ~"뭐? 무슨 말인지 모르겠소..."~ */ GOTO 5
  IF ~~ THEN REPLY #42332 /* ~"이만 실례하도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #42333 /* ~머리 없는 동체는 발로 바닥을 두드리면서 '의두'의 턱을 긁는다. 갑자기 그것은 무슨 생각이 난 듯 손가락을 들어 올려서는 당신을 가리킨다, 그리고 자신의 목제 의두를 가리키더니 다시 당신을 가리킨다. 그 다음에 그것은 양손으로 자신의 목제 의두를 가리키며 어깨를 으쓱한다, 그리고 당신을 가리킨다.~ */
  IF ~~ THEN REPLY #42334 /* ~"어, 아니오... 난 당신 머리를 본 적이 없소."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 1.2 5.0
  SAY #42335 /* ~머리 없는 동체는 어깨를 으쓱하고 몸을 약간 구부린다, 그리고 돌아서서 걸어간다.~ */
  IF ~~ THEN REPLY #42336 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #42337 /* ~동체는 머트윈의 머리가 담긴 강철 상자를 향해 손을 내밀며 당신에게 발을 질질 끌며 다가온다. ~ */
  IF ~~ THEN REPLY #42338 /* ~머트윈의 몸이 자신의 머리를 가져가도록 내버려 둔다. ~ */ DO ~AddexperienceParty(8000)
SetGlobal("Mertwyn","GLOBAL",2)
DestroyPartyItem("Mertwyn",FALSE)
GivePartyGold(200)
~ JOURNAL #56738 /* ~나는 머트윈의 몸과 머리를 재결합시켰다. 둘은 서로를 나시 만나게 되어 기쁜 듯했다. ~ */ GOTO 8
  IF ~~ THEN REPLY #42339 /* ~머리를 몸으로부터 떼어 놓는다.~ */ EXTERN ~DMHEAD~ 13
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #42340 /* ~"아, 훨씬 낫군. 고맙소! 내가 없어서 내 동체가 안절부절 했던 것 같소." 동체는 강철 상자를 꼭 껴안는다. "그래, 나도 자네가 그리웠네..." 동체는 상자를 옆구리에 끼고 머리(?)를 숙인다. "아, 그리고 당신께는 수고를 해주신 데 대한 사례를 해야 할 것 같소. 어디 내게 지금 뭐가 있는지 봅시다..." 동체는 주머니 속을 더듬는다, 그리고 아무 것도 없자 이번에는 튜닉 속을 뒤진다. 마침내 그것은 당신에게 몇 줌의 동전을 내민다.~ */
  IF ~~ THEN REPLY #42341 /* ~"고맙소, 머트윈. 물어볼 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #42342 /* ~"고맙소. 안녕히 계시오, 머트윈."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 10.1 11.0 12.1 13.0 14.2 15.1 16.0 18.0
  SAY #42343 /* ~"물론이오. 뭐든지 물어보시오!"~ */
  IF ~~ THEN REPLY #42344 /* ~"어떻게... 그런 꼴이 되었소?"~ */ GOTO 10
  IF ~~ THEN REPLY #42345 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 12
  IF ~~ THEN REPLY #42346 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 14
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #42347 /* ~"당신은 래벌 퍼즐웰에 대해 무엇을 아시오?"~ */ GOTO 16
  IF ~~ THEN REPLY #42348 /* ~"관두시오. 머트윈. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #42349 /* ~"나도 잘 모르겠소... 내 동체는 나를 강의실들 중 한 곳에 내려놓았소, 그리고 내가 정신을 차리고 보니 누군가 나를 가지고 달아난 게 아니겠소! 그 다음에 내가 기억하는 건 당신이 날 주운 사실뿐이오."~ */
  IF ~~ THEN REPLY #42350 /* ~"내 말은 어떻게 해서 당신 *머리*를 잃게 되었느냐는 뜻이오."~ */ GOTO 11
  IF ~~ THEN REPLY #42351 /* ~"다른 질문이 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #42352 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #42353 /* ~동체는 눈에 보이게 경직한다. "아, 우린 그 일에 대해서는 얘기하고 싶지 않소. 정말 끔찍한 일이었소... 하지만 과거는 과거요... 구태여 들추어 낼 필요는 없소. 내가 상자 속에 들어 있는 건 내 머리가 내 몸만큼 보기가 좋지 않기 때문이라고만 말해 두겠소."~ */
  IF ~~ THEN REPLY #42354 /* ~"다른 질문이 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #42355 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1
  SAY #42356 /* ~"나는 시 공회당 주변을 어슬렁거리오. 난 센세이트는 아니지만, 여러 종류의 사람들이 무리를 지어 다니는 것을 보는 걸 좋아하오.~ */
  IF ~~ THEN REPLY #42357 /* ~"센세이트?"~ */ GOTO 13
  IF ~~ THEN REPLY #42358 /* ~"다른 질문이 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #42359 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 14.1 15.0
  SAY #42360 /* ~동체는 강철 상자를 부드럽게 흔들어 안의 머리가 고개를 '끄덕이도록' 한다. "그렇소... 감각의 공동체. 그들은 모든 것을 체험하려고 분주하게 돌아다니고 있소, 계속 그러가 보면 종국에는 다원 우주의 중대한 비밀을 발견하게 될 거라고 생각하면서 말이오." 동체는 어깨를 으쓱한다.~ */
  IF ~~ THEN REPLY #42361 /* ~"다른 질문이 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #42362 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.2
  SAY #42363 /* ~머트윈은 혼란스러워 하는 듯하다. "시 공회당에 대해서는 누구나 다 알지 않소? 흠... 시 공회당은 센세이트의 본부요, 하지만 이보다 더 중요한 건 이 곳에는 그들의 감각 체험실이 있다는 점이오."~ */
  IF ~~ THEN REPLY #42364 /* ~"이러한 감각 체험실에 대하여 얘기해주시오..."~ */ GOTO 15
  IF ~~ THEN REPLY #42365 /* ~"센세이트?"~ */ GOTO 13
  IF ~~ THEN REPLY #42366 /* ~"다른 질문이 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #42367 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #42368 /* ~"이 곳의 문지기가 나보다 더 잘 설명해 줄 수 있을 거요... 어쨌든 감각 체험실은 일단 기록된 체험을 재생할 수 있는 마법의 돌들이 보관된 방이오. 일반인용 감각 체험실은 약간의 사용료만 내면 이용할 수 있지만, 당원 전용 감각 체험실은 감각의 공동체의 맴버, 즉 센세이트에게만 개방되오."~ */
  IF ~~ THEN REPLY #42369 /* ~"센세이트?"~ */ GOTO 13
  IF ~~ THEN REPLY #42370 /* ~"다른 질문이 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #42371 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.3
  SAY #42372 /* ~"래벌? 그런 여자에 대해선 기억이 나지 않소..."~ */
  IF ~~ THEN REPLY #42373 /* ~"그럼 다른 질문을 하고 싶소..."~ */ GOTO 9
  IF ~~ THEN REPLY #42374 /* ~"그렇다면 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Mertwyn","GLOBAL",1)
~ THEN BEGIN 17 // from:
  SAY #42375 /* ~목이 잘린 남자는 아직도 비틀거리며 벽이나 기둥을 가리지 않고 충돌하고 있다. 그의 목제 의두는 그가 앞뒤로 비틀거림에 따라 불안하게 흔들리고 있다.~ */
  IF ~  !PartyHasItem("Mertwyn")
~ THEN REPLY #42376 /* ~"안녕하시오...?"~ */ DO ~SetGlobal("Mertwyn","GLOBAL",1)
~ GOTO 1
  IF ~  PartyHasItem("Mertwyn")
Global("Mertwyn_Head","GLOBAL",0)
~ THEN REPLY #42377 /* ~"안녕하시오...?"~ */ DO ~SetGlobal("Mertwyn","GLOBAL",1)
~ GOTO 1
  IF ~  PartyHasItem("Mertwyn")
GlobalGT("Mertwyn_Head","GLOBAL",0)
~ THEN REPLY #42378 /* ~"이것이 머트윈의 몸이 틀림없군..."~ */ EXTERN ~DMHEAD~ 12
  IF ~~ THEN REPLY #42379 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~  Global("Mertwyn","GLOBAL",2)
~ THEN BEGIN 18 // from:
  SAY #42381 /* ~머트윈의 동체는 이 곳에 서서 그의 머리가 담긴 강철 상자를 손가락으로 한가롭게 두드리고 있다. 당신이 다가가자 그것은 상자를 앞으로 기울인다. "다시 만나 반갑소!"~ */
  IF ~~ THEN REPLY #42382 /* ~"안녕하시오. 물어볼 것들이 좀 있소, 머트윈..."~ */ GOTO 9
  IF ~~ THEN REPLY #42383 /* ~"그냥 지나던 길이었소, 머트윈. 안녕히 계시오."~ */ EXIT
END
