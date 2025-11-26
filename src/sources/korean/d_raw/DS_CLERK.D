// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DS_CLERK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DS_CLERK~

IF ~  Global("S_Stone","AR0603",0)
~ THEN BEGIN 0 // from:
  SAY #46336 /* ~이 남자의 목소리는 그의 조용하고 세련된 태도에 걸맞게 점잖다. "안녕하시오. 감각석을 이용하러 오셨소?"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46337 /* ~"그렇소."~ */ GOTO 3
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46359 /* ~"그렇소."~ */ GOTO 6
  IF ~~ THEN REPLY #46360 /* ~"아니오, 하지만 질문할 것들이 있소."~ */ GOTO 1
  IF ~~ THEN REPLY #46361 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2 20.2
  SAY #46362 /* ~남자는 고개를 끄덕인다. "이 곳은 감각석들을 보관하고 있는 방들이 있는 일반인용 감각 체험실이오. 이러한 돌들은 제각기 특정한 감각 또는 감각들의 세트를 기록하고 있으며, 사용자는 그것들을 직접 체험할 수가 있소. 센세이트 멤버는 마음대로 이용할 수가 있으나, 방문자는 소액의 사용료를 내지 않으면 안 되오. 당신 질문에 대한 답이 되었소?"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46363 /* ~"대체로. 이제 감각석들 중 하나를 사용하고 싶소."~ */ GOTO 3
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46364 /* ~"대체로. 이제 감각석들 중 하나를 사용하고 싶소."~ */ GOTO 6
  IF ~~ THEN REPLY #46365 /* ~"아니오..."~ */ GOTO 2
  IF ~~ THEN REPLY #46366 /* ~"그렇소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY #46367 /* ~"그렇다면 나는 당신을 도와드릴 수가 없소. 감각석을 이용하시겠다면 이야기는 다르지만..."~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46368 /* ~"그렇소."~ */ GOTO 3
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46369 /* ~"그렇소."~ */ GOTO 6
  IF ~~ THEN REPLY #46370 /* ~"사양하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0 2.0 4.7 20.0
  SAY #46371 /* ~남자는 미소를 지으며 현재 당신이 음미할 할 수 있는 다양한 감각들 중 일부에 대해 설명한다.

"어느 것을 택하시겠소?"
~ */
  IF ~~ THEN REPLY #46372 /* ~"'피할 수 없는 고통'이 좋을 것 같소."~ */ DO ~SetGlobal("S_Stone","AR0603",1)
~ GOTO 13
  IF ~~ THEN REPLY #46373 /* ~"'부드러운 사랑'이 좋을 것 같소."~ */ DO ~SetGlobal("S_Stone","AR0603",2)
~ GOTO 14
  IF ~~ THEN REPLY #46374 /* ~"'정신을 마비시킬 정도의 지루함'이 좋을 것 같소."~ */ DO ~SetGlobal("S_Stone","AR0603",3)
~ GOTO 15
  IF ~~ THEN REPLY #46375 /* ~"'순수한 경이'가 좋을 것 같소."~ */ DO ~SetGlobal("S_Stone","AR0603",4)
~ GOTO 16
  IF ~~ THEN REPLY #46376 /* ~"'애태우는 조바심'이 좋을 것 같소."~ */ DO ~SetGlobal("S_Stone","AR0603",5)
~ GOTO 17
  IF ~~ THEN REPLY #46377 /* ~"'피곤한 항복'이 좋을 것 같소."~ */ DO ~SetGlobal("S_Stone","AR0603",6)
~ GOTO 18
  IF ~~ THEN REPLY #46378 /* ~"'초자연적인 욕망'이 좋을 것 같소."~ */ DO ~SetGlobal("S_Stone","AR0603",7)
~ GOTO 19
  IF ~~ THEN REPLY #46379 /* ~"그 밖에 다른 것들도 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #46380 /* ~"지금은 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.7 5.6
  SAY #46381 /* ~남자 고개를 끄덕이고 현재 당신이 음미할 할 수 있는 여러 종류의 감각들에 대해 설명한다.

"어느 것을 택하시겠소?"
~ */
  IF ~~ THEN REPLY #46382 /* ~"'정신 이상'이 좋을 것 같소."~ */ DO ~SetGlobal("S_Stone","AR0603",8)
