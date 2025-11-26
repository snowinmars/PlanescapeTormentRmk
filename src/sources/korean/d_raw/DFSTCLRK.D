// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFSTCLRK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DFSTCLRK~

IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #49532 /* ~이 매력적인 아가씨는 상냥하게 웃는다. "제가 당신을 도울 일은 없나요?"~ */
  IF ~~ THEN REPLY #49533 /* ~"이러한 방들에는 어떻게 하면 들어갈 수가 있소?"~ */ GOTO 1
  IF ~~ THEN REPLY #49534 /* ~"여기서 휴식을 취해도 괜찮겠소?"~ */ GOTO 2
  IF ~~ THEN REPLY #49535 /* ~"지금은 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49536 /* ~"그러기 위해서는 스플린터에 의해 공인된 감각의 공동체 멤버이어야만 해요. 만약 그와 얘기를 하고 싶으시다면, 그는 시 공회당 출구 바로 옆에 있어요."~ */
  IF ~~ THEN REPLY #49537 /* ~"하지만 이 곳에서 휴식을 취할 수는 있소?"~ */ GOTO 2
  IF ~~ THEN REPLY #49538 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #49539 /* ~"시 공회당에서는 저녁 때 빈 방을 대여해 주곤 하죠. 만약 빈 방이 있다면 물론 휴식을 취하실 수가 있어요. 제가 체크해 드릴까요?"~ */
  IF ~~ THEN REPLY #49540 /* ~"부탁하겠소."~ */ DO ~StartStore("Festhall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #64176 /* ~"사양하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Sensate_Access","GLOBAL",1)
HasItem("PCs_Key",Myself)
~ THEN BEGIN 3 // from:
  SAY #49541 /* ~이 매력적인 아가씨는 상냥하게 웃는다. "안녕하세요." 그녀는 눈을 감고는 커다란 장부의 페이지들을 넘긴다, 그리고 임의로 선택한 듯한 어떤 페이지에서 갑자기 멈추고 다시 눈을 뜬다. "아... 여기 당신 방 열쇠가 있군요..." 그녀는 당신에게 작은 열쇠를 건넨다. "동쪽 제일 끝 방은 손님이 돌아오시기를 오랫동안 기다리고 있었어요. 지금 휴식을 취하시겠어요?"~ */
  IF ~~ THEN REPLY #49542 /* ~"그렇게 해주면 고맙겠소."~ */ DO ~GiveItem("PCs_Key",Protagonist)
FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #49543 /* ~"아니오... 하지만 '내 귀환을 기다리고 있었다'라는 말이 대체 무슨 뜻이오?'~ */ DO ~GiveItem("PCs_Key",Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #49544 /* ~"지금은 아니오. 안녕히 계시오."~ */ DO ~GiveItem("PCs_Key",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #49545 /* ~사무원은 이상하다는 표정으로 당신을 쳐다본다. "제 장부에 의하면 이 열쇠는 오래 전부터 손님 소유로 되어 있어요. 그렇지 않다면 제가 실수를 한 모양이군요. 지금 휴식을 취하시겠어요?"~ */
  IF ~~ THEN REPLY #49546 /* ~"그렇게 해주면 고맙겠소."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #49547 /* ~"지금은 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Sensate_Access","GLOBAL",1)
!HasItem("PCs_Key",Myself)
~ THEN BEGIN 5 // from:
  SAY #49548 /* ~이 매력적인 아가씨는 상냥하게 웃는다. "안녕하세요. 지금 휴식을 취하시겠어요?"~ */
  IF ~~ THEN REPLY #49549 /* ~"그렇게 해주면 고맙겠소."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #49550 /* ~"지금은 아니오. 안녕히 계시오."~ */ EXIT
END
