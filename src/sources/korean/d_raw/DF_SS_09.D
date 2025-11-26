// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_09.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_09~

IF ~  !Global("S_Stone","AR0603",16)
!Global("S_Stone","AR0603",19)
~ THEN BEGIN 0 // from:
  SAY #34220 /* ~이것은 보라색의 특이한 돌이다. 그것은 받침대에 단단히 고정되어 있다. ~ */
  IF ~~ THEN REPLY #47529 /* ~떠난다.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",19)
~ THEN BEGIN 1 // from:
  SAY #47530 /* ~바로 이 보라색 돌이 사무원이 당신에게 가서 사용하라고 일러준 돌이다. 그 안에는 '대단히 중요한 비밀'이란 체험이 담겨 있다. ~ */
  IF ~~ THEN REPLY #47531 /* ~감각 체험을 시작한다.~ */ GOTO 2
  IF ~~ THEN REPLY #47532 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47533 /* ~여섯 명의 내관들이 당신 앞으로 달려가 황룡전의 황금색 문을 연다.

"여제 폐하 만세!" 그들은 일제히 외친다. "만세! 여제 폐하 만세! 만만세!"~ */
  IF ~~ THEN REPLY #47534 /* ~체험을 계속한다.~ */ GOTO 3
  IF ~~ THEN REPLY #47535 /* ~체험을 중단하고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #47536 /* ~문 앞에는 자신들의 영지에서는 왕이나 다름 없는 수십 명의 충성스러운 장군과 영주들이 무릎을 꿇고 고개를 조아리면서 옥좌를 향해 나아가는 당신에게 경의를 표하고 있다. ~ */
  IF ~~ THEN REPLY #47537 /* ~체험을 계속한다.~ */ GOTO 4
  IF ~~ THEN REPLY #47538 /* ~체험을 중단하고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47539 /* ~당신은 옥좌에 앉아 문무백관들을 내려다보면서 세심하게 화장을 한 입가에 작은 만족의 미소를 띄운다. 지금 당신 정신의 전면에는 단 한 가지 생각밖에 없다:~ */
  IF ~~ THEN REPLY #47540 /* ~체험을 계속한다.~ */ GOTO 5
  IF ~~ THEN REPLY #47541 /* ~체험을 중단하고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #47542 /* ~... 젊은 여제 우 쑨샤의 시체는 고독의 우물 바닥에 뒹굴고 있으며, 말장수의 딸인 당신- 바이 화가 제국을 흔들고 부패한 우 왕조를 그 기반으로부터 붕괴시킬 위치에 올랐다는...~ */
  IF ~  Global("Sensation19","AR0603",0)
~ THEN REPLY #47543 /* ~체험으로부터 깨어난다.~ */ DO ~SetGlobal("Sensation19","AR0603",1)
GiveExperience(Protagonist,1500)
~ GOTO 10
  IF ~  Global("Sensation19","AR0603",1)
~ THEN REPLY #47544 /* ~체험으로부터 깨어난 후 떠난다.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",16)
~ THEN BEGIN 6 // from:
  SAY #47545 /* ~바로 이 보라색 돌이 사무원이 당신에게 가서 사용하라고 일러준 돌이다. 그 안에는 '충격과 끓어오르는 복수심으로의 등귀'란 체험이 담겨 있다. ~ */
  IF ~~ THEN REPLY #47546 /* ~감각 체험을 시작한다.~ */ GOTO 7
  IF ~~ THEN REPLY #47547 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #47548 /* ~당신은 마계의 어떤 장소에 서 있다. 대지는 두들겨 부순 구릿빛이며, 하늘은 청동색인 찌는 듯이 더운 곳이다. 이 곳에서는 죄인들 - 이 끔찍한 곳의 청원자들 - 의 시체가 그들의 뼈가 고운 회색 먼지가 될 때까지 무쇠 가시나무와 청동 전갈들 사이에서 뒹굴고 있다.~ */
  IF ~~ THEN REPLY #47549 /* ~체험을 계속한다.~ */ GOTO 8
  IF ~~ THEN REPLY #47550 /* ~체험을 중단하고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #47551 /* ~당신은 눈을 가늘게 뜨고 지평선을 바라본다. 썩은 냄새가 나는 돌풍이 뼛가루와 함께 고통에 신음하는 소리를 날라 온다. 아무리 눈을 씻고 보아도 단조로운 금속성의 풍경 말고는 아무 것도 없다. 먼지는 모든 곳, 모든 것에 있다... 먼지는 당신 눈을 아프게 하고 당신 입 안을 풀 같은 막으로 뒤덮는다. 당신은 침을 뱉고 손가락으로 그것을 닦아내지만 아무 소용이 없다. 이미 당신 입 안은 그 더러운 맛으로 엉망이 되었다. ~ */
  IF ~~ THEN REPLY #47552 /* ~체험을 계속한다.~ */ GOTO 9
  IF ~~ THEN REPLY #47553 /* ~체험을 중단하고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #47554 /* ~당신은 손에 쥐고 있는 '열쇠'를 내려다본다... 작은 백금 보주이다... 그리고 당신에게 당신이 방금 통과한(그리고 물론 이제는 사라진) 전이문이 바이토피아의 녹색 벌판으로 통하는 문이라고 엄숙하게 맹세한 남자의 얼굴을 떠올린다. 신들과 그들의 사도들에게 맹세코 누군가 이 일에 대한 대가를 반드시 치르게 될 것이다.~ */
  IF ~  Global("Sensation16","AR0603",0)
~ THEN REPLY #47555 /* ~체험으로부터 깨어난다.~ */ DO ~SetGlobal("Sensation16","AR0603",1)
GiveExperience(Protagonist,1500)
~ GOTO 10
  IF ~  Global("Sensation16","AR0603",1)
~ THEN REPLY #47556 /* ~체험으로부터 깨어난 후 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.0 9.0
  SAY #47557 /* ~그 체험은 당신 정신 속에서 이미 오래 전에 잊혀진 막연하게 비슷한 기억을 불러일으킨 것 같다... 당신은 감각석 사용을 통해 뭔가를 얻었다고 느낀다.~ */
  IF ~~ THEN REPLY #47558 /* ~떠난다.~ */ EXIT
END