~ GOTO 13
  IF ~~ THEN REPLY #46383 /* ~"'곪아 가는 질투'가 좋을 것 같소."~ */ DO ~SetGlobal("S_Stone","AR0603",9)
~ GOTO 14
  IF ~~ THEN REPLY #46384 /* ~"'격렬한 혐오'가 좋을 것 같소."~ */ DO ~SetGlobal("S_Stone","AR0603",10)
~ GOTO 15
  IF ~~ THEN REPLY #46385 /* ~"'순수한 환희'가 좋을 것 같소."~ */ DO ~SetGlobal("S_Stone","AR0603",11)
~ GOTO 16
  IF ~~ THEN REPLY #46386 /* ~"'무시무시한 흥분'이 좋을 것 같소."~ */ DO ~SetGlobal("S_Stone","AR0603",12)
~ GOTO 17
  IF ~~ THEN REPLY #46387 /* ~"'불굴의 각오'가 좋을 것 같소."~ */ DO ~SetGlobal("S_Stone","AR0603",13)
~ GOTO 18
  IF ~~ THEN REPLY #46388 /* ~"'완전한 낭패'가 좋을 것 같소."~ */ DO ~SetGlobal("S_Stone","AR0603",14)
~ GOTO 19
  IF ~~ THEN REPLY #46389 /* ~"맨끝의 몇 개를 다시 불러 주겠소 ?"~ */ GOTO 3
  IF ~~ THEN REPLY #46390 /* ~"더 있소?"~ */ GOTO 5
  IF ~~ THEN REPLY #46391 /* ~"지금은 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.8
  SAY #46392 /* ~남자는 고개를 끄덕이고 미소를 지으며 현재 음미할 할 수 있는 감각들 중 아직 설명하지 않은 것들에 대해 설명한다.

"어느 것을 택하시겠소?"
~ */
  IF ~~ THEN REPLY #46393 /* ~"'끔찍한 후회'가 좋을 것 같소."~ */ DO ~SetGlobal("S_Stone","AR0603",15)
~ GOTO 10
  IF ~~ THEN REPLY #46394 /* ~"'충격과 끓어오르는 복수심으로의 등귀'가 좋을 것 같소."~ */ DO ~SetGlobal("S_Stone","AR0603",16)
~ GOTO 11
  IF ~~ THEN REPLY #46395 /* ~"'서서히 나타나는 공포'가 좋을 것 같소."~ */ DO ~SetGlobal("S_Stone","AR0603",17)
~ GOTO 12
  IF ~~ THEN REPLY #46396 /* ~"'형언할 수 없는 좌절감'이 좋을 것 같소."~ */ DO ~SetGlobal("S_Stone","AR0603",18)
~ GOTO 10
  IF ~~ THEN REPLY #46397 /* ~"'대단히 중요한 비밀'이 좋을 것 같소."~ */ DO ~SetGlobal("S_Stone","AR0603",19)
~ GOTO 11
  IF ~~ THEN REPLY #46398 /* ~"'수인화'가 좋을 것 같소."~ */ DO ~SetGlobal("S_Stone","AR0603",20)
~ GOTO 12
  IF ~~ THEN REPLY #46399 /* ~"당신이 맨끝에 설명한 감각들은 어떤 것들이었소?"~ */ GOTO 4
  IF ~~ THEN REPLY #46400 /* ~"지금은 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.1 1.1 2.1 20.1
  SAY #46401 /* ~"현재 열두 개 이상의 보급판 감각들과 여섯 개의 호화판 체험들이 있소. 표준 감각석을 이용하는 데는 동전 열 닢, 보다 몰입성이 강한 체험들의 경우에는 동전 쉰 닢이오. 보급판 감각들 또는 호화판 감각들에 대한 설명을 들으시겠소?"~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #46402 /* ~"보급판..."~ */ GOTO 7
  IF ~  PartyGoldGT(49)
~ THEN REPLY #46403 /* ~"호화판..."~ */ GOTO 9
  IF ~~ THEN REPLY #46404 /* ~"실은 어느 쪽도 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.7 9.6
  SAY #46405 /* ~남자는 미소를 지으며 현재 당신이 음미할 할 수 있는 다양한 감각들 중 일부에 대해 설명한다.

