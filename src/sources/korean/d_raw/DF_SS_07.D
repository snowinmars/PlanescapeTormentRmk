// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_07.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_07~

IF ~  !Global("S_Stone","AR0603",7)
!Global("S_Stone","AR0603",14)
~ THEN BEGIN 0 // from:
  SAY #34218 /* ~이것은 밝은 청색의 특이한 돌이다. 그것은 받침대에 단단히 고정되어 있다. ~ */
  IF ~~ THEN REPLY #47475 /* ~떠난다.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",7)
~ THEN BEGIN 1 // from:
  SAY #47476 /* ~바로 이 연한 청색 돌이 사무원이 당신에게 가서 사용하라고 일러준 돌이다. 그 안에는 '초자연적인 욕망'이란 체험이 담겨 있다. ~ */
  IF ~~ THEN REPLY #47477 /* ~감각 체험을 시작한다.~ */ GOTO 2
  IF ~~ THEN REPLY #47478 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47479 /* ~당신은 서큐버스와 관계를 가지고 있는 자신을 발견한다. 그녀의 이 세상의 것이 아닌 아름다움이 어찌나 강렬한지 그녀의 악마의 뿔과 채찍질하는 꼬리조차도 당신을 망설이게 하지는 못한다. 그녀는 당신 아래서 숨을 헐떡이고 있다... 당신은 그녀의 모든 것을 다 가지고자 한다, 그리고 당신은 그 목적을 위해 당신의 존재의 전부를 내던진다. 당신의 생명은 마치 별처럼 폭발한다, 그리고 당신 귀에는 서큐버스가, 당신의 생명력을 깨끗이 빨아들여 당신을 영혼도 없는 빈 껍질로 만들면서, 즐겁게 웃는 소리가 들린다...~ */
  IF ~  Global("Sensation07","AR0603",0)
~ THEN REPLY #47480 /* ~체험으로부터 깨어난다.~ */ DO ~SetGlobal("Sensation07","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation07","AR0603",1)
~ THEN REPLY #47481 /* ~체험으로부터 깨어난 후 떠난다.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",14)
~ THEN BEGIN 3 // from:
  SAY #47482 /* ~바로 이 연한 청색 돌이 사무원이 당신에게 가서 사용하라고 일러준 돌이다. 그 안에는 '완전한 낭패'란 체험이 담겨 있다. ~ */
  IF ~~ THEN REPLY #47483 /* ~감각 체험을 시작한다.~ */ GOTO 4
  IF ~~ THEN REPLY #47484 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47485 /* ~당신은 불안한 꿈에서 깨어난다, 그리고 축축한 당신의 굴 속에서 네 개의 손발이 달린, 살이 있는 작은 동물로 변신한 자신을 발견한다. 당신의 등에는 자신을 보호할 껍질도 없으며, 당신이 있어야 할 감각 안테나도 없어진 작은 머리를 쳐들자 당신 눈에 들어오는 것은 낯익은 강모가 아닌 부드럽고 곱슬곱슬한 털로 뒤덮인 핑크색의 배다. 전과는 복부 주변에 여러 다리들이 달려 있었으나, 이제는 당신의 동체 하반부에는 두 개(단지 두 개!)의 다리만이 달려 있다. 그것들은 동체의 크기에 비해 비정상적으로 크며, 스스로의 의지로 움직일 생각은 않고 무기력하게 가만히 있을 뿐이다. 그것들은 당신이 적극적으로 집중을 해야만 움직인다. 대체 당신에게 무슨 일이 일어난 것인가?~ */
  IF ~  Global("Sensation14","AR0603",0)
~ THEN REPLY #47486 /* ~체험으로부터 깨어난다.~ */ DO ~SetGlobal("Sensation14","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation14","AR0603",1)
~ THEN REPLY #47487 /* ~체험으로부터 깨어난 후 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47488 /* ~그 체험은 당신 정신 속에서 이미 오래 전에 잊혀진 막연하게 비슷한 기억을 불러일으킨 것 같다... 당신은 감각석 사용을 통해 뭔가를 얻었다고 느낀다.~ */
  IF ~~ THEN REPLY #47489 /* ~떠난다.~ */ EXIT
END
