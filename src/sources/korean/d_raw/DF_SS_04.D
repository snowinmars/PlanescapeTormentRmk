// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_04.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_04~

IF ~  !Global("S_Stone","AR0603",4)
!Global("S_Stone","AR0603",11)
~ THEN BEGIN 0 // from:
  SAY #34215 /* ~이것은 녹황색의 특이한 돌이다. 그것은 받침대에 단단히 고정되어 있다. ~ */
  IF ~~ THEN REPLY #47430 /* ~떠난다.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",4)
~ THEN BEGIN 1 // from:
  SAY #47431 /* ~바로 이 녹황색 돌이 사무원이 당신에게 가서 사용하라고 일러준 돌이다. 그 안에는 '순수한 경이'란 체험이 담겨 있다. ~ */
  IF ~~ THEN REPLY #47432 /* ~감각 체험을 시작한다.~ */ GOTO 2
  IF ~~ THEN REPLY #47433 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47434 /* ~당신은 마지못해서 입을 열고 숨을 가볍게 들이쉰다... 그러자 물이 차가운 공기처럼 당신 폐 속으로 들어온다. 당신은 미소를 지으며 숨을 깊게 들이쉰다, 그리고 당신은, 수백 마리의 다양한 색깔을 지닌 물고기들이 밝은 색 산호의 뒤틀린 다발 사이로 노니는, 항구 바닥으로 가라앉으면서 사방을 멍하니 둘러본다. 당신 발이 바닥에 닿자, 당신은 당신 배의 용골을 쳐다보며 크게 즐거운 웃음을 웃는다, 그리고 커다란 거품들이 줄줄이 수면으로 올라간다...~ */
  IF ~  Global("Sensation04","AR0603",0)
~ THEN REPLY #47435 /* ~체험으로부터 깨어난다.~ */ DO ~SetGlobal("Sensation04","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation04","AR0603",1)
~ THEN REPLY #47436 /* ~체험으로부터 깨어난 후 떠난다.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",11)
~ THEN BEGIN 3 // from:
  SAY #47437 /* ~바로 이 녹황색 돌이 사무원이 당신에게 가서 사용하라고 일러준 돌이다. 그 안에는 '순수한 환희'란 체험이 담겨 있다. ~ */
  IF ~~ THEN REPLY #47438 /* ~감각 체험을 시작한다.~ */ GOTO 4
  IF ~~ THEN REPLY #47439 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47440 /* ~당신은 열 명이 넘는 다른 댄서들과 함께 우드 엘프의 축제 음악에 맞추어 춤추고 도약하면서, 숲의 개간지를 마치 더비쉬처럼 회전하고 미친 사람처럼 웃으며 활보한다. 신이 난 숲속의 주민들이 환성을 지르고, 박수를 치며, 당신들과 함께 춤을 춤에 따라, 요정들이 화려한 색깔의 빛의 반짝이는 자취를 남기며 당신 머리 위를 날아다닌다. ~ */
  IF ~  Global("Sensation11","AR0603",0)
~ THEN REPLY #47441 /* ~체험으로부터 깨어난다.~ */ DO ~SetGlobal("Sensation11","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation11","AR0603",1)
~ THEN REPLY #47442 /* ~체험으로부터 깨어난 후 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47443 /* ~그 체험은 당신 정신 속에서 이미 오래 전에 잊혀진 막연하게 비슷한 기억을 불러일으킨 것 같다... 당신은 감각석 사용을 통해 뭔가를 얻었다고 느낀다.~ */
  IF ~~ THEN REPLY #47444 /* ~떠난다.~ */ EXIT
END