"어느 것을 택하시겠소?"
~ */
  IF ~~ THEN REPLY #46406 /* ~"'피할 수 없는 고통'이 좋을 것 같소."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",1)
~ GOTO 13
  IF ~~ THEN REPLY #46407 /* ~"'부드러운 사랑'이 좋을 것 같소."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",2)
~ GOTO 14
  IF ~~ THEN REPLY #46408 /* ~"'정신을 마비시킬 정도의 지루함'이 좋을 것 같소."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",3)
~ GOTO 15
  IF ~~ THEN REPLY #46409 /* ~"'순수한 경이'가 좋을 것 같소."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",4)
~ GOTO 16
  IF ~~ THEN REPLY #46410 /* ~"'애태우는 조바심'이 좋을 것 같소."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",5)
~ GOTO 17
  IF ~~ THEN REPLY #46411 /* ~"'피곤한 항복'이 좋을 것 같소."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",6)
~ GOTO 18
  IF ~~ THEN REPLY #46412 /* ~"'초자연적인 욕망'이 좋을 것 같소."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",7)
~ GOTO 19
  IF ~~ THEN REPLY #46413 /* ~"다른 감각들에 대해 얘기해주시오..."~ */ GOTO 8
  IF ~  PartyGoldGT(49)
~ THEN REPLY #46414 /* ~"호화판은 어떤 내용이오 ?"~ */ GOTO 9
  IF ~~ THEN REPLY #46415 /* ~"지금은 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.7
  SAY #46416 /* ~남자 고개를 끄덕이고 현재 당신이 음미할 할 수 있는 여러 종류의 감각들에 대해 설명한다.

"어느 것을 택하시겠소?"
~ */
  IF ~~ THEN REPLY #46417 /* ~"'정신 이상'이 좋을 것 같소."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",8)
~ GOTO 13
  IF ~~ THEN REPLY #46418 /* ~"'곪아 가는 질투'가 좋을 것 같소."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",9)
~ GOTO 14
  IF ~~ THEN REPLY #46419 /* ~"'격렬한 혐오'가 좋을 것 같소."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",10)
~ GOTO 15
  IF ~~ THEN REPLY #46420 /* ~"'순수한 환희'가 좋을 것 같소."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",11)
~ GOTO 16
  IF ~~ THEN REPLY #46421 /* ~"'무시무시한 흥분'이 좋을 것 같소."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",12)
~ GOTO 17
  IF ~~ THEN REPLY #46422 /* ~"'불굴의 각오'가 좋을 것 같소."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",13)
~ GOTO 18
  IF ~~ THEN REPLY #46423 /* ~"'완전한 낭패'가 좋을 것 같소."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",14)
~ GOTO 19
  IF ~~ THEN REPLY #46424 /* ~"기다리시오... 그 맨끝의 감각들을 다시 설명해주시오..."~ */ GOTO 7
  IF ~  PartyGoldGT(49)
~ THEN REPLY #46425 /* ~"호화판 감각들에 대해 얘기해줄 수 있겠소?"~ */ GOTO 9
  IF ~~ THEN REPLY #46426 /* ~"지금은 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 7.8 8.8
  SAY #46427 /* ~남자는 고개를 끄덕이고 미소를 지으며 보다 몰입성이 강한 감각들에 대해 설명한다.

"어느 것을 택하시겠소?"
~ */
  IF ~~ THEN REPLY #46428 /* ~"'끔찍한 후회'가 좋을 것 같소."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",15)
~ GOTO 10
  IF ~~ THEN REPLY #46429 /* ~"'충격과 끓어오르는 복수심으로의 등귀'가 좋을 것 같소."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",16)
~ GOTO 11
  IF ~~ THEN REPLY #46430 /* ~"'서서히 나타나는 공포'가 좋을 것 같소."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",17)
~ GOTO 12
  IF ~~ THEN REPLY #46431 /* ~"'형언할 수 없는 좌절감'이 좋을 것 같소."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",18)
~ GOTO 10
  IF ~~ THEN REPLY #46432 /* ~'대단히 중요한 비밀'이 좋을 것 같소."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",19)
~ GOTO 11
  IF ~~ THEN REPLY #46433 /* ~"'수인화'가 좋을 것 같소."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",20)
