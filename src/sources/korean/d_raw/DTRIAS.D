// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTRIAS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTRIAS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedTo(0)
GlobalLT("Trias_Sword","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2995 /* ~당신 앞에 서 있는 존재는 가장 순수한 상아와도 같은 피부와 눈부실 정도로 하얀 머리를 가지고 있다. 그의 날개는 타버리고 깃털은 다 빠져 버렸으나, 그는 여전히 사랑과 평화의 오라를 방출하고 있다. 그는 명상을 하는 것처럼 서 있으며, 당신의 존재를 눈치채지 못하는 듯하다. 그의 팔뚝은 그가 서 있는 단에 고정된 사슬로 단단히 묶여 있다. 당신에게는 전에 디바를 본 기억이 없으나, 당신은 마음 속으로 이 존재가 어떤 존재인지를 알 수가 있다. ~ */
  IF ~  NearbyDialog("DGrace")
NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #2996 /* ~"나는 당신을 찾고 있었소, 디바."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ GOTO 114
  IF ~  NearbyDialog("DGrace")
!NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #54306 /* ~"나는 당신을 찾고 있었소, 디바."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ GOTO 115
  IF ~  NearbyDialog("DGrace")
NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
~ THEN REPLY #54307 /* ~"나는 당신을 찾고 있었소, 디바."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ JOURNAL #54312 /* ~나는 래벌이 얘기한 천사 "트리어스"를 찾아냈는데 그는 커스트에서 감금된 상태였다. 주민들이 천사를 그런 식으로 다루다니... 정말 이 곳은 살인자들과 배신자들의 도시인 모양이다. 그렇다고 이 곳이 내가 지금까지 거쳐온 다른 곳들과 크게 다르다는 건 아니지만.~ */ GOTO 125
  IF ~  NearbyDialog("DGrace")
!NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
~ THEN REPLY #54308 /* ~"나는 당신을 찾고 있었소, 디바."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ JOURNAL #54312 /* ~나는 래벌이 얘기한 천사 "트리어스"를 찾아냈는데 그는 커스트에서 감금된 상태였다. 주민들이 천사를 그런 식으로 다루다니... 정말 이 곳은 살인자들과 배신자들의 도시인 모양이다. 그렇다고 이 곳이 내가 지금까지 거쳐온 다른 곳들과 크게 다르다는 건 아니지만.~ */ GOTO 126
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
~ THEN REPLY #54309 /* ~"나는 당신을 찾고 있었소, 디바."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ GOTO 116
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DMorte")
NearbyDialog("DDakkon")
~ THEN REPLY #54310 /* ~"나는 당신을 찾고 있었소, 디바."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ GOTO 116
  IF ~  !NearbyDialog("DGrace")
!NearbyDialog("DMorte")
~ THEN REPLY #54311 /* ~"나는 당신을 찾고 있었소, 디바."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ GOTO 4
END

IF WEIGHT #1 ~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedToGT(0)
Global("Trias_Sword","GLOBAL",0)
!NearbyDialog("DGrace")
~ THEN BEGIN 1 // from:
  SAY #54313 /* ~"뭘 원하시오, 인간? 뜻하는 바를 말하고 떠나시오."~ [TTB005] */
  IF ~~ THEN REPLY #54314 /* ~"당신에게 질문할 것들이 좀 있소..."~ */ GOTO 10
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54315 /* ~"당신 칼을 가져왔소."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #54316 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedToGT(0)
Global("Trias_Sword","GLOBAL",1)
!NearbyDialog("DGrace")
~ THEN BEGIN 2 // from:
  SAY #54317 /* ~"무슨 용건이오, 인간?"~ [TTB002] */
  IF ~~ THEN REPLY #54318 /* ~"당신에게 질문할 것들이 좀 있소..."~ */ GOTO 117
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54319 /* ~"당신 칼을 가져왔소."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #54320 /* ~"아무 것도 아니오. 잘 있으시오."~ */ GOTO 117
END

IF WEIGHT #3 ~  Global("Current_Area","GLOBAL",702)
Global("Trias_Sword","GLOBAL",2)
~ THEN BEGIN 3 // from:
  SAY #54321 /* ~"내 자유를 찾아 주어 고맙소. 큰 신세를 졌소." 그의 타버린 날개가 퍼덕거린다. "내게 무슨 부탁을 하고 싶소, 인간? 불행히도 내게는 당신에게 줄 만한 것이 별로 없소."~ [TTB098] */
  IF ~~ THEN REPLY #54322 /* ~"당신에게 질문할 것들이 많소..."~ */ DO ~SetGlobal("Trias_Sword","GLOBAL",3)
~ GOTO 53
  IF ~~ THEN REPLY #54323 /* ~"좋소, 안녕히 계시오."~ */ DO ~SetGlobal("Trias_Sword","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.6
  SAY #54324 /* ~디바는 고개를 쳐들고 당신을 바라본다. 그의 목소리는 맑고 아름다운 선율을 지녔다. "내게 뭘 원하시오, 인간? 당신 의중을 말하고, 내가 낙원의 추억에 잠길 수 있도록 날 그냥 내버려 두시오."~ [TTB004] */
  IF ~~ THEN REPLY #54325 /* ~"마귀할멈 래벌이 내게 당신을 찾아가 보라고 했소."~ */ JOURNAL #54312 /* ~나는 래벌이 얘기한 천사 "트리어스"를 찾아냈는데 그는 커스트에서 감금된 상태였다. 주민들이 천사를 그런 식으로 다루다니... 정말 이 곳은 살인자들과 배신자들의 도시인 모양이다. 그렇다고 이 곳이 내가 지금까지 거쳐온 다른 곳들과 크게 다르다는 건 아니지만.~ */ GOTO 12
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54326 /* ~"나는 이 곳을 열자 돌기 시작한 역병에 대한 소문을 들었소."~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ JOURNAL #54312 /* ~나는 래벌이 얘기한 천사 "트리어스"를 찾아냈는데 그는 커스트에서 감금된 상태였다. 주민들이 천사를 그런 식으로 다루다니... 정말 이 곳은 살인자들과 배신자들의 도시인 모양이다. 그렇다고 이 곳이 내가 지금까지 거쳐온 다른 곳들과 크게 다르다는 건 아니지만.~ */ GOTO 13
  IF ~~ THEN REPLY #54327 /* ~"여기는 대체 어떤 곳이오?"~ */ JOURNAL #54312 /* ~나는 래벌이 얘기한 천사 "트리어스"를 찾아냈는데 그는 커스트에서 감금된 상태였다. 주민들이 천사를 그런 식으로 다루다니... 정말 이 곳은 살인자들과 배신자들의 도시인 모양이다. 그렇다고 이 곳이 내가 지금까지 거쳐온 다른 곳들과 크게 다르다는 건 아니지만.~ */ GOTO 14
  IF ~~ THEN REPLY #54328 /* ~"당신은 누구요?"~ */ JOURNAL #54312 /* ~나는 래벌이 얘기한 천사 "트리어스"를 찾아냈는데 그는 커스트에서 감금된 상태였다. 주민들이 천사를 그런 식으로 다루다니... 정말 이 곳은 살인자들과 배신자들의 도시인 모양이다. 그렇다고 이 곳이 내가 지금까지 거쳐온 다른 곳들과 크게 다르다는 건 아니지만.~ */ GOTO 15
  IF ~~ THEN REPLY #54329 /* ~"낙원의 기억들?"~ */ JOURNAL #54312 /* ~나는 래벌이 얘기한 천사 "트리어스"를 찾아냈는데 그는 커스트에서 감금된 상태였다. 주민들이 천사를 그런 식으로 다루다니... 정말 이 곳은 살인자들과 배신자들의 도시인 모양이다. 그렇다고 이 곳이 내가 지금까지 거쳐온 다른 곳들과 크게 다르다는 건 아니지만.~ */ GOTO 16
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54871 /* ~"이것이 당신 칼이오? 이것은 감옥의 중심부에 있었소."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ JOURNAL #54312 /* ~나는 래벌이 얘기한 천사 "트리어스"를 찾아냈는데 그는 커스트에서 감금된 상태였다. 주민들이 천사를 그런 식으로 다루다니... 정말 이 곳은 살인자들과 배신자들의 도시인 모양이다. 그렇다고 이 곳이 내가 지금까지 거쳐온 다른 곳들과 크게 다르다는 건 아니지만.~ */ GOTO 11
  IF ~~ THEN REPLY #54872 /* ~"관두시오. 그럼 안녕히 계시오."~ */ JOURNAL #54312 /* ~나는 래벌이 얘기한 천사 "트리어스"를 찾아냈는데 그는 커스트에서 감금된 상태였다. 주민들이 천사를 그런 식으로 다루다니... 정말 이 곳은 살인자들과 배신자들의 도시인 모양이다. 그렇다고 이 곳이 내가 지금까지 거쳐온 다른 곳들과 크게 다르다는 건 아니지만.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 114.0
  SAY #54332 /* ~디바는 고개를 돌려 모트를 바라본다. "당신으로부터는 베이터의 악취가 나오, 해골."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 559
END

IF ~~ THEN BEGIN 6 // from: 115.0
  SAY #54333 /* ~디바는 고개를 돌려 모트를 바라본다. "당신으로부터는 베이터의 악취가 나오, 해골."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 560
END

IF ~~ THEN BEGIN 7 // from: 116.0
  SAY #54363 /* ~디바는 고개를 돌려 모트를 바라본다. "당신으로부터는 베이터의 악취가 나오, 해골."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 561
END

IF ~~ THEN BEGIN 8 // from:
  SAY #54364 /* ~"당신은 정말 역겨운 친구를 지니고 있소, 인간... 하지만 내게 질문할 것을 하고, 내가 낙원의 추억에 잠길 수 있도록 날 그냥 내버려 두시오."~ */
  IF ~~ THEN REPLY #54365 /* ~"마귀할멈 래벌이 내게 당신을 찾아가 보라고 했소."~ */ GOTO 12
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54366 /* ~"나는 이 곳을 열자 돌기 시작한 역병에 대한 소문을 들었소."~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #54367 /* ~"여기는 대체 어떤 곳이오?"~ */ GOTO 14
  IF ~~ THEN REPLY #54368 /* ~"당신은 누구요?"~ */ GOTO 15
  IF ~~ THEN REPLY #54369 /* ~"낙원의 기억들?"~ */ GOTO 16
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54370 /* ~"이것이 당신 칼이오? 이것은 감옥의 중심부에 있었소."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #54371 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #54372 /* ~"감히 *내* 앞에 *타나리*를 데려온 거요?"~ */
  IF ~~ THEN REPLY #54373 /* ~"날개 때문에 눈치챘소?"~ */ GOTO 33
  IF ~~ THEN REPLY #54374 /* ~"그렇소. 뭐 잘못된 거라도 있소?"~ */ GOTO 33
END

IF ~~ THEN BEGIN 10 // from: 1.0 13.2 14.4 16.0 22.1 23.3 24.3 26.2 27.2 28.0 29.2 30.2 31.2 32.1 117.0 117.1
  SAY #54375 /* ~"또 다른 부탁?"~ */
  IF ~~ THEN REPLY #54376 /* ~"마귀할멈 래벌이 내게 당신을 찾아가 보라고 했소."~ */ GOTO 12
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54377 /* ~"나는 이 곳을 열자 돌기 시작한 역병에 대한 소문을 들었소."~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #54378 /* ~"여기는 대체 어떤 곳이오?"~ */ GOTO 14
  IF ~~ THEN REPLY #54379 /* ~"당신은 누구요?"~ */ GOTO 15
  IF ~~ THEN REPLY #54380 /* ~"낙원의 기억들에 대해서 뭐라고 얘기했소?"~ */ GOTO 16
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54381 /* ~"이것이 당신 칼이오? 이것은 감옥의 중심부에 있었소."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #54382 /* ~"당신 날개는 어떻게 해서 타버리게 되었소?"~ */ GOTO 28
  IF ~~ THEN REPLY #54383 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.1 2.1 4.5 8.5 10.5 21.0 117.2
  SAY #54384 /* ~그는 잠시 충격을 받은 것처럼 보인다. "천상계의 화염? 내 칼을 되찾았소? 날 풀어 주겠소? 그럼 사슬을 내려치시오!"~ */
  IF ~~ THEN REPLY #54385 /* ~"우선 질문할 것들이 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #54386 /* ~사슬을 내려친다.~ */ GOTO 20
  IF ~~ THEN REPLY #54387 /* ~디바를 내려친다.~ */ GOTO 19
  IF ~~ THEN REPLY #54388 /* ~"아직 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.0 8.0 10.0
  SAY #54389 /* ~"래벌... 래벌... 그녀의 이름은 내 기억 속에서 희미한 불꽃을 일으키오, 하지만... 아니오, 사라졌소. 이 사슬들은 스틱스의 음산한 강물과도 같소 - 그것들이 날 더 오랫동안 속박하면 할수록 내 기억도 그만큼 사라지오. 만약 내가 자유를 되찾을 수 있다면 당신 질문에 만족스럽게 대답할 수 있을 것이오."~ */
  IF ~~ THEN REPLY #54390 /* ~"어떻게 하면 당신을 해방시킬 수가 있소?"~ */ DO ~SetGlobal("Trias_Sword","GLOBAL",1)
~ JOURNAL #54392 /* ~트리스트는 내게 자신은 친절한 행위(이 경우에는 그의 칼을 되찾아 와서 그를 묶고 있는 사슬을 내려치는 행위)에 의해서만 해방될 수 있다고 말했다.  ~ */ GOTO 21
  IF ~~ THEN REPLY #54391 /* ~"그럼 나중에 다시 오겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 4.1 8.1 10.1
  SAY #54393 /* ~"자업자득이오. 나를 묶을 이 사슬을 만들 때, 그들은 고리들을 신랄함과 배신으로 담금질했소. 그들의 근시안적 사고가 그들의 파멸의 원흉이오. 만약 그들이 내 경고에 귀를 기울였다면, 이런 일은 일어나지 않았을 것이오." 그의 눈이 큰 슬픔으로 가득 찬다. "내 가슴은 그들을 동정하오."~ */
  IF ~~ THEN REPLY #54394 /* ~"당신은 어떻게 여기에 오게 되었소?"~ */ GOTO 22
  IF ~~ THEN REPLY #54395 /* ~"어떻게 하면 이 사슬을 끊고 역병을 물러가게 할 수가 있소?"~ */ JOURNAL #54392 /* ~트리스트는 내게 자신은 친절한 행위(이 경우에는 그의 칼을 되찾아 와서 그를 묶고 있는 사슬을 내려치는 행위)에 의해서만 해방될 수 있다고 말했다.  ~ */ GOTO 21
  IF ~~ THEN REPLY #54396 /* ~"당신에게 물어보고 싶은 것들이 더 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #54397 /* ~"지금은 일단... 작별을 고하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 4.2 8.2 10.2 15.0
  SAY #54398 /* ~"당신은 중립지대인 아웃랜즈에 위치한 관문 도시인 커스트 성벽 안에 있소, 커스트는 감옥 차원인 카케리와 인접하고 있는 도시로 배신자들과 반역자들의 소굴이오. 당신은 감옥, 그것도 죄인 트리어스의 감방 안에 있소. 나는 누군가 내게 친절을 베풀 때까지 여기서 갇혀 있지 않으면 안 되오."~ */
  IF ~~ THEN REPLY #54399 /* ~"커스트에 대해 얘기해주시오."~ */ GOTO 26
  IF ~~ THEN REPLY #54400 /* ~"카케리에 대해 얘기해주시오."~ */ GOTO 27
  IF ~~ THEN REPLY #54401 /* ~"어떻게 해서 당신은 패배하게 되었소?"~ */ GOTO 22
  IF ~~ THEN REPLY #54402 /* ~"어떻게 하면 당신을 해방시킬 수가 있소?"~ */ JOURNAL #54392 /* ~트리스트는 내게 자신은 친절한 행위(이 경우에는 그의 칼을 되찾아 와서 그를 묶고 있는 사슬을 내려치는 행위)에 의해서만 해방될 수 있다고 말했다.  ~ */ GOTO 21
  IF ~~ THEN REPLY #54403 /* ~"당신에게 물어보고 싶은 것들이 더 있소..."~ */ GOTO 10
END

IF ~~ THEN BEGIN 15 // from: 4.3 8.3 10.3
  SAY #54404 /* ~"나는 죄인 트리어스, 상처 입은 트리어스, 엘뤼시온의 길 잃은 아이, 그리고 천상계의 군대의 장군들 중 하나요." ~ */
  IF ~~ THEN REPLY #54405 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 14
  IF ~~ THEN REPLY #54406 /* ~"당신은 어떻게 여기에 오게 되었소?"~ */ GOTO 22
  IF ~~ THEN REPLY #54407 /* ~"천상계?"~ */ GOTO 23
  IF ~~ THEN REPLY #54408 /* ~"죄인?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 16 // from: 4.4 8.4 10.4
  SAY #54409 /* ~"이 곳에서 내게 남겨진 것은 그것 뿐이오. 이제 내게 뭘 원하시오, 인간? 당신 생각을 말하고 떠나시오."~ */
  IF ~~ THEN REPLY #54410 /* ~"당신에게 물어볼 것이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #54411 /* ~"당신은 어떻게 여기에 오게 되었소?"~ */ GOTO 22
  IF ~~ THEN REPLY #54412 /* ~"이 낙원이란 곳에 대해 어떤 이야기를 해줄 수가 있겠소?"~ */ GOTO 23
  IF ~~ THEN REPLY #54413 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.0 118.0
  SAY #54414 /* ~"인간, 일단 당신이 내게 자유를 되찾아 준다면 나는 당신의 모든 질문에 기꺼이 대답하겠소, 그것도 훨씬 맑은 정신으로 말이오. 이 사슬을 내려치고 내게 칼을 돌려주시오!"~ */
  IF ~~ THEN REPLY #54415 /* ~사슬에 일격을 가한다.~ */ GOTO 20
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #54416 /* ~디바를 내려친다.~ */ GOTO 19
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #54416 /* ~디바를 내려친다.~ */ EXTERN ~DGRACE~ 181
  IF ~~ THEN REPLY #54417 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #4 ~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedToGT(0)
Global("Know_Sword","GLOBAL",1)
PartyHasItem("Celestia")
GlobalLT("Trias_Sword","GLOBAL",2)
~ THEN BEGIN 18 // from:
  SAY #54418 /* ~"무엇이오?"~ [TTB003C] */
  IF ~~ THEN REPLY #54419 /* ~"또 질문할 것들이 있소."~ */ GOTO 118
  IF ~~ THEN REPLY #54420 /* ~사슬에 일격을 가한다.~ */ GOTO 20
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #54421 /* ~디바를 내려친다.~ */ GOTO 19
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #61308 /* ~디바를 내려친다.~ */ EXTERN ~DGRACE~ 181
  IF ~~ THEN REPLY #54422 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.2 17.1 18.2 118.2
  SAY #54423 /* ~당신이 디바를 내려치자 칼은 당신 손에서 마치 하얀 불꽃처럼 번득인다. 그는 죽으면서 끔찍한 비명을 지른다... 그의 목소리에는 세계가 하나 죽어가는 듯한 소리가 담겨져 있다, 그리고 당신은 자신이 엄청난 실수를 했다는 생각이 드는 것을 어떻게 해볼 수가 없다.~ */
  IF ~~ THEN REPLY #54424 /* ~"그 일은 끝났으니 그럼..."~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 11.1 17.0 18.1 49.0 118.1
  SAY #54425 /* ~사슬들은 칼 앞에 금새 끊어진다, 그리고 당신의 두 귀 사이에서 천둥소리가 공명한다. 잠시 사방이 어두워진다, 그리고 당신은 손에서 칼이 사라지는 것을 느낀다.~ */
  IF ~~ THEN REPLY #54426 /* ~기다린다...~ */ DO ~TakePartyItemNum("Celestia",1)
AddexperienceParty(306250)
SetGlobal("Trias_Sword","GLOBAL",2)
FadeToColor([20.0],0)
Wait(3)
Polymorph(Trias)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.0 13.1 14.3 22.0 24.1 32.0
  SAY #54427 /* ~"내게 베풀어지는 친절한 행위가 날 해방할 것이오. 내 칼 - 내 영혼은 그러한 친절의 상징과도 같소. 그 칼을 찾아 가지고 와서 날 묶고 있는 사슬들을 끊으시오. 그것은 이 감옥 어딘가에 있는 삼엄하게 경비되고 있을 어떤 잠긴 방 안에 있을 것이오. 나는 입구를 여는 데 필요한 조합을 알고 있소." 그는 당신 기억 속에 각인되는 세 음절로 이루어진 암호를 말한다. "날 풀어 주시오, 그러면 그 은혜는... 잊지 않을 것이오. 아마 내가 당신이 원하는 것을 찾는 일을 도울 수 있을지도 모르오."~ */
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54428 /* ~"이것이 당신 칼이오? 이것은 감옥의 중심부에 있었소."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #54429 /* ~"내가 찾고있는 것에 대해 무엇을 아시오?"~ */ DO ~SetGlobal("Curst_Key","GLOBAL",7)
~ GOTO 25
  IF ~~ THEN REPLY #68139 /* ~"그 일을 하겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",7)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 13.0 14.2 15.1 16.1 26.1 27.1
  SAY #54430 /* ~"배신으로 악명 높은 도시에서 배신을 당했소. 나는 스스로의 함정에 빠진 영혼들 몇을 구원함으로서 이 곳에 선의 씨앗을 뿌릴 수 있으리라고 생각했소. 그러나 오히려 나 자신이 내 의지와는 상관없이 지하 어두운 곳에 사슬에 묶여 갇히는 신세가 되고 말았소, 그것도 내 이전 동료들에 의해 말이오."~ */
  IF ~~ THEN REPLY #54431 /* ~"어떻게 하면 당신을 해방시킬 수가 있소?"~ */ JOURNAL #54392 /* ~트리스트는 내게 자신은 친절한 행위(이 경우에는 그의 칼을 되찾아 와서 그를 묶고 있는 사슬을 내려치는 행위)에 의해서만 해방될 수 있다고 말했다.  ~ */ GOTO 21
  IF ~~ THEN REPLY #54432 /* ~"당신에게 물어보고 싶은 것들이 더 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #54433 /* ~"그럼 행운을 빌겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 15.2 16.2
  SAY #54434 /* ~어두운 그림자가 그의 얼굴을 스치고 지나간다. "나는 다시는 그들을 보지 못할 것 같소 - 아르카디아의 질서 정연한 아름다움, 엘리쉬온의 전망, 마운트 실레스쳐의 일곱 개의 산... 그 곳에는 마계에서 볼 수 있는 것과 같은 추악함은 일절 존재하지 않소, 그리고 그 곳에서는 구원이 실재한다는 것을 마음속으로부터 믿을 수가 있소. 하지만 불행히도 너무 많은 사람이 마계의 유혹에 빠지고 있소..."~ */
  IF ~~ THEN REPLY #54435 /* ~"아르카디아에 대해 어떤 얘기를 들려줄 수가 있겠소?"~ */ GOTO 29
  IF ~~ THEN REPLY #54436 /* ~"엘뤼시온에 대해 어떤 얘기를 들려줄 수가 있겠소?"~ */ GOTO 30
  IF ~~ THEN REPLY #54437 /* ~"마운트 실레스쳐에 대해 어떤 얘기를 들려줄 수가 있겠소?"~ */ GOTO 31
  IF ~~ THEN REPLY #54438 /* ~"알겠소... 다른 질문들이 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #54439 /* ~"아마도. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 15.3 24.2
  SAY #54440 /* ~"나는 천상계의 군대의 최고의 전사들 중 하나였으나, 이제는 이 혐오스런 도시의 지하에 매장된 신세가 되었소. 나는 내 존재 그 자체로부터 활력을 빼앗는 이 사슬들로부터 벗어나, 다시 자유롭게 멀리 날고 싶소."~ */
  IF ~~ THEN REPLY #54441 /* ~"그 사슬들에 대해 얘기를 해주겠소?"~ */ GOTO 32
  IF ~~ THEN REPLY #54442 /* ~"어떻게 하면 당신을 해방시킬 수가 있소?"~ */ JOURNAL #54392 /* ~트리스트는 내게 자신은 친절한 행위(이 경우에는 그의 칼을 되찾아 와서 그를 묶고 있는 사슬을 내려치는 행위)에 의해서만 해방될 수 있다고 말했다.  ~ */ GOTO 21
  IF ~  False()
~ THEN REPLY #54443 /* ~"하지만 당신 날개는 타버렸소. 당신은 날 수가 없소."~ */ GOTO 24
  IF ~~ THEN REPLY #54444 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #54445 /* ~"행운을 빌겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.1
  SAY #54446 /* ~그는 슬픈 미소를 짓는다. "당신 얼굴에 그것의 낙인이 찍혀 있으며, 가슴 속에 늘 그것을 지니고 있소. 만약 내가 이 사슬들로부터 풀려 난다면... 당신의 목적을 보다 깊게 파악하고, 보다 진실되게 당신을 인도할 수 있을 것이오. 그 때까지는..." 디바는 어깨를 으쓱한다. "그 때까지 내게는 당신에게 좋은 충고 하나 해줄 수 있는 능력이 없소. 이 사슬들은 내 기억과 직관을 질식시키고 있소."~ */
  IF ~~ THEN REPLY #54447 /* ~"좋소. 당신 칼을 찾아오도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 14.0 27.0
  SAY #54448 /* ~그의 얼굴이 어두워진다, 그러나 이내 동정심으로 밝아진다. "자신과 타인을 배신하는 자들의 도시요. 이 곳에서는 그 누구도 믿을 수가 없으며, 누구나 타인을 자신의 뒤엉킨 음모에 끌어넣으려고 하오... 좋을 일만 하려는 자들조차."~ */
  IF ~~ THEN REPLY #54449 /* ~"카케리에 대해 어떤 얘기를 둘려줄 수가 있겠소?"~ */ GOTO 27
  IF ~~ THEN REPLY #54450 /* ~"어떻게 배신을 당했소?"~ */ GOTO 22
  IF ~~ THEN REPLY #54451 /* ~"당신에게 물어보고 싶은 것들이 더 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #54452 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 14.1 26.0
  SAY #54453 /* ~"그 곳은 다원 우주의 감옥이오. 그 차원에서는 신들조차 배신 앞에 무력하오. 그 곳을 탈출하는 자는 드물고, 설령 탈출한다 하더라도 전과는 다른 사람이 되어버리오."~ */
  IF ~~ THEN REPLY #54454 /* ~"커스트에 대해 얘기해주시오."~ */ GOTO 26
  IF ~~ THEN REPLY #54455 /* ~"어떻게 배신을 당했소?"~ */ GOTO 22
  IF ~~ THEN REPLY #54456 /* ~"당신에게 물어보고 싶은 것들이 더 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #54457 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 10.6
  SAY #54458 /* ~"그것은 거대한 배신의 일환이었소. 그들은 내가 이 땅 속에서도 자신들로부터 도망칠 수 없도록, 내게 족쇄를 채울 때 내 날개를 태웠소. 아름다운 것이 용납되지 않는 것은 이 곳의 본성이오."~ */
  IF ~~ THEN REPLY #54459 /* ~"알겠소. 당신에게 할 다른 질문들이 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #54460 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.0 30.0 31.0
  SAY #54461 /* ~"질서 정연한 낙원으로, 그 곳에서는 모든 것에 다 제 자리가 있고 모두 다 거기에 만족하고 있소 -- 이러한 하계의 혼돈과 배신 따위는 찾아볼 수도 없소. 당신 같은 사람은 본 적도 없는 패턴들로 구성된 낙원이오."~ */
  IF ~~ THEN REPLY #54462 /* ~"엘뤼시온에 대해 어떤 얘기를 들려줄 수가 있겠소?"~ */ GOTO 30
  IF ~~ THEN REPLY #54463 /* ~"마운트 실레스쳐에 대해 어떤 얘기를 들려줄 수가 있겠소?"~ */ GOTO 31
  IF ~~ THEN REPLY #54464 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #54465 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 23.1 29.0 31.1
  SAY #54466 /* ~혼돈과 질서의 파도가 선으로 주민들을 씻어 주는 평화로운 안식의 차원이오. 그 곳의 숲과 초원들은 아름다움 바로 그 자체요. 그 곳은 달리 견줄 수가 없는 곳이오. 그 곳은 선과 자비의 정점이오."~ */
  IF ~~ THEN REPLY #54467 /* ~"아르카디아에 대해 어떤 얘기를 들려줄 수가 있겠소?"~ */ GOTO 29
  IF ~~ THEN REPLY #54468 /* ~"마운트 실레스쳐에 대해 어떤 얘기를 들려줄 수가 있겠소?"~ */ GOTO 31
  IF ~~ THEN REPLY #54469 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #54470 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 23.2 29.1 30.1
  SAY #54471 /* ~"질서와 선이 지배하는 일곱 개의 산이오. 그 차원에서는 모든 것들이 정의와 자비의 따뜻한 빛을 쏘이고 있소. 이상적인 곳이오. 그 곳의 주민들은 정의와 자비를 실천하기 위해 노력하며, 결코 그러한 이상들의 그림자에서 안주하려고 하지 않소. 그러한 이상들은 떠받들어져야 하는 것이지, 욕심 많은 소인배들의 입 안에 들어갈 음식이 아니오."~ */
  IF ~~ THEN REPLY #54472 /* ~"아르카디아에 대해 어떤 얘기를 들려줄 수가 있겠소?"~ */ GOTO 29
  IF ~~ THEN REPLY #54473 /* ~"엘뤼시온에 대해 어떤 얘기를 들려줄 수가 있겠소?"~ */ GOTO 30
  IF ~~ THEN REPLY #54474 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #54475 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 24.0
  SAY #54476 /* ~"이 사슬들을 나를 묶지 않아도 묶을 수 있도록 만들어졌소. 그들은 기억을 가라앉게 만들어 정체된 강의 바닥에 서서히 퇴적시킴으로서 내 지식을 침식하오. 내 힘으로는 이 사슬들을 끊을 수가 없소... 신성한 힘, 정의와 자비의 행위만이 것들을 깨트릴 수 있소." ~ */
  IF ~~ THEN REPLY #54477 /* ~"그 힘은 대체 무엇이오?"~ */ GOTO 21
  IF ~~ THEN REPLY #54478 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #54479 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 9.0 9.1
  SAY #54480 /* ~"나는 마족과 함께 여행하는 자의 꼬임에 넘어가지는 않겠소. 타나리, 너는 아름다운 모습을 취하고는 있으나, 나는 이 인간과는 달리 네 유혹에 그렇게 쉽게 넘어가지 않을 것이다. 네 생각을 말하고 내가 갇힌 이 곳을 떠나라."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 178
END

IF ~~ THEN BEGIN 34 // from:
  SAY #54481 /* ~"너는 네 동족들과 마찬가지로 참으로 달변이구나, 타나리. 질문을 하시오, 인간, 그리고 떠나시오."~ */
  IF ~~ THEN REPLY #54482 /* ~"나는 죽어야 할 운명의 인간이 아니오."~ */ GOTO 35
  IF ~~ THEN REPLY #54483 /* ~"마귀할멈 래벌이 날 보냈소. 그녀는 당신이 내 도둑맞은 죽음에 대한 정보를 가지고 있다고 했소."~ */ GOTO 36
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54484 /* ~"나는 이 곳을 열자 돌기 시작한 역병에 대한 소문을 들었소."~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 37
  IF ~~ THEN REPLY #54485 /* ~"여기는 대체 어떤 곳이오?"~ */ GOTO 38
  IF ~~ THEN REPLY #54486 /* ~"당신은 누구요?"~ */ GOTO 39
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54487 /* ~"이것이 당신 칼이오? 이것은 감옥의 중심부에 있었소."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #54488 /* ~"당신 날개는 어떻게 해서 타버리게 되었소?"~ */ GOTO 41
  IF ~~ THEN REPLY #54489 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #54490 /* ~디바는 맑고 낭랑하게 웃는다. "마음대로 하시오, 인간. 내게 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #54491 /* ~"마귀할멈 래벌이 날 보냈소. 그녀는 당신이 내 도둑맞은 죽음에 대한 정보를 가지고 있다고 했소."~ */ GOTO 36
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54492 /* ~"나는 이 곳을 열자 돌기 시작한 역병에 대한 소문을 들었소."~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 37
  IF ~~ THEN REPLY #54493 /* ~"여기는 대체 어떤 곳이오?"~ */ GOTO 38
  IF ~~ THEN REPLY #54494 /* ~"당신은 누구요?"~ */ GOTO 39
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54495 /* ~"이것이 당신 칼이오? 이것은 감옥의 중심부에 있었소."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #54496 /* ~"당신 날개는 어떻게 해서 타버리게 되었소?"~ */ GOTO 41
  IF ~~ THEN REPLY #54497 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1 35.0 45.0 52.0
  SAY #54498 /* ~"래벌... 나이트 해그... 빼앗긴 죽음... 이 모든 것이 매우 낯익은 듯 느껴지오, 하지만 이 사슬들이 날 묶고 있는 한 나는 내가 아는 것을 상기할 수가 없소."~ */
  IF ~~ THEN REPLY #54499 /* ~"그건 왜요?"~ */ GOTO 42
  IF ~~ THEN REPLY #54500 /* ~"어떻게 하면 그 사슬들을 끊을 수가 있소?"~ */ JOURNAL #54392 /* ~트리스트는 내게 자신은 친절한 행위(이 경우에는 그의 칼을 되찾아 와서 그를 묶고 있는 사슬을 내려치는 행위)에 의해서만 해방될 수 있다고 말했다.  ~ */ GOTO 42
  IF ~~ THEN REPLY #54501 /* ~"당신은 왜 감금당하게 되었소?"~ */ GOTO 44
END

IF ~~ THEN BEGIN 37 // from: 34.2 35.1 45.1 52.1
  SAY #54502 /* ~"자업자득이오. 나를 묶을 이 사슬을 만들 때, 그들은 고리들을 신랄함과 배신으로 담금질했소. 그들의 근시안적 사고가 그들의 파멸의 원흉이오. 만약 그들이 내 경고에 귀를 기울였다면, 이런 일은 일어나지 않았을 것이오." 그의 눈이 큰 슬픔으로 가득 찬다. "내 가슴은 그들을 동정하오."~ */
  IF ~~ THEN REPLY #54503 /* ~"그 사슬들에 대해 얘기를 해주겠소?"~ */ GOTO 42
  IF ~~ THEN REPLY #54504 /* ~"어떻게 하면 그 사슬들을 끊을 수가 있소?"~ */ JOURNAL #54392 /* ~트리스트는 내게 자신은 친절한 행위(이 경우에는 그의 칼을 되찾아 와서 그를 묶고 있는 사슬을 내려치는 행위)에 의해서만 해방될 수 있다고 말했다.  ~ */ GOTO 43
  IF ~~ THEN REPLY #54505 /* ~"질문할 것들이 더 있소..."~ */ GOTO 45
END

IF ~~ THEN BEGIN 38 // from: 34.3 35.2 39.0 45.2 52.2
  SAY #54506 /* ~"이 곳은 신들의 감옥인 카케리로 통하는 관문 도시 커스트 지하에 있는 던젼이오. 이 곳은 배신자, 고통받은 자, 그리고 죄인들의 온상이오."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 180
END

IF ~~ THEN BEGIN 39 // from: 34.4 35.3 45.3 52.3
  SAY #54507 /* ~"나는 죄인 트리어스요. 한때는 천상계의 군대의 장군들 중 하나였으나, 이제는 관문 도시들 중에서도 가장 비참한 곳 지하의 냄새나는 감방에서 시들어 가는 신세가 되었소."~ */
  IF ~~ THEN REPLY #54508 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 38
  IF ~~ THEN REPLY #54509 /* ~"당신은 어떻게 여기에 오게 되었소?"~ */ GOTO 44
END

IF ~~ THEN BEGIN 40 // from: 34.5 35.4 43.0 45.4 52.4
  SAY #54510 /* ~그는 잠시 충격을 받은 것처럼 보인다. "천상계의 화염? 내 칼을 되찾았소? 날 풀어 주겠소? 그럼 사슬을 내려치시오!"~ */
  IF ~~ THEN REPLY #54511 /* ~"먼저 질문할 것들이 있소..."~ */ GOTO 49
  IF ~~ THEN REPLY #54512 /* ~사슬을 내려친다.~ */ GOTO 50
  IF ~~ THEN REPLY #54513 /* ~디바를 내려친다.~ */ EXTERN ~DGRACE~ 181
  IF ~~ THEN REPLY #54514 /* ~"아직 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 34.6 35.5 45.5 52.5
  SAY #54515 /* ~"그것은 거대한 배신의 일환이었소. 그들은 내가 이 땅 속에서도 자신들로부터 도망칠 수 없도록, 내게 족쇄를 채울 때 내 날개를 태웠소. 아름다운 것이 용납되지 않는 것은 이 곳의 본성이오."~ */
  IF ~~ THEN REPLY #54516 /* ~"당신에게 질문할 것들이 더 있소..."~ */ GOTO 45
  IF ~~ THEN REPLY #54517 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.0 36.1 37.0
  SAY #54518 /* ~"이 사슬들은 내 움직임만을 구속하는 것이 아니오. 나는 많은 지식들에 대한 기억을 가지고 있으나, 사슬들이 내 기억을 왜곡시키고 있소."~ */
  IF ~~ THEN REPLY #54519 /* ~"사슬을 어떻게 끊을 수 있소?"~ */ JOURNAL #54392 /* ~트리스트는 내게 자신은 친절한 행위(이 경우에는 그의 칼을 되찾아 와서 그를 묶고 있는 사슬을 내려치는 행위)에 의해서만 해방될 수 있다고 말했다.  ~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 37.1 42.0
  SAY #54520 /* ~"만약 내게 아직도 내 신분의 상징이 있었다면, 이러한 사슬쯤은 간단히 끊을 수 있었을 것이오. 내 칼인 천상계의 화염은 이 도시의 그림자들에 의해 그들의 가련한 감옥을 지탱하는 데 악용되고 있소. 만약 내가 그것을 되찾는다면... 나는 다시 자유를 얻을 것이오. 그것은 이 더러운 감옥 안에 있는 삼엄하게 경비되고 있을 어떤 잠긴 방 안에 있을 것이오. 문은 잠겨 있으나, 나는 그것을 여는 데 필요한 조합을 알고 있소." 그는 당신 기억 속에 각인되는 세 음절로 이루어진 암호를 말한다. "돌아와서 이 사슬들을 내 칼로 내려치시오, 그러면 내 회복된 기억이 우리 두 사람 모두를 비출 것이오."~ */
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54521 /* ~"이것이 당신 칼이오? 이것은 감옥의 중심부에 있었소."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #68140 /* ~"좋소. 돌아오리다."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",7)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 36.2 39.1
  SAY #54522 /* ~"이 도시의 주민들은 모두 배신자들로, 진실과 아름다움에 대해서 아무 것도 알지 못하오. 아니, 그들은 그런 것들을 견딜 수가 없소. 그들은 나를 이 곳으로 유인하여 사슬로 묶었소. 인간들은 내가 그들에게 가르치려고 한, 그들로 하여금 욕망을 초월할 수 있는 강인한 정신을 기르게 해줄 시각을 갖고 있지 못하오."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 179
END

IF ~~ THEN BEGIN 45 // from: 37.2 41.0 46.0 47.1 48.0
  SAY #54523 /* ~"또 왔소?"~ */
  IF ~~ THEN REPLY #54524 /* ~"마귀할멈 래벌이 날 보냈소. 그녀는 당신이 내 도둑맞은 죽음에 대한 정보를 가지고 있다고 했소."~ */ GOTO 36
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54525 /* ~"나는 이 곳을 열자 돌기 시작한 역병에 대한 소문을 들었소."~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 37
  IF ~~ THEN REPLY #54526 /* ~"여기는 대체 어떤 곳이오?"~ */ GOTO 38
  IF ~~ THEN REPLY #54527 /* ~"당신은 누구요?"~ */ GOTO 39
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54528 /* ~"이것이 당신 칼이오? 이것은 감옥의 중심부에 있었소."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #54529 /* ~"당신 날개는 어떻게 해서 타버리게 되었소?"~ */ GOTO 41
  IF ~~ THEN REPLY #54530 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY #54531 /* ~냉소가 그의 아름다운 얼굴을 뒤튼다. "물론이겠지, 타나리 여사, 너는 인간들이 그 시각을 가질 수 있다고 믿지 않는가? 네가 다름 아닌 너인 이상 어쩔 수가 없겠지 - 너의 본성이 너에게 인간들이 기초적인 본능을 초월한 존재가 되려는 것을 방해하라고 외치고 있을 테니."~ */
  IF ~~ THEN REPLY #54532 /* ~"됐소, 그만하시오. 물어볼 것이 더 있소, 트리어스."~ */ GOTO 45
  IF ~~ THEN REPLY #54533 /* ~"그만하시오. 안녕히 계시오, 트리어스."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY #54534 /* ~그의 눈이 번개처럼 번득인다. "천계의 군세는 마족들을 직접 상대하기를 꺼리고 있소. 그들의 고귀한 영혼과 순수함에 대한 사랑은 다 어디로 갔단 말이오? 내 상사들은 멀리서 전쟁을 지휘하오 - 그들은 마족들에게 무기를 제공하고 그들의 정신에 서로를 보다 효과적으로 해치는 방법을 불어 넣어 줌으로서, 그들이 우리들의 황금의 벌판을 넘보지 않고 자기네들끼리 엄청난 대가를 치러야 하는 전쟁을 하도록 조작하고 있소."~ */
  IF ~~ THEN REPLY #54535 /* ~"어떻게 하면 이 상황을 바꿀 수가 있소?"~ */ GOTO 48
  IF ~~ THEN REPLY #54536 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 45
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #54537 /* ~트리어스는 마음을 가라앉힌다, 그러나 그의 타버린 날개는 가볍게 바스락거린다. "천계의 장군들의 마음조차 바꿀 수 있는 방법들도 있소, 인간. 언젠가는 그들도 틀림없이 깨닫게 될 것이오."~ */
  IF ~~ THEN REPLY #54538 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 45
  IF ~~ THEN REPLY #54539 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 40.0
  SAY #54540 /* ~"인간, 일단 당신이 내게 자유를 되찾아 준다면 나는 당신의 모든 질문에 기꺼이 대답하겠소, 그것도 훨씬 맑은 정신으로 말이오. 이 사슬을 내려치고 내게 칼을 돌려주시오!"~ */
  IF ~~ THEN REPLY #54541 /* ~사슬에 일격을 가한다.~ */ GOTO 20
  IF ~~ THEN REPLY #54542 /* ~디바를 내려친다.~ */ EXTERN ~DGRACE~ 181
  IF ~~ THEN REPLY #54543 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 40.1
  SAY #54544 /* ~사슬들은 칼 앞에 금새 끊어진다, 그리고 당신의 두 귀 사이에서 천둥소리가 공명한다. 잠시 사방이 어두워진다, 그리고 당신은 손에서 칼이 사라지는 것을 느낀다.~ */
  IF ~~ THEN REPLY #54545 /* ~기다린다...~ */ DO ~TakePartyItemNum("Celestia",1)
AddexperienceParty(306250)
SetGlobal("Trias_Sword","GLOBAL",2)
FadeToColor([20.0],0)
Wait(3)
Polymorph(Trias)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 51 // from:
  SAY #54546 /* ~당신이 디바를 내려치자 칼은 당신 손에서 마치 하얀 불꽃처럼 번득인다. 그는 죽으면서 끔찍한 비명을 지른다... 그의 목소리에는 세계가 하나 죽어가는 듯한 소리가 담겨져 있다, 그리고 당신은 자신이 엄청난 실수를 했다는 생각이 드는 것을 어떻게 해볼 수가 없다.~ */
  IF ~~ THEN REPLY #54547 /* ~"그 일은 끝났으니 그럼..."~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
~ EXIT
END

IF WEIGHT #5 ~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedToGT(0)
NearbyDialog("DGrace")
GlobalLT("Trias_Sword","GLOBAL",2)
~ THEN BEGIN 52 // from:
  SAY #54548 /* ~"다른 질문이 있소?"~ [TTB034] */
  IF ~~ THEN REPLY #54549 /* ~"마귀할멈 래벌이 날 보냈소. 그녀는 당신이 내 도둑맞은 죽음에 대한 정보를 가지고 있다고 했소."~ */ GOTO 36
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54550 /* ~"나는 이 곳을 열자 돌기 시작한 역병에 대한 소문을 들었소."~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 37
  IF ~~ THEN REPLY #54551 /* ~"여기는 대체 어떤 곳이오?"~ */ GOTO 38
  IF ~~ THEN REPLY #54552 /* ~"당신은 누구요?"~ */ GOTO 39
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54553 /* ~"이것이 당신 칼이오? 이것은 감옥의 중심부에 있었소."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #54554 /* ~"당신 날개는 어떻게 해서 타버리게 되었소?"~ */ GOTO 41
  IF ~~ THEN REPLY #54555 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 3.0 112.0
  SAY #54556 /* ~"당신은 동료 인간들의 마음을 지배할 힘을 추구하오? 당신은 누가 당신 소원을 들어주기를 바라오? 당신은 부를 원하오? 당신은 고문할 더 많은 영혼들을 원하오?"~ */
  IF ~~ THEN REPLY #54557 /* ~"나는 힘이나 부가 아닌 지식을 원할 뿐이오."~ */ GOTO 56
  IF ~~ THEN REPLY #54558 /* ~"내게 힘을 주시오."~ */ GOTO 54
  IF ~~ THEN REPLY #54559 /* ~"부에 대해 얘기해주시오."~ */ GOTO 55
END

IF ~~ THEN BEGIN 54 // from: 53.1 55.0
  SAY #54560 /* ~"내가 당신에게 견식이나 지혜를 줄 수 없는 것처럼, 힘 또한 줄 수가 없소. 그것은 누가 주는 선물이 아니라, 스스로 얻어야 하는 것이오. 많은 인간들이 이 점을 이해하지 못해 파멸의 길을 걸었소."~ */
  IF ~~ THEN REPLY #54561 /* ~"그럼 내게 지식을 주시오."~ */ GOTO 56
  IF ~~ THEN REPLY #54562 /* ~"그럼 내게 부를 주시오."~ */ GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 53.2 54.1
  SAY #54563 /* ~"그럼 그것을 스스로의 힘으로 얻으시오, 그리고 당신의 인간성이 한층 메말라 가는 것을 지켜보시오. 내게 세속적인 부에 대해 얘기하지 마시오."~ */
  IF ~~ THEN REPLY #54564 /* ~"그럼 내게 힘을 주시오."~ */ GOTO 54
  IF ~~ THEN REPLY #54565 /* ~"그럼 내게 지식을 주시오."~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 53.0 54.0 55.1
  SAY #54566 /* ~"그렇다면 원하는 바를 말하시오."~ */
  IF ~~ THEN REPLY #54567 /* ~"나는 내 죽음을 빼앗겼소. 나는 그것을 되찾고자 하오."~ */ JOURNAL #54569 /* ~디바 트리어스는 내게 갈라진 혀의 흐줄이라는 마족이 내 퀘스트에 도움을 줄 수 있을지도 모른다고 말했다. 이 마족은 아웃랜즈에 살고 있으며, 트리스트에 대해 무슨 의무를 지고 있는 것 같다.~ */ GOTO 57
  IF ~~ THEN REPLY #54568 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #54570 /* ~"당신은 어리석은 요구를 하고 있소. 하지만... 당신이 원하는 것을 찾도록 도울 수 있는 자가 있소. 그는 갈라진-혀의 흐줄이라는 이름의 마족이오." 디바는 입가에 가벼운 미소를 띄운다. "그는 자선 행위를 해야 할 의무를 지고 있소."~ */
  IF ~~ THEN REPLY #54571 /* ~"어떻게 하면 그를 만날 수가 있겠소?"~ */ JOURNAL #54572 /* ~트리어스의 부서진 사슬의 고리 하나를 가지고 북쪽에 있는 전이문을 찾아서 이용하면, 커스트를 떠나 흐줄을 찾으러 갈 수가 있다.~ */ GOTO 59
END

IF ~~ THEN BEGIN 58 // from: 102.1 104.0
  SAY #54573 /* ~"그 곳은 어둡고 텅 빈 것처럼 느껴지오 - 하지만 당신처럼 그 곳은 고통받는 영혼들을 자석처럼 끌어당기오. 당사처럼 그 곳은 텅 비었으나, 동시에 시간으로부터 버림받은 자들로 가득 차 있소. 내게 이러한 영혼들에 대해 듣고 싶소, 방랑자?"~ */
  IF ~~ THEN REPLY #54574 /* ~"그러시오."~ */ GOTO 60
END

IF ~~ THEN BEGIN 59 // from: 57.0
  SAY #54575 /* ~"이 감옥의 북쪽에 전이문이 하나 있소. 그 열쇠는 끊어진 사슬의 고리요." 그는 자신의 발 주위의 끊어진 고리들을 의미심장하게 바라보더니, 하나를 주워서 당신 손에 쥐어 준다. "커스트를 떠나려는 자에게 어울리는 열쇠요."~ */
  IF ~~ THEN REPLY #54576 /* ~"고맙소. 안녕히 계시오."~ */ DO ~SetGlobal("Outland_Portal","GLOBAL",1)
~ GOTO 61
END

IF ~~ THEN BEGIN 60 // from: 58.0
  SAY #54577 /* ~그의 잔인한 미소는 그 도를 더한다. "그들은 당신 대신 죽은 자들의 영혼들이오. 그들은 당신이 살 수 있도록 그림자들이 되었소. 그들은 *당신*의 그림자들이오, 당신이 존재에 드리운 그림자들이오, 그리고 그들은 당신을 찾아낼 것이오, 방랑자. 그리고 그들은 당신이 자신들의 고통에 대한 대가를 치르도록 만들 것이오. 당신과 당신과 동행할 정도로 어리석은 자들은 그들의 손에 의해 최후를 맞을 것이오."~ */
  IF ~~ THEN REPLY #54578 /* ~"물론이오. 이 수호자란 존재에 대해 얘기를 해주겠소?"~ */ GOTO 103
  IF ~~ THEN REPLY #54579 /* ~"격려를 해주어 고맙군, 트리어스. 이제 넌 죽어야겠어."~ */ GOTO 105
  IF ~~ THEN REPLY #54580 /* ~"어디 두고 봅시다. 내가 떠난 후 뭘 할 생각이오, 트리어스?~ */ GOTO 106
END

IF ~~ THEN BEGIN 61 // from: 59.0
  SAY #54581 /* ~"안녕히 계시오, 인간. 나는... 할 일이 있소." 그는 감옥의 천장을 의미심장하게 바라보더니, 마치 다이버가 바닷속으로 들어가듯이 머리 위에 있는 대지를 향해 도약한다. ~ */
  IF ~~ THEN REPLY #61264 /* ~떠난다.~ */ DO ~SinisterPoof("S0P2CUR3",[2577.3268],1)
PlaySoundNotRanged("CURES03")
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 62 // from:
  SAY #54582 /* ~Null Node~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~  Global("Trias_Defeated","GLOBAL",1)
~ THEN BEGIN 63 // from:
  SAY #54583 /* ~"지금 이 순간에는 당신에게 항복하겠소, 인간. 내 감금 생활은 나를 약하게 만들었소. 지금 상태에서 나는 당신 적수가 아니오."~ [TTB120] */
  IF ~~ THEN REPLY #54584 /* ~"트리어스, 당신이 최상의 상태였다 하더라도 내 적수는 되지 못했을 것이오. 자, 내가 필요로 하는 정보를 얘기해주시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_2","GLOBALGood",-1)
SetGlobal("cd_int_1","LOCALS",1)
~ GOTO 93
  IF ~~ THEN REPLY #54585 /* ~"나는 당신으로부터 정보를 얻어야만 하오. 후회의 요새로 갈 수 있는 방법을 말해주시오."~ */ DO ~SetGlobal("cd_int_1","LOCALS",1)
~ GOTO 94
  IF ~~ THEN REPLY #54586 /* ~디바를 죽인다.~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
SetGlobal("cd_int_1","LOCALS",1)
~ GOTO 98
END

IF ~~ THEN BEGIN 64 // from: 119.0
  SAY #54587 /* ~"저들을 보시오, 자신들의 하찮은 재산과 목숨을 보전하려고 허둥대는 모습을. 나는 당신이 그들을 전혀 돕지 않는 것을 지켜보았소. 당신의 이기심이 나를 더욱 강하게 만들었소."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 12
END

IF ~~ THEN BEGIN 65 // from: 120.0
  SAY #54588 /* ~"저들을 보시오, 자신들의 하찮은 재산과 목숨을 보전하려고 허둥대는 모습을. 나는 당신이 그들을 전혀 돕지 않는 것을 지켜보았소. 당신의 이기심이 나를 더욱 강하게 만들었소."~ */
  IF ~~ THEN REPLY #54589 /* ~"왜 내게 거짓말을 했소?"~ */ GOTO 71
  IF ~~ THEN REPLY #54590 /* ~"왜 커스트를 카케리로 끌어온 거요?"~ */ GOTO 72
  IF ~~ THEN REPLY #54591 /* ~"이 도시를 가지고 아주 재미있는 장난을 쳤군, 트리어스. 내게 후회의 요새로 가는 방법만 알려주면 그걸로 볼일은 끝내도록 하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_1","GLOBALGood",-2)
~ GOTO 85
  IF ~~ THEN REPLY #54592 /* ~그를 공격한다. ~ */ GOTO 70
END

IF ~~ THEN BEGIN 66 // from: 121.0
  SAY #54599 /* ~"당신은 이 도시를 갱생시키려고 노력했소, 인간, 하지만 이미 늦었소. 이제 그들은 자신들의 신의 없음에 대한 대가를 치르게 될 것이오."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 13
END

IF ~~ THEN BEGIN 67 // from: 122.0
  SAY #54600 /* ~"당신은 이 도시를 갱생시키려고 노력했소, 인간, 하지만 이미 늦었소. 이제 그들은 자신들의 신의 없음에 대한 대가를 치르게 될 것이오."~ */
  IF ~~ THEN REPLY #54601 /* ~"왜 내게 거짓말을 했소?"~ */ GOTO 71
  IF ~~ THEN REPLY #54602 /* ~"왜 커스트를 카케리로 끌어온 거요?"~ */ GOTO 72
  IF ~~ THEN REPLY #54603 /* ~"이 도시를 가지고 아주 재미있는 장난을 쳤군, 트리어스. 내게 후회의 요새로 가는 방법만 알려주면 그걸로 볼일은 끝내도록 하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_1","GLOBALGood",-2)
~ GOTO 75
  IF ~~ THEN REPLY #54604 /* ~그를 공격한다. ~ */ GOTO 70
END

IF ~~ THEN BEGIN 68 // from: 123.0
  SAY #54605 /* ~트리어스는 시를 내다본다. "당신은 그 짧은 시간 내에 많은 선행을 했소, 인간. 하지만 그것으로도 이 도시의 배신자들로 하여금 자신들이 얼마나 어리석은지를 깨닫게 하기에는 충분하지 않소."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 13
END

IF ~~ THEN BEGIN 69 // from: 124.0
  SAY #54606 /* ~트리어스는 시를 내다본다. "당신은 그 짧은 시간 내에 많은 선행을 했소, 인간. 하지만 그것으로도 이 도시의 배신자들로 하여금 자신들이 얼마나 어리석은지를 깨닫게 하기에는 충분하지 않소."~ */
  IF ~~ THEN REPLY #54607 /* ~"왜 내게 거짓말을 했소?"~ */ GOTO 71
  IF ~~ THEN REPLY #54608 /* ~"왜 커스트를 카케리로 끌어온 거요?"~ */ GOTO 72
  IF ~~ THEN REPLY #54609 /* ~"이 도시를 가지고 아주 재미있는 장난을 쳤군, 트리어스. 내게 후회의 요새로 가는 방법만 알려주면 그걸로 볼일은 끝내도록 하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_1","GLOBALGood",-2)
~ GOTO 85
  IF ~~ THEN REPLY #54610 /* ~그를 공격한다. ~ */ GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 65.3 67.3 69.3 80.2 86.2
  SAY #54611 /* ~트리어스의 눈이 번득인다, 그리고 그의 칼에서는 불꽃이 춤을 춘다. "자, 이제 당신이 죽을 수 있는지 어디 한 번 보겠소. 그러나 어떻게 되든 당신은 고통을 받게 될 것이오."~ [TTB118] */
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54612 /* ~그를 공격한다. ~ */ DO ~ForceAttack(Protagonist,Myself)
ForceAttack("Vhailor",Myself)
Enemy()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54613 /* ~기다린다.~ */ DO ~ForceAttack("Vhailor",Myself)
Enemy()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54614 /* ~"대화로 해결합시다!"~ */ DO ~ForceAttack("Vhailor",Myself)
Enemy()
~ EXIT
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54615 /* ~그를 공격한다. ~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54616 /* ~기다린다.~ */ DO ~Enemy()
~ EXIT
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54617 /* ~"대화로 해결합시다!"~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 71 // from: 65.0 67.0 69.0
  SAY #54618 /* ~"당신은 방향을 제시할 사람을 필요로 했소, 그리고 그에 대한 대가는 배신이었소. 어떻게 당신은 자신이 현세 또는 내세에 대한 진실을 들을 권리를 얻었다고 생각하는 것이오? 그것은 오만이오. 나를 해방시키는 것은 하등 생물로서 당신의 당연한 의무였소. 나는 당신에게 빚진 것이 아무 것도 없소, 오히려 당신에게 은혜를 베푼 건 나요. 나는 당신에게 과분할 만큼의 은혜를 베풀었소. 당신이 나를 해방시킨 건 자신을 위해서였소."~ */
  IF ~~ THEN REPLY #54619 /* ~"그럼 왜 커스트를 카케리로 끌어온 거요?"~ */ GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 65.1 67.1 69.1 71.0
  SAY #54620 /* ~"배신자들의 도시가 배신당했소, 그리고 그들은 받아서 마땅할 벌을 받게 되었소. 달리 이유는 없소. 단지 마계와 내가 맺은 계약을 완결시키는 데 필요할 뿐이오. 보다 큰 선을 위해서는 어쩔 수 없는 일이오."~ */
  IF ~~ THEN REPLY #54621 /* ~"마계와 계약을 체결했단 말이오?"~ */ GOTO 73
  IF ~~ THEN REPLY #54622 /* ~"보다 큰 선? 그 보다 큰 선이란 대체 어떤 거요?"~ */ GOTO 74
  IF ~~ THEN REPLY #54623 /* ~"누가 당신을 처형자로 임명했소? 그럴 권한이 대체 어디서 나오는 거요?"~ */ GOTO 75
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY #54624 /* ~대군의 도움 없이 마운트 실레스쳐를 오를 순 없소. 그 군대를 조직하는 것이 내게는 중요하오. 공격을 하도록 강요하는 것보다는 고용을 하는 편이 훨씬 수월하오."~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #54625 /* ~"마운트 실레스쳐를 *마족*들과 함께 공격하겠다고? 그들과 어울리는 건 당신의 천성에 반하는 일이 아니오?" ~ */ GOTO 76
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #54626 /* ~"마운트 실레스쳐를 *마족*들과 함께 공격하겠다고? 그들과 어울리는 건 당신의 천성에 반하는 일이 아니오?" ~ */ GOTO 77
END

IF ~~ THEN BEGIN 74 // from: 72.1
  SAY #54627 /* ~"마족들의 대군 때문에 발생하는 희생은 천계의 군세의 의분에 의해 속량될 것이오. 희생되는 자들은 보다 큰 선의 실현을 위한 주춧돌이 될 것이오. 이 도시는 바로 그 보다 큰 선 - 악의 박멸을 위해 희생되는 것이오. 희생되는 자들이 어떤 작자들인가를 감안하면 대단한 희생도 아니오."~ */
  IF ~~ THEN REPLY #54628 /* ~"미안하지만 악한 근원으로부터 선이 나올 수는 없소."~ */ GOTO 86
  IF ~~ THEN REPLY #54629 /* ~"알겠소. 동의하오. 내게 후회의 요새로 가는 방법만 알려주면 당신이 희생이든 뭐든 맘대로 할 수 있도록 내버려두겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_1","GLOBALGood",-2)
~ GOTO 85
END

IF ~~ THEN BEGIN 75 // from: 67.2 72.2 92.0
  SAY #54630 /* ~"나는 여기 있소. 내게는 악의 존재가 보이오. 나는 그것을 구축할 각오가 되어 있소. 내게 권한을 주는 건 바로 그 의지요."~ */
  IF ~~ THEN REPLY #54631 /* ~"그럴 뜻이 있다고 해서 그럴 권리가 주어지는 것은 아니오, 트리어스."~ */ GOTO 86
  IF ~~ THEN REPLY #54632 /* ~"알겠소. 동의하오. 내게 후회의 요새로 가는 방법만 알려주면 당신이 희생이든 뭐든 맘대로 할 수 있도록 내버려두겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_1","GLOBALGood",-2)
~ GOTO 85
END

IF ~~ THEN BEGIN 76 // from: 73.0
  SAY #54633 /* ~디바의 얼굴이 어두워진다. "나는 선의 명예를 회복하기 위해 이 일을 하고 있는 것이오!" 그는 소리친다. "천상계의 장군들이 안전한 곳에 숨어서 죄없는 자들을 희생시키는 전쟁을 확신시키고 있을 때, 나는 그들로 하여금 그들이 제일 두려워하는 것과 정면으로 마주치게 할 것이오, 그리고 그 대립을 통해 그들은 자신들의 두려움을 극복하게 될 것이오."~ */
  IF ~~ THEN REPLY #54634 /* ~"*고향*을 배신함으로서?"~ */ GOTO 80
  IF ~~ THEN REPLY #54635 /* ~"그리고 당신은 선의 벌판을 악의 화신으로 더럽힐 거요?"~ */ GOTO 90
  IF ~~ THEN REPLY #54636 /* ~"틀림없이 다른 방법이 있을 것이오, 트리어스."~ */ GOTO 91
END

IF ~~ THEN BEGIN 77 // from: 73.1
  SAY #54637 /* ~디바의 얼굴이 어두워진다. "나는 선의 명예를 회복하기 위해 이 일을 하고 있는 것이오!" 그는 소리친다. "천상계의 장군들이 안전한 곳에 숨어서 죄없는 자들을 희생시키는 전쟁을 확신시키고 있을 때, 나는 그들로 하여금 그들이 제일 두려워하는 것과 정면으로 마주치게 할 것이오, 그리고 그 대립을 통해 그들은 자신들의 두려움을 극복하게 될 것이오."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 182
END

IF ~~ THEN BEGIN 78 // from:
  SAY #54638 /* ~"너는 그들을 과대평가하고 있다, 타나리. 때가 무르익은 신념은 그 어떠한 군대보다도 강하다. 그리고 네가 군사적 전술에 대해 무엇을 아는가, *요부?* 너의 재능은 다른 분야에 있다." 그는 그녀의 몸을 훑어본다. "전략은 그것을 이해할 수 있는 자들에게 맡겨라."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 183
END

IF ~~ THEN BEGIN 79 // from:
  SAY #54639 /* ~"너는 내게 있어 수수께끼다, 타나리. 물론 그것은 네가 의도하는 바이겠지만." 그는 다시 당신 쪽으로 시선을 돌린다.~ */
  IF ~~ THEN REPLY #54640 /* ~"*고향*을 배신함으로서 이 문제를 해결할 생각이오?"~ */ GOTO 80
  IF ~~ THEN REPLY #54641 /* ~"당신은 선의 벌판을 악의 화신으로 더럽힐 거요?"~ */ GOTO 90
  IF ~  CheckStatGT(Protagonist,15,WIS)
GlobalGT("Good","GLOBAL",14)
~ THEN REPLY #54642 /* ~"틀림없이 다른 방법이 있을 것이오, 트리어스."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Trias_1","GLOBALGood",1)
~ GOTO 87
  IF ~  CheckStatGT(Protagonist,15,WIS)
GlobalLT("Good","GLOBAL",15)
~ THEN REPLY #54643 /* ~"틀림없이 다른 방법이 있을 것이오, 트리어스."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Trias_1","GLOBALGood",1)
~ GOTO 88
END

IF ~~ THEN BEGIN 80 // from: 76.0 79.0 90.0
  SAY #54644 /* ~"내가 당신에게 배신이 무엇인지에 대해 얘기하겠소, 인간. 배신은 악에 대한 전쟁을 포기하는 것이오. 배신이란 적들이 서로를 죽이는 것을 멈추고 당신을 공격할까 두려워 그들에게 무기를 파는 행위요. 배신이란 본보기를 보임으로서 타인의 모범이 되기를 거부하는 행위요. 배신이란 마족들이 모든 사람들을 타락시킬 때까지 다원 우주를 활보하도록 내버려 두는 행위요. 왜 내가 마운트 실레스쳐에 올라 그 평온한 경사면에 전쟁을 일으키려고 하는지 묻지 마시오. 그것은 배신이 아니오."~ */
  IF ~~ THEN REPLY #54645 /* ~"당신은 선의 본질을 악의 화신으로 더럽히려 하고 있소. 그건 배신이오."~ */ GOTO 81
  IF ~~ THEN REPLY #54646 /* ~"배신은 배신이오."~ */ GOTO 81
  IF ~~ THEN REPLY #54647 /* ~"당신의 독선에는 진저리가 나오, 트리어스. 죽을 각오를 하시오."~ */ GOTO 70
END

IF ~~ THEN BEGIN 81 // from: 80.0 80.1 86.0 86.1
  SAY #54648 /* ~"배신의 정의는 여러 가지가 있소. 배신에 대해 얘기를 하려면 모든 종류의 배신을 체험할 정도로 오래 살지 않으면 안 되오. 설령 당신이 망각을 하지 않았다고 하더라도, 당신이 산 세월은 그것들에 대해 올바른 평가를 내릴 정도로 길지 않소. 그러한 배신은 배신도 아니오."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #54649 /* ~"당신 날개가 그렇게 된 진짜 이유는 뭐요, 트리어스?"~ */ GOTO 82
  IF ~~ THEN REPLY #54650 /* ~"물러서시오, 트리어스, 그러면 우리가 싸우는 일은 없을 것이오."~ */ GOTO 83
  IF ~~ THEN REPLY #54651 /* ~"그만, 트리어스. 자신을 방어하시오."~ */ GOTO 84
  IF ~~ THEN REPLY #54652 /* ~"내게 후회의 요새로 가는 방법을 알려주시오, 트리어스, 그러면 난 당신을 이 곳에 내버려두겠소."~ */ GOTO 85
END

IF ~~ THEN BEGIN 82 // from: 81.0 91.0
  SAY #54653 /* ~"베이터의 불은 뜨겁소, 하지만 아버지의 분노에 비하면 그것은 촛불에 불과하오." 그는 자신의 날개의 타다 남은 잔해를 퍼덕거린다. "마운트 실레스쳐에서 추방당하는 것보다 더 큰 고통은 존재하지 않소."~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
GlobalGT("Good","GLOBAL",14)
~ THEN REPLY #54654 /* ~"물러서시오, 트리어스, 당신은 아직 구원받을 수가 있소."~ */ GOTO 87
  IF ~  CheckStatGT(Protagonist,15,WIS)
GlobalLT("Good","GLOBAL",15)
~ THEN REPLY #54655 /* ~"물러서시오, 트리어스, 당신은 아직 구원받을 수가 있소."~ */ GOTO 88
  IF ~~ THEN REPLY #54656 /* ~"그럼 당신은 타락한 거요? 왜 내가 당신 말을 믿어야 하지?"~ */ GOTO 92
END

IF ~~ THEN BEGIN 83 // from: 81.1 90.1 91.1
  SAY #54657 /* ~"당신은 자신의 유사 불사성을 진정한 불사신을 상대로 시험해 볼 정도로 어리석소, 인간? 비키시오, 인간, 아니면 우리는 당신 주장이 옳은지 시험해보게 될 것이오."~ */
  IF ~~ THEN REPLY #54658 /* ~"자, 트리어스."~ */ GOTO 84
END

IF ~~ THEN BEGIN 84 // from: 81.2 83.0 88.0
  SAY #54659 /* ~"내가 칼을 들고 적과 싸운지도 오래되었소. 당신과 나, 우리 두 사람은 결투를 할 것이오."~ [TTB119] */
  IF ~~ THEN REPLY #54660 /* ~그를 공격한다. ~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 85 // from: 65.2 69.2 74.1 75.1 81.3
  SAY #54661 /* ~트리어스의 눈이 번득인다. "나는 그렇게 생각하지 않소, 인간. 당신은 존재에 그림자를 드리우고, 천공으로부터는 고통을 불러내오, 그리고 내게는 당신에게 빛에 대해 깨우쳐 줄 힘이 있소." 하얀 불꽃이 그의 칼 위에서 춤춘다. "당신과 나, 우리 두 사람은 결투를 할 것이오."~ */
  IF ~~ THEN REPLY #54662 /* ~"좋소, 트리어스... 하지만 난 당신을 죽일 거요."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 86 // from: 74.0 75.0
  SAY #54663 /* ~"나는 당신처럼 살아온 사람에게 심판을 받을 생각은 없소, 인간. 내가 당신에게 배신에 대해 얘기해주겠소. 배신이란 적들이 서로를 죽이는 것을 멈추고 당신을 공격할까 두려워 그들에게 무기를 파는 행위요. 배신이란 본보기를 보임으로서 타인의 모범이 되기를 거부하는 행위요. 배신이란 마족들이 모든 사람들을 타락시킬 때까지 다원 우주를 활보하도록 내버려 두는 행위요. 왜 내가 마운트 실레스쳐에 올라 그 평온한 경사면에 전쟁을 일으키려고 하는지 묻지 마시오."~ */
  IF ~~ THEN REPLY #54664 /* ~"당신은 선의 본질을 악의 화신으로 더럽히려 하고 있소. 그건 배신이오."~ */ GOTO 81
  IF ~~ THEN REPLY #54665 /* ~"배신은 배신이오."~ */ GOTO 81
  IF ~~ THEN REPLY #54666 /* ~"당신의 독선에는 진저리가 나오, 트리어스. 죽을 각오를 하시오."~ */ GOTO 70
END

IF ~~ THEN BEGIN 87 // from: 79.2 82.0
  SAY #54667 /* ~그는 당신의 눈을 들여다본다. "구원의 시간은 지났소, 인간. 나는 아무 것도 후회하지 않소. 만약 어떤 대의를 진정으로 받들고자 한다면, 그것을 배신할 각오가 되어 있어야만 하오. 나는 진심으로 선을 신봉하오, 그래서 나는 그것을 배신하기로 했소."~ */
  IF ~~ THEN REPLY #54668 /* ~"아마 내가 당신 마음을 바꿀 수 있을지도 모르오..."~ */ GOTO 89
END

IF ~~ THEN BEGIN 88 // from: 79.3 82.1
  SAY #54669 /* ~그는 코웃음친다. "당신은 구원에 대해 말할 자격이 없소, 인간. 당신으로부터는 악의 냄새가 나오. 당신의 말은 거짓말과 속임수요. 아니, 이 계획은 계속될 것이오, 그리고 우리는 곧 천국의 문이 불타는 것을 보게 될 것이오."~ */
  IF ~~ THEN REPLY #54670 /* ~"그럼 우린 싸워야겠군."~ */ GOTO 84
END

IF ~~ THEN BEGIN 89 // from: 87.0 92.1
  SAY #54671 /* ~"그럼 무력으로 승부를 봅시다, 인간, 그러면 우리는 누구의 이념이 더 큰 무게를 지니고 있는 볼 수 있게 될 거요. 자신을 방어하시오, 인간."~ */
  IF ~~ THEN REPLY #54672 /* ~싸움에 대비한다.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #54673 /* ~디바를 공격한다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 90 // from: 76.1 79.1
  SAY #54674 /* ~"더러움은 오래 가지 않을 것이오, 그리고 그것은 남은 자들의 순수함에 의해 깨끗이 씻겨 나갈 것이오. 그것은 보다 큰 선을 위한 희생이오."~ */
  IF ~~ THEN REPLY #54675 /* ~"당신 고향을 배신?"~ */ GOTO 80
  IF ~~ THEN REPLY #54676 /* ~"그만하시오, 트리어스. 물러서시오, 아니면 우린 싸울 수밖에 없소."~ */ GOTO 83
END

IF ~~ THEN BEGIN 91 // from: 76.2
  SAY #54677 /* ~"고작 몇 번의 인간의 삶밖에 살지 못한 당신이, 감히 진정한 불사신인 내게 다른 길이 있다고 충고하려는 거요? 나는 다른 방법들에 대해서도 고려해 보았소, 인간, 하지만 이것이 유일한 길이오."~ */
  IF ~~ THEN REPLY #54678 /* ~"당신 날개가 그렇게 된 진짜 이유는 뭐요, 트리어스?"~ */ GOTO 82
  IF ~~ THEN REPLY #54679 /* ~"그만하시오, 트리어스. 물러서시오, 아니면 우린 싸울 수밖에 없소."~ */ GOTO 83
END

IF ~~ THEN BEGIN 92 // from: 82.2
  SAY #54680 /* ~"내게 배신과 타락에 대해 이야기하지 마시오, 인간... 나는 선의 승리를 위해서는 나 자신도 희생할 수 있소."~ */
  IF ~~ THEN REPLY #54681 /* ~"숭고하군, 트리어스, 하지만 누가 당신에게 그럴 권리를 주었소?"~ */ GOTO 75
  IF ~~ THEN REPLY #54682 /* ~"이제 그 희생을 치를 각오가 돼있기를 바라오, 트리어스. 나는 심판의 도구 역할을 할 생각이니까."~ */ GOTO 89
END

IF ~~ THEN BEGIN 93 // from: 63.0
  SAY #54683 /* ~"그만두시오, 인간. 당신은 나만이 아는 지식을 얻고자 내게 왔소. 다원 우주에서 내가 지금 말하고자 하는 것을 얘기해줄 사람은 나밖에 없소. 만약 당신이 진정 이 정보를 얻고 싶다면, 나를 살려 주겠다고 약속해야만 하오."~ */
  IF ~~ THEN REPLY #54684 /* ~"거래는 없소, 트리어스. 당장 말하지 않으면 난 당신을 죽일 거요, 그로 인한 결과가 어떤 것이든 간에.~ */ GOTO 95
  IF ~~ THEN REPLY #54685 /* ~"내가 원하는 정보를 주면 당신 목숨을 살려 주겠소."~ */ GOTO 96
  IF ~~ THEN REPLY #54686 /* ~"내가 원하는 정보를 주면 당신 목숨을 살려 주겠다고 맹세하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Trias_1","GLOBALLaw",1)
~ GOTO 96
  IF ~~ THEN REPLY #54687 /* ~디바를 죽인다.~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
~ GOTO 98
END

IF ~~ THEN BEGIN 94 // from: 63.1
  SAY #54688 /* ~그는 피를 토하며 기침을 한다. "내가 말을 하기 전에 당신은 내게 약속 하나를 해주어야만 하오. 나를 살려 주겠다고 맹세하시오."~ */
  IF ~~ THEN REPLY #54689 /* ~"거래는 없소, 트리어스. 당장 말하지 않으면 난 당신을 죽일 거요, 그로 인한 결과가 어떤 것이든 간에.~ */ GOTO 95
  IF ~~ THEN REPLY #54690 /* ~"내가 원하는 정보를 주면 당신 목숨을 살려 주겠소."~ */ GOTO 96
  IF ~~ THEN REPLY #54691 /* ~"내가 원하는 정보를 주면 당신 목숨을 살려 주겠다고 맹세하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Trias_1","GLOBALLaw",1)
~ GOTO 96
  IF ~~ THEN REPLY #54692 /* ~디바를 죽인다.~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
~ GOTO 98
END

IF ~~ THEN BEGIN 95 // from: 93.0 94.0
  SAY #54693 /* ~"당신에겐 이 지식이 필요하오, 아니면 당신은 영원히 고통받을 것이오..."~ */
  IF ~~ THEN REPLY #54694 /* ~"내가 말했지, *털어놓으라고.*"~ */ GOTO 97
  IF ~~ THEN REPLY #54695 /* ~"내가 원하는 정보를 주면 당신 목숨을 살려 주겠소."~ */ GOTO 96
  IF ~~ THEN REPLY #54696 /* ~"내가 원하는 정보를 주면 당신 목숨을 살려 주겠다고 맹세하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Trias_1","GLOBALLaw",1)
~ GOTO 96
  IF ~~ THEN REPLY #54697 /* ~디바를 죽인다.~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
~ GOTO 98
END

IF ~~ THEN BEGIN 96 // from: 93.1 93.2 94.1 94.2 95.1 95.2 97.0 97.1
  SAY #54698 /* ~"당신이 찾고 있는 전이문은 스파이어 위의 원환, 즉 문들의 도시 시길에 있소. 그 도시에서 당신같은 죽은 자들이 운반되는 곳...~ */
  IF ~~ THEN REPLY #54699 /* ~"*시체안치소* 말이오?"~ */ GOTO 99
  IF ~~ THEN REPLY #54700 /* ~"열쇠는 무엇이오?"~ */ GOTO 100
END

IF ~~ THEN BEGIN 97 // from: 95.0
  SAY #54701 /* ~그는 조용히 웃는다. "당신에겐 선택의 여지가 별로 없소, 인간. 맹세를 하던지, 아니면 이 지식을 영원히 잃을 각오를 하시오."~ */
  IF ~~ THEN REPLY #54702 /* ~"좋소. 내가 원하는 정보를 주면 당신 목숨을 살려 주겠소."~ */ GOTO 96
  IF ~~ THEN REPLY #54703 /* ~"좋소. 내가 원하는 정보를 주면 당신 목숨을 살려 주겠다고 맹세하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Trias_1","GLOBALLaw",1)
~ GOTO 96
  IF ~~ THEN REPLY #54704 /* ~디바를 죽인다.~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
~ GOTO 98
END

IF ~~ THEN BEGIN 98 // from: 63.2 93.3 94.3 95.3 97.2 107.0
  SAY #54705 /* ~당신은 그를 내려쳐 그의 자랑스런 얼굴의 뼈를 파괴함으로서 그의 완벽한 형태에 흠집을 남긴다. 그는 죽어가면서 마지막 힘을 모아 말한다. "당신이 스스로를 파멸시켰다는 사실을 알도록 하시오. 나를 죽임으로서 당신은 당신을 삼킬 공포로부터 자신을 보호할 마지막 방패를 잃었소. 내가 속인 마족... 그는 이제 자유를 얻었소..." 그의 힘없는 웃음소리는 천천히 약해지고, 그의 눈으로부터는 빛이 사라진다. ~ */
  IF ~~ THEN REPLY #54706 /* ~"자, 죽어라."~ */ DO ~AddexperienceParty(375000)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 99 // from: 96.0
  SAY #54707 /* ~"그 곳은 최근 당신이 깨어난 곳이오, 그렇지 않소? 다원 우주는 그러한 얄궂은 운명투성이오. 그 때 당신은 그 곳 그토록 가까이에 있었는데..."~ */
  IF ~~ THEN REPLY #54708 /* ~"열쇠는 무엇이오?"~ */ GOTO 100
END

IF ~~ THEN BEGIN 100 // from: 96.1 99.0
  SAY #54709 /* ~"후회의 요새를 지탱하는 모르타르는 눈물이오, 그리고 유유상종이오. 요새에 들어가려면 당신도 그 곳에 기여를 하지 않으면 안 되오. 전이문 근처를 지나갈 때 당신의 마음 속에 후회가 있다면, 당신은 죽음의 차가운 포옹과도 같은 전이문의 존재를 느낄 수 있을 것이오."~ */
  IF ~~ THEN REPLY #54710 /* ~"그리고?"~ */ DO ~SetGlobal("Regret","GLOBAL",1)
~ JOURNAL #54711 /* ~배신자 트리어스는 내게 후회의 요새로 가는 데 필요한 열쇠를 주었다. 전이문은 시체안치소 안 어딘가에 있다. 문을 찾기 위해 나는 머리 속에서 계속 후회에 대해 해야 하는데, 내가 문에 가까이 다가가면 나는 오한을 느끼게 될 것이다. 일단 전이문 앞에 도달하면 나는 내 피부의 일부를 뜯어내 거기에다 내 왼쪽 집게손가락에서 나온 피로 후회라고 적어야만 한다.~ */ GOTO 101
END

IF ~~ THEN BEGIN 101 // from: 100.0
  SAY #54712 /* ~"아 냉기가 당신을 엄습하면, 당신 피부를 한 조각 떼어내, 그 위에 왼쪽 집게손가락에서 나온 피로 후회를 하나 쓰시오. 그러면 전이문은 열리고, 당신은 후회의 요새의 주비밀을 발견할 수 있게 될 것이오, 그리고 그 곳의 수호자를 만나게 될지도 모르오."~ */
  IF ~~ THEN REPLY #54713 /* ~"어떻게 그걸 아시오?"~ */ GOTO 102
  IF ~~ THEN REPLY #54714 /* ~"요새의 수호자에 대해 어떤 이야기를 해줄 수가 있겠소?"~ */ GOTO 103
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY #54715 /* ~"나는 다원 우주 전역을 여행하며 동지를 규합하고자 했소. 나는 그러한 탐색 중에 그 요새를 발견하게 되었고, 그 곳의 어두운 홀에서 그 곳의 고독한 주인이자 수호자와 얘기를 나누었소. 아마 당신은 이제 시길로 돌아가기를 원할 거요. 당신 손에 묻은 피가 이 전이문의 열쇠 구실을 할 것이오. 그냥 당신이 이 방에 들어올 때 사용했던 문으로 나가시오, 그러면 당신은 시길로 돌아가게 되 것이오."~ */
  IF ~~ THEN REPLY #54716 /* ~"이 수호자란 존재에 대해 어떤 이야기를 해줄 수가 있겠소?"~ */ GOTO 103
  IF ~~ THEN REPLY #54717 /* ~"요새에 대해 어떤 이야기를 해줄 수가 있겠소?"~ */ GOTO 58
  IF ~~ THEN REPLY #54718 /* ~"고맙소, 트리어스. 이제 저세상으로 가시오."~ */ GOTO 105
  IF ~~ THEN REPLY #54719 /* ~"내가 떠난 후에 뭘 할 생각이오, 트리어스?"~ */ GOTO 106
END

IF ~~ THEN BEGIN 103 // from: 60.0 101.1 102.0
  SAY #54720 /* ~"그는 강대하오. 당신은 그를 이기지 못할 것이오, 그리고 그의 차가운 손아귀로부터 당신의 죽음을 빼앗지도 못할 것이오. 당신은 그것을 영원히 잃은 것이나 마찬가지요. 당신의 사명은 바보나 떠맡을 그런 사명이오."~ */
  IF ~~ THEN REPLY #54721 /* ~"어리석은 일인지도 모르나 난 이 수호자란 존재에 대해서 더 알아야겠소."~ */ DO ~SetGlobal("Know_Keeper_Mortality","GLOBAL",1)
~ GOTO 104
  IF ~~ THEN REPLY #54722 /* ~"계속하시오."~ */ DO ~SetGlobal("Know_Keeper_Mortality","GLOBAL",1)
~ GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.0 103.1
  SAY #54723 /* ~"인간의 죽음은 그의 삶의 방향을 알려 주는 나침반과도 같소. 만약 그것을 물건처럼 쥘 수가 있다면, 그것의 원래 주인의 본성에 대해 많은 것을 알 수가 있소. 당신의 적은 당신에 대해 당신보다 더 잘 알고 있소. 그는 당신의 수많은 거짓 삶을 사는 것을 지켜보고, 또 연구했소. 나는 그의 의중을 아오. 그는 당신이 원하는 것을 돌려주지 않을 것이오."~ */
  IF ~~ THEN REPLY #54717 /* ~"요새에 대해 어떤 이야기를 해줄 수가 있겠소?"~ */ GOTO 58
  IF ~~ THEN REPLY #54724 /* ~"고맙소, 트리어스. 이제 저세상으로 가시오."~ */ GOTO 105
  IF ~~ THEN REPLY #54725 /* ~"내가 떠난 후에 뭘 할 생각이오, 트리어스?"~ */ GOTO 106
END

IF ~~ THEN BEGIN 105 // from: 60.1 102.2 104.1
  SAY #54726 /* ~"하지만 당신은 맹세를 했소..."~ */
  IF ~  Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54727 /* ~"내가 거짓말을 했소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Trias_1","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Trias_2","GLOBALGood",-1)
~ GOTO 107
  IF ~  !Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54728 /* ~"나는 맹세한 적이 없소. 나는 당신을 살려줄 수도 있다고 했을 뿐이오. 하지만 생각을 바꿨소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_2","GLOBALGood",-1)
~ GOTO 107
  IF ~~ THEN REPLY #54729 /* ~"농담이오. 내가 떠난 후에 뭘 할 생각이오, 트리어스?"~ */ GOTO 106
END

IF ~~ THEN BEGIN 106 // from: 60.2 102.3 104.2 105.2
  SAY #54730 /* ~"나는 다시 낙원의 문을 공격할 군대를 조직할 것이오. 그들은 날 받아들이지 않을 것이오, 그리고 내 존재에 다른 의미는 없소."~ */
  IF ~~ THEN REPLY #54731 /* ~"그럼 당신을 멈추어야겠소. 지금 당장."~ */ GOTO 108
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #54732 /* ~"트리어스, 당신은 당신 아버지의 얼굴을 잊어버렸소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Trias_2","GLOBALGood",1)
~ GOTO 109
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54733 /* ~"건투를 빌겠소. 안녕히 계시오."~ */ DO ~SinisterPoof("S0P2CUR3",[2577.3268],1)
PlaySoundNotRanged("CURES03")
DestroySelf()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54734 /* ~"건투를 빌겠소. 안녕히 계시오."~ */ EXTERN ~DVHAIL~ 14
END

IF ~~ THEN BEGIN 107 // from: 105.0 105.1 108.0 108.1
  SAY #54735 /* ~"나는 당신이 아무런 의미도 없이 살도록 저주하겠소. 당신이 고통뿐인 껍질 속에서 빛과 사랑의 즐거움에 대한 기억도 없이 영원히 고통받기를. 당신에게 남아 있는 티끌만한 인간성이 당신을 파멸시킬 것이오, 인간."~ */
  IF ~~ THEN REPLY #54736 /* ~그를 내려친다. "안녕, 트리어스."~ */ GOTO 98
END

IF ~~ THEN BEGIN 108 // from: 106.0 111.1
  SAY #54737 /* ~"하지만 당신은 날 살려 주겠다고 맹세를 했소, 인간."~ */
  IF ~  Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54738 /* ~"내가 이러는 건 보다 큰 선을 위해서라고 해두지, 트리어스."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Trias_1","GLOBALLaw",-3)
~ GOTO 107
  IF ~  !Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54739 /* ~"나는 맹세한 적이 없소. 나는 당신을 살려줄 수도 있다고 했을 뿐이오. 그리고 이제 난 그것이 무의미하리라는 것을 깨달았소. 다른 말로 하자면, 난 생각을 바꿨소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_2","GLOBALGood",-1)
~ GOTO 107
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54740 /* ~"그럼 어디 한 번 해보시오. 하지만 그들이 당신을 맞이할 만반의 준비를 하고 있을 것이라는 것을 아시오. 안녕히 계시오, 트리어스. 당신의 모험이 실패로 돌아가기를."~ */ DO ~EscapeArea()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54741 /* ~"그럼 어디 한 번 해보시오. 하지만 그들이 당신을 맞이할 만반의 준비를 하고 있을 것이라는 것을 아시오. 안녕히 계시오, 트리어스. 당신의 모험이 실패로 돌아가기를."~ */ EXTERN ~DVHAIL~ 14
END

IF ~~ THEN BEGIN 109 // from: 106.1
  SAY #54742 /* ~"무슨 뜻이오?"~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #54743 /* ~"천상계는 정의, 아름다움, 그리고 선의 고향이오. 하지만 그 곳은 관용의 고향이기도 하오. 고향으로 돌아가시오. 자신의 잘못을 인정하고 용서를 구하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Trias_3","GLOBALGood",5)
SetGlobal("Trias_Redeem","GLOBAL",1)
~ GOTO 110
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #54744 /* ~"천상계는 정의, 아름다움, 그리고 선의 고향이오. 하지만 그 곳은 관용의 고향이기도 하오. 고향으로 돌아가시오. 자신의 잘못을 인정하고 용서를 구하시오."~ */ GOTO 111
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54745 /* ~아무 것도 아니오. 안녕히 계시오, 트리어스."~ */ DO ~SinisterPoof("S0P2CUR3",[2577.3268],1)
PlaySoundNotRanged("CURES03")
DestroySelf()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54746 /* ~아무 것도 아니오. 안녕히 계시오, 트리어스."~ */ EXTERN ~DVHAIL~ 14
END

IF ~~ THEN BEGIN 110 // from: 109.0 111.0
  SAY #54747 /* ~그는 입을 열어 반론을 하려고 한다... 그러나 멈추고 회상에 잠긴다. 그는 머리를 숙인다. "당신의 말은 설득력이 있소, 인간, 그리고 그 안에 담긴 지혜가 내 심금을 울렸소. 나는 아버지들에게 용서를 빌고 그분들이 내리는 벌을 기꺼이 받도록 하겠소. 이것을 가지고 가시오, 인간. 우리가 다시 만날 때까지 내 죄를 다 씻을 수 있었으면 좋겠소." ~ */
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54748 /* ~"행운을 빌겠소, 트리어스. 안녕히 계시오."~ */ DO ~GiveItem("SPWI901",Protagonist)
AddexperienceParty(375000)
StickySinisterPoof("S113SMOK",Myself,1)
Wait(1)
DestroySelf()
~ JOURNAL #54750 /* ~나는 트리어스에게 천상계의 자비를 구하도록 설득하는 데 성공했다.~ */ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54749 /* ~"행운을 빌겠소, 트리어스. 안녕히 계시오."~ */ DO ~GiveItem("SPWI901",Protagonist)
~ JOURNAL #54751 /* ~나는 트리어스에게 천상계의 자비를 구하도록 설득하는 데 성공했다, 하지만 바로 그 때 베일로가 그를 공격했다. ~ */ EXTERN ~DVHAIL~ 14
END

IF ~~ THEN BEGIN 111 // from: 109.1
  SAY #54752 /* ~그의 얼굴이 밝아졌다가 다시 어두워진다. 그는 시선을 다른 데로 돌린다. "나는 돌아갈 수가 없소. 내가 지은 죄는 너무나도 끔찍하오. 나같은 자에게는 용서란 있을 수 없소. 나는 나름대로의 방법으로 선을 위해 봉사하도록 하겠소."~ */
  IF ~  CheckStatGT(Protagonist,16,WIS)
~ THEN REPLY #54753 /* ~"당신도 용서받을 수가 있소, 트리어스. 당신이 미천한 청원자보다 위대한 존재인 것처럼, 천상계의 신들 또한 당신보다 공명정대하며 현명한 존재들이오. 당신은 선을 대표하는 존재가 아니오. 신들을 신뢰할 수 있다는 사실을 기억하시오." ~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Trias_3","GLOBALGood",5)
SetGlobal("Trias_Redeem","GLOBAL",1)
~ GOTO 110
  IF ~~ THEN REPLY #54754 /* ~"그렇다면 여기서 당신을 저지해야겠소."~ */ GOTO 108
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54755 /* ~"그럼 안녕히 계시오, 그리고 당신에게는 속죄의 기회가 있었으나 그것을 거부했다는 사실을 항상 기억하도록 하시오."~ */ DO ~SinisterPoof("S0P2CUR3",[2577.3268],1)
PlaySoundNotRanged("CURES03")
DestroySelf()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54756 /* ~"그럼 안녕히 계시오, 그리고 당신에게는 속죄의 기회가 있었으나 그것을 거부했다는 사실을 항상 기억하도록 하시오."~ */ EXTERN ~DVHAIL~ 14
END

IF WEIGHT #13 /* Triggers after states #: 124 123 122 121 120 119 even though they appear after this state */
~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedToGT(0)
Global("Trias_Sword","GLOBAL",3)
~ THEN BEGIN 112 // from:
  SAY #54757 /* ~"또 왔소?"~ [TTB037] */
  IF ~~ THEN REPLY #54758 /* ~"당신에게 질문할 것들이 더 있소."~ */ GOTO 53
  IF ~~ THEN REPLY #54759 /* ~"아무 일도 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 113 // from:
  SAY #54760 /* ~베일로는 그를 내려쳐 그의 자랑스런 얼굴의 뼈를 파괴함으로서 그의 완벽한 형태를 피범벅으로 만든다. 그는 죽어가면서 마지막 힘을 모아 말한다. "당신이 스스로를 파멸시켰다는 사실을 알도록 하시오. 나를 죽임으로서 당신은 당신을 삼킬 공포로부터 자신을 보호할 마지막 방패를 잃었소. 내가 속인 마족... 그는 이제 자유를 얻었소..." 그의 힘없는 웃음소리는 천천히 약해지고, 그의 눈으로부터는 빛이 사라진다. ~ */
  IF ~~ THEN REPLY #106512 /* ~"젠장할, 베일로, 무슨 짓을 한건지 알기나 하는거요?!"~ */ DO ~SetGlobal("Trias_Redeem","GLOBAL",0)
AddexperienceParty(375000)
Kill(Myself)
~ EXTERN ~DVHAIL~ 170
  IF ~~ THEN REPLY #54761 /* ~"자, 죽어라."~ */ DO ~SetGlobal("Trias_Redeem","GLOBAL",0)
AddexperienceParty(375000)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 114 // from: 0.0
  SAY #61293 /* ~디바는 고개를 쳐들고 당신을 바라본다. 그의 목소리는 맑고 아름다운 선율을 지녔다. "내게 뭘 원하시오, 인간? 당신 의중을 말하고, 내가 낙원의 추억에 잠길 수 있도록 날 그냥 내버려 두시오." 당신이 미처 대답을 하기도 전에 그가 얼굴을 찌푸린다.~ [TTB004] */
  IF ~~ THEN JOURNAL #54312 /* ~나는 래벌이 얘기한 천사 "트리어스"를 찾아냈는데 그는 커스트에서 감금된 상태였다. 주민들이 천사를 그런 식으로 다루다니... 정말 이 곳은 살인자들과 배신자들의 도시인 모양이다. 그렇다고 이 곳이 내가 지금까지 거쳐온 다른 곳들과 크게 다르다는 건 아니지만.~ */ GOTO 5
END

IF ~~ THEN BEGIN 115 // from: 0.1
  SAY #61294 /* ~디바는 고개를 쳐들고 당신을 바라본다. 그의 목소리는 맑고 아름다운 선율을 지녔다. "내게 뭘 원하시오, 인간? 당신 의중을 말하고, 내가 낙원의 추억에 잠길 수 있도록 날 그냥 내버려 두시오." 당신이 미처 대답을 하기도 전에 그가 얼굴을 찌푸린다.~ [TTB004] */
  IF ~~ THEN JOURNAL #54312 /* ~나는 래벌이 얘기한 천사 "트리어스"를 찾아냈는데 그는 커스트에서 감금된 상태였다. 주민들이 천사를 그런 식으로 다루다니... 정말 이 곳은 살인자들과 배신자들의 도시인 모양이다. 그렇다고 이 곳이 내가 지금까지 거쳐온 다른 곳들과 크게 다르다는 건 아니지만.~ */ GOTO 6
END

IF ~~ THEN BEGIN 116 // from: 0.4 0.5
  SAY #61295 /* ~디바는 고개를 쳐들고 당신을 바라본다. 그의 목소리는 맑고 아름다운 선율을 지녔다. "내게 뭘 원하시오, 인간? 당신 의중을 말하고, 내가 낙원의 추억에 잠길 수 있도록 날 그냥 내버려 두시오." 당신이 미처 대답을 하기도 전에 그가 얼굴을 찌푸린다.~ [TTB004] */
  IF ~~ THEN JOURNAL #54312 /* ~나는 래벌이 얘기한 천사 "트리어스"를 찾아냈는데 그는 커스트에서 감금된 상태였다. 주민들이 천사를 그런 식으로 다루다니... 정말 이 곳은 살인자들과 배신자들의 도시인 모양이다. 그렇다고 이 곳이 내가 지금까지 거쳐온 다른 곳들과 크게 다르다는 건 아니지만.~ */ GOTO 7
END

IF ~~ THEN BEGIN 117 // from: 2.0 2.2
  SAY #61296 /* ~"내 칼은 어디 있소?"~ */
  IF ~  !PartyHasItem("Celestia")
~ THEN REPLY #61297 /* ~"아직 아니오. 당신에게 몇 가지만 더 물어봐야겠소..."~ */ GOTO 10
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #61298 /* ~"틀림없이 이 근처 어딘가에 있을 것이오. 하지만 먼저 당신에게 질문을 좀 해야만 하겠소..."~ */ GOTO 10
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #61299 /* ~"당신 칼을 가져왔소."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #61300 /* ~"관두시오. 곧 돌아오리다."~ */ EXIT
END

IF ~~ THEN BEGIN 118 // from: 18.0
  SAY #61305 /* ~"당신은 나를 풀어 주지 않을 생각이오, 인간? 나는... 당신에게 유익한 정보를 가지고 있을지도 모르오..."~ */
  IF ~~ THEN REPLY #61306 /* ~"나는 몇 가지 질문에 대한 답을 듣고자 할 뿐이오.."~ */ GOTO 17
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #61307 /* ~사슬에 일격을 가한다.~ */ GOTO 20
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #61308 /* ~디바를 내려친다.~ */ GOTO 19
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #61308 /* ~디바를 내려친다.~ */ EXTERN ~DGRACE~ 181
  IF ~~ THEN REPLY #61309 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #7 ~  Global("Current_Area","GLOBAL",901)
GlobalLT("Curst_Counter","GLOBAL",3)
NearbyDialog("DVhail")
~ THEN BEGIN 119 // from:
  SAY #61310 /* ~트리어스의 눈은 독선적인 정의감으로 불타오른다. "이 자들... 그들은 배신자, 사기꾼, 살인자들이오... 인과응보요."~ [TTB111] */
  IF ~~ THEN GOTO 64
END

IF WEIGHT #8 ~  Global("Current_Area","GLOBAL",901)
GlobalLT("Curst_Counter","GLOBAL",3)
!NearbyDialog("DVhail")
~ THEN BEGIN 120 // from:
  SAY #61311 /* ~트리어스의 눈은 독선적인 정의감으로 불타오른다. "이 자들... 그들은 배신자, 사기꾼, 살인자들이오... 인과응보요."~ [TTB111] */
  IF ~~ THEN GOTO 65
END

IF WEIGHT #9 ~  Global("Current_Area","GLOBAL",901)
GlobalGT("Curst_Counter","GLOBAL",2)
GlobalLT("Curst_Counter","GLOBAL",6)
NearbyDialog("DVhail")
~ THEN BEGIN 121 // from:
  SAY #61312 /* ~트리어스는 경멸하는 표정으로 당신을 쳐다본다. "그래, 개들이 돌아왔군"~ [TTB100] */
  IF ~~ THEN GOTO 66
END

IF WEIGHT #10 ~  Global("Current_Area","GLOBAL",901)
GlobalGT("Curst_Counter","GLOBAL",2)
GlobalLT("Curst_Counter","GLOBAL",6)
!NearbyDialog("DVhail")
~ THEN BEGIN 122 // from:
  SAY #61313 /* ~트리어스는 경멸하는 표정으로 당신을 쳐다본다. "그래, 개들이 돌아왔군"~ [TTB100] */
  IF ~~ THEN GOTO 67
END

IF WEIGHT #11 ~  Global("Current_Area","GLOBAL",901)
GlobalGT("Curst_Counter","GLOBAL",5)
NearbyDialog("DVhail")
~ THEN BEGIN 123 // from:
  SAY #61316 /* ~"당신은 여기서 무엇을 이루려고 하오?"~ [TTB106] */
  IF ~~ THEN GOTO 68
END

IF WEIGHT #12 ~  Global("Current_Area","GLOBAL",901)
GlobalGT("Curst_Counter","GLOBAL",5)
!NearbyDialog("DVhail")
~ THEN BEGIN 124 // from:
  SAY #61317 /* ~"당신은 여기서 무엇을 이루려고 하오?"~ [TTB106] */
  IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 125 // from: 0.2
  SAY #61293 /* ~디바는 고개를 쳐들고 당신을 바라본다. 그의 목소리는 맑고 아름다운 선율을 지녔다. "내게 뭘 원하시오, 인간? 당신 의중을 말하고, 내가 낙원의 추억에 잠길 수 있도록 날 그냥 내버려 두시오." 당신이 미처 대답을 하기도 전에 그가 얼굴을 찌푸린다.~ [TTB004] */
  IF ~~ THEN JOURNAL #54312 /* ~나는 래벌이 얘기한 천사 "트리어스"를 찾아냈는데 그는 커스트에서 감금된 상태였다. 주민들이 천사를 그런 식으로 다루다니... 정말 이 곳은 살인자들과 배신자들의 도시인 모양이다. 그렇다고 이 곳이 내가 지금까지 거쳐온 다른 곳들과 크게 다르다는 건 아니지만.~ */ EXTERN ~DGRACE~ 176
END

IF ~~ THEN BEGIN 126 // from: 0.3
  SAY #61293 /* ~디바는 고개를 쳐들고 당신을 바라본다. 그의 목소리는 맑고 아름다운 선율을 지녔다. "내게 뭘 원하시오, 인간? 당신 의중을 말하고, 내가 낙원의 추억에 잠길 수 있도록 날 그냥 내버려 두시오." 당신이 미처 대답을 하기도 전에 그가 얼굴을 찌푸린다.~ [TTB004] */
  IF ~~ THEN JOURNAL #54312 /* ~나는 래벌이 얘기한 천사 "트리어스"를 찾아냈는데 그는 커스트에서 감금된 상태였다. 주민들이 천사를 그런 식으로 다루다니... 정말 이 곳은 살인자들과 배신자들의 도시인 모양이다. 그렇다고 이 곳이 내가 지금까지 거쳐온 다른 곳들과 크게 다르다는 건 아니지만.~ */ EXTERN ~DGRACE~ 177
END