~ GOTO 12
  IF ~~ THEN REPLY #46434 /* ~"보급판 감각들에 대해 얘기해줄 수 있겠소?"~ */ GOTO 7
  IF ~~ THEN REPLY #46435 /* ~"지금은 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.0 5.3 9.0 9.3
  SAY #46436 /* ~"좋은 선택이오. 당신이 원하는 감각석은 큰 방들 중 한 곳에 있소. 계단으로부터 왼쪽으로 세 번째 방이오. 감각석의 색은 불그스름한 오렌지색이오."~ */
  IF ~~ THEN REPLY #46437 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.1 5.4 9.1 9.4
  SAY #46438 /* ~"훌륭한 선택이오. 당신이 원하는 감각석은 큰 방들 중 한 곳에 있소. 계단으로부터 왼쪽으로 두 번째 방이오. 감각석의 색은 보라색이오."~ */
  IF ~~ THEN REPLY #46439 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.2 5.5 9.2 9.5
  SAY #46440 /* ~"멋진 선택이오. 당신이 원하는 감각석은 큰 방들 중 한 곳에 있소. 계단으로부터 왼쪽으로 첫 번째 방이오. 감각석의 색은 푸르스름한 보라색이오."~ */
  IF ~~ THEN REPLY #46441 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.0 4.0 7.0 8.0
  SAY #46442 /* ~"좋은 선택이오. 당신이 원하는 감각석은 작은 방들 중 한 곳에 있소. 계단으로부터 오른쪽으로 첫 번째 방이오. 감각석의 색은 녹황색이오."~ */
  IF ~~ THEN REPLY #46443 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 3.1 4.1 7.1 8.1
  SAY #46444 /* ~"좋은 선택이오. 당신이 원하는 감각석은 작은 방들 중 한 곳에 있소. 계단으로부터 오른쪽으로 두 번째 방이오. 감각석의 색은 연한 청색이오."~ */
  IF ~~ THEN REPLY #46445 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.2 4.2 7.2 8.2
  SAY #46446 /* ~"좋은 선택이오. 당신이 원하는 감각석은 작은 방들 중 한 곳에 있소. 계단으로부터 오른쪽으로 세 번째 방이오. 감각석의 색은 보라색이오."~ */
  IF ~~ THEN REPLY #46447 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 3.3 4.3 7.3 8.3
  SAY #46448 /* ~"좋은 선택이오. 당신이 원하는 감각석은 작은 방들 중 한 곳에 있소. 계단으로부터 오른쪽으로 네 번째 방이오. 감각석의 색은 녹황색이오."~ */
  IF ~~ THEN REPLY #46449 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 3.4 4.4 7.4 8.4
  SAY #46450 /* ~"좋은 선택이오. 당신이 원하는 감각석은 작은 방들 중 한 곳에 있소. 계단으로부터 오른쪽으로 다섯 번째 방이오. 감각석의 색은 불그스름한 오렌지색이오."~ */
  IF ~~ THEN REPLY #46451 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 3.5 4.5 7.5 8.5
  SAY #46452 /* ~"좋은 선택이오. 당신이 원하는 감각석은 작은 방들 중 한 곳에 있소. 계단으로부터 오른쪽으로 여섯 번째 방이오. 감각석의 색은 보라색이오."~ */
  IF ~~ THEN REPLY #46453 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 3.6 4.6 7.6 8.6
  SAY #46454 /* ~"좋은 선택이오. 당신이 원하는 감각석은 작은 방들 중 한 곳에 있소. 계단으로부터 오른쪽으로 일곱 번째 방이오. 감각석의 색은 연한 청색이오."~ */
  IF ~~ THEN REPLY #46455 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~  GlobalGT("S_Stone","AR0603",0)
~ THEN BEGIN 20 // from:
  SAY #46456 /* ~"감각 체험을 즐기셨으리라고 생각하오만? 이제 내가 더 도와드릴 일은 없겠소?"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46457 /* ~"감각 체험을 한 번 더 하고 싶소."~ */ GOTO 3
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46458 /* ~"감각 체험을 한 번 더 하고 싶소."~ */ GOTO 6
  IF ~~ THEN REPLY #46459 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #46460 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END
